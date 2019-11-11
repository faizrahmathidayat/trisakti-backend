from django.shortcuts import render
from .models import (
    ForumCategory,
    Forum,
    ForumMember,
    ForumDiscussion,
    Comments
)
from .serializers import (
    ForumCategorySerializer,
    ForumSerializer,
    ForumMemberSerializer,
    ForumDiscussionSerializer,
    CommentsSerializer,
)
from rest_framework.viewsets import ModelViewSet
from rest_framework.filters import (SearchFilter, OrderingFilter)
from rest_framework.response import Response
from django.db.models import Q
from django.contrib.auth.models import Group
from django.contrib.auth import get_user_model

# Create your views here.

User = get_user_model()


class ForumCategoryView(ModelViewSet):
    queryset = ForumCategory.objects.all()
    serializer_class = ForumCategorySerializer

    def list(self, request):
        queryset = self.queryset
        serializer = ForumCategorySerializer(queryset, many=True)

        test_group = Group.objects.get(name="member")
        user_groups = request.user.groups.all()

        # user = User.objects.get(username=request.user)
        # if(user.is_active):
        #     print("ini user aktif")

        if(not test_group in user_groups):
            return Response({'detail': 'Anda bukan member verified'})
        return Response(serializer.data)


class ForumView(ModelViewSet):
    queryset = Forum.objects.all()
    serializer_class = ForumSerializer
    filter_backends = [SearchFilter, OrderingFilter]
    search_fields = ["forum_name"]

    def get_queryset(self):
        queryset_list = self.queryset
        query = self.request.GET.get("q")
        if query:
            queryset_list = queryset_list.filter(
                Q(forum_name=query)
            ).distinct()
        return queryset_list


class ForumMemberView(ModelViewSet):
    queryset = ForumMember.objects.all()
    serializer_class = ForumMemberSerializer


class ForumDiscussionView(ModelViewSet):
    queryset = ForumDiscussion.objects.all()
    serializer_class = ForumDiscussionSerializer


class CommentsView(ModelViewSet):
    queryset = Comments.objects.all()
    serializer_class = CommentsSerializer
