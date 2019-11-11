from django.contrib.auth import get_user_model, logout as django_logout
from django.contrib.auth.mixins import LoginRequiredMixin
from django.urls import reverse
from django.views.generic import DetailView, RedirectView, UpdateView
from django.contrib import messages
from django.utils.translation import ugettext_lazy as _

from .serializers import UserSerializer, UserUpdateSerializer, UserProfileSerializer

from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import AllowAny, IsAuthenticated, IsAdminUser
from rest_framework_simplejwt.authentication import JWTAuthentication
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.renderers import JSONRenderer
from rest_framework.decorators import api_view, permission_classes
from rest_framework import status
from rest_framework_simplejwt.views import TokenObtainPairView
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer

from django.db.models import Q

from django.http import HttpResponse

from .models import UserProfile

from django.core.mail import send_mail, EmailMultiAlternatives

import random
import string
import re
from rest_framework.serializers import ValidationError
from .permissions import IsOwner

User = get_user_model()


# LOGIN
class MyTokenObtainPairSerializer(TokenObtainPairSerializer):
    def validate(self, attrs):
        data = super().validate(attrs)
        refresh = self.get_token(self.user)
        data['refresh'] = str(refresh)
        data['access'] = str(refresh.access_token)

        # Add extra responses here
        data['username'] = self.user.username
        data['id'] = self.user.id
        data['is_superuser'] = self.user.is_superuser
        return data


class MyTokenObtainPairView(TokenObtainPairView):
    serializer_class = MyTokenObtainPairSerializer
# END LOGIN


# RESET PASSWORD
@api_view(['POST'])
@permission_classes((AllowAny,))
def ForgotPasswordSendEmail(request):
    try:
        cek_email = User.objects.get(email=request.POST['email'])

        letters = string.digits
        random_string = ''.join(random.choice(letters) for i in range(5))

        # SEND EMAIL
        subject, from_email, to = 'New Password Trisakti Connect', 'galih@inarts.co.id', [request.POST['email']]
        text_content = 'This is an important message.'
        html_content = '<p>Token : <b style="color: #3480eb; font-size: 18px; letter-spacing: 1px;"> ' + random_string + '</b></p>'

        msg = EmailMultiAlternatives(subject, text_content, from_email, [to])
        msg.attach_alternative(html_content, "text/html")
        send = msg.send()

        if send:
            cek_email.remember_token = random_string
            cek_email.save()

        response = Response(
            {"detail": "Token has been sent to your email, please check your inbox."},
            content_type="application/json",
            status=status.HTTP_202_ACCEPTED,
        )
        response.accepted_renderer = JSONRenderer()
        response.accepted_media_type = "application/json"
        response.renderer_context = {}
    except User.DoesNotExist:
        response = Response(
            {"detail": "The E-Mail Address was not found in our records, please try again."},
            content_type="application/json",
            status=status.HTTP_403_FORBIDDEN,
        )
        response.accepted_renderer = JSONRenderer()
        response.accepted_media_type = "application/json"
        response.renderer_context = {}

    return response


@api_view(['POST'])
@permission_classes((AllowAny,))
def ForgotPasswordConfirmToken(request):
    try:
        cek_email = User.objects.get(email=request.POST['email'])

        if cek_email.remember_token == request.POST['token']:
            response = Response(
            {"detail": "OK", "id_user": cek_email.id},
                content_type="application/json",
                status=status.HTTP_202_ACCEPTED,
            )
            response.accepted_renderer = JSONRenderer()
            response.accepted_media_type = "application/json"
            response.renderer_context = {}
        else:
            response = Response(
            {"detail": "Invalid token!"},
                content_type="application/json",
                status=status.HTTP_403_FORBIDDEN,
            )
            response.accepted_renderer = JSONRenderer()
            response.accepted_media_type = "application/json"
            response.renderer_context = {}

    except User.DoesNotExist:
        response = Response(
        {"detail": "The E-Mail Address was not found in our records, please try again."},
            content_type="application/json",
            status=status.HTTP_403_FORBIDDEN,
        )
        response.accepted_renderer = JSONRenderer()
        response.accepted_media_type = "application/json"
        response.renderer_context = {}

    return response 


@api_view(['POST'])
@permission_classes((AllowAny,))
def ForgotPasswordResetPassword(request):
    id_user = request.POST['id_user']
    new_password =  request.POST['password']

    if not request.POST['password']:
        response = Response(
                {"detail": "Password is required"},
                    content_type="application/json",
                    status=status.HTTP_403_FORBIDDEN,
                )
        response.accepted_renderer = JSONRenderer()
        response.accepted_media_type = "application/json"
        response.renderer_context = {}
        return response
    if len(request.POST['password']) < 5:
        response = Response(
            {"detail": "Password minimal 5 character"},
                content_type="application/json",
                status=status.HTTP_403_FORBIDDEN,
            )
        response.accepted_renderer = JSONRenderer()
        response.accepted_media_type = "application/json"
        response.renderer_context = {}
        return response

    try:
        user_change_password = User.objects.get(id=id_user)

        split = request.POST['password'].split(user_change_password.username)
        if len(split) > 1:
            response = Response(
                {"detail": "Password is too similar with username"},
                    content_type="application/json",
                    status=status.HTTP_403_FORBIDDEN,
                )
            response.accepted_renderer = JSONRenderer()
            response.accepted_media_type = "application/json"
            response.renderer_context = {}
            return response

        user_change_password.set_password(new_password)
        user_change_password.save()
        response = Response(
            {"detail": "Success change password"},
                content_type="application/json",
                status=status.HTTP_202_ACCEPTED,
            )
    except User.DoesNotExist:
        response = Response(
        {"detail": "Can't find username with email that given."},
            content_type="application/json",
            status=status.HTTP_403_FORBIDDEN,
        )

    response.accepted_renderer = JSONRenderer()
    response.accepted_media_type = "application/json"
    response.renderer_context = {}
    return response

# END RESET PASSWORD



# CHANGE PASSWORD 
@api_view(['POST'])
@permission_classes((IsAuthenticated, IsOwner))
def change_password(request):
    if not request.user.username == request.POST['username'] and not request.user.is_superuser:
        return Response({'detail': 'You don\'t have permission to perform this action'}, status=status.HTTP_403_FORBIDDEN, content_type="application/json")
    if not request.POST['new_password']:
        return Response({'detail': 'New Password is required'}, status=status.HTTP_403_FORBIDDEN, content_type="application/json")
    if not request.POST['password']:
        return Response({"detail": "Password is required"}, status=status.HTTP_403_FORBIDDEN, content_type="application/json")

    try:
        user = User.objects.get(username=request.POST['username'])
        if not user.check_password(request.POST['password']):
            return Response({'detail': 'Invalid password was given'}, status=status.HTTP_403_FORBIDDEN, content_type="application/json")
        user.set_password(request.POST['new_password'])
        user.save()
    except User.DoesNotExist:
        return Response(
                {"detail": "Can't find username"}, status=status.HTTP_403_FORBIDDEN, content_type="application/json")

    return Response('detail: Success change password.', status=status.HTTP_202_ACCEPTED)

# END CHANGE PASSWORD




def RegsitrasiConfirmToken(request):
    get_user = User.objects.get(token=request.GET['token'])
    if get_user:
        get_user.is_active = True
        get_user.save()
        return HttpResponse('<p>Akun anda telah aktif</p>', content_type="text/html")
    else:
       return HttpResponse('<p>Gagal aktivasi akun</p>', content_type="text/html") 
    

class LogoutView(APIView):
    def post(self, request):
        authentication_classes = (JWTAuthentication,)
        django_logout(request)
        return Response({'status': status.HTTP_204_NO_CONTENT, 'message': 'logout'})

class UserViewSet(ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer

    def get_permissions(self):
        if self.action == 'create':
            permission_classes = [AllowAny]
        else:
            permission_classes = [IsAuthenticated]
        return [permission() for permission in permission_classes]

    def get_serializer_class(self):
        if self.action == 'update':
            return UserUpdateSerializer
        return UserSerializer

    def get_queryset(self):
        query = self.request.query_params.get('q') # Daftar query
        if query: #cek parameter pencarian
            print(query)
            return User.objects.all().filter(Q(username=query)|Q(email=query)) # queryset dikembalikan lalu difilter sesuai parameter 'q'
        return User.objects.all().order_by('id') # mengembalikan seluruh queryset dan di order ASC berdasarkan id user

    # def get_queryset(self):
    #     queryset_list = self.queryset
    #     query = self.request.GET.get("q")
    #     query1 = self.request.GET.get("")
    #     if query:
    #         queryset_list = queryset_list.filter(
    #             Q(email=query)|
    #             Q(username=query)
    #         ).distinct()
            
    #     return queryset_list


class UserProfileViewSet(ModelViewSet):
    queryset = UserProfile.objects.all()
    serializer_class = UserProfileSerializer
    permission_classes = (IsAuthenticated,)
    # lookup_field = 'username'

    def get_queryset(self):
        queryset_list = UserProfile.objects.all()
        query = self.request.GET.get("q")
        if query:
            queryset_list = UserProfile.objects.filter(
                Q(name=query)|
                Q(username=query)
            ).distinct()
            
        return queryset_list

class UserDetailView(LoginRequiredMixin, DetailView):

    model = User
    slug_field = "username"
    slug_url_kwarg = "username"


user_detail_view = UserDetailView.as_view()


class UserUpdateView(LoginRequiredMixin, UpdateView):

    model = User
    fields = ["name"]

    def get_success_url(self):
        return reverse("users:detail", kwargs={"username": self.request.user.username})

    def get_object(self):
        return User.objects.get(username=self.request.user.username)

    def form_valid(self, form):
        messages.add_message(
            self.request, messages.INFO, _("Infos successfully updated")
        )
        return super().form_valid(form)


user_update_view = UserUpdateView.as_view()


class UserRedirectView(LoginRequiredMixin, RedirectView):

    permanent = False

    def get_redirect_url(self):
        return reverse("users:detail", kwargs={"username": self.request.user.username})


user_redirect_view = UserRedirectView.as_view()
