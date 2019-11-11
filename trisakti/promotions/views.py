from django.shortcuts import render
from .models import (Promotion)
from .serializers import (PromotionSerializer)
from rest_framework.viewsets import ModelViewSet
from django.contrib.auth import get_user_model
from datetime import datetime
from rest_framework.response import Response
from rest_framework import status
from rest_framework.serializers import ValidationError
from datetime import datetime

User = get_user_model

class PromotionView(ModelViewSet):
    queryset = Promotion.objects.all()
    # now = datetime.now()
    # queryset = Promotion.objects.filter(expired_date__gte=now)
    serializer_class = PromotionSerializer

    def list(self, request, *args, **kwargs):
        queryset = self.filter_queryset(self.get_queryset())
        now = datetime.now()
        page = self.paginate_queryset(queryset)
        if page is not None and request.user.is_superuser == True:
                serializer = self.get_serializer(page, many=True)
                return self.get_paginated_response(serializer.data)

        elif page is not None and request.user.is_superuser == False:
                serializer = self.get_serializer(self.paginate_queryset(Promotion.objects.filter(expired_date__gte=now)), many=True)
                return self.get_paginated_response(serializer.data)

        if request.user.is_superuser == True:
            serializer = self.get_serializer(queryset, many=True)
        else:
            serializer = self.get_serializer(Promotion.objects.filter(expired_date__gte=now), many=True)
        return Response(serializer.data)

    # def list(self, request, *args, **kwargs):
    #     queryset = self.filter_queryset(self.get_queryset())
    #     now = datetime.now()
    #     if request.user.is_superuser == True:
    #         serializer = self.get_serializer(queryset, many=True)
    #     else:
    #         serializer = self.get_serializer(Promotion.objects.filter(expired_date__gte=now), many=True)
    #     print(serializer.data)
    #     return Response(serializer.data)

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        self.perform_create(serializer)
        headers = self.get_success_headers(serializer.data)
        # print(serializer.data['expired_date'])

        if serializer.data['expired_date'] <= str(datetime.now()):
            print(request.POST['url_banner'])
            raise ValidationError({'Expired Date' : 'Expiry date cannot be smaller than today date'})
        return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)

    def update(self, request, pk=None):
        try:
            promosi = Promotion.objects.get(pk=pk)

            if request.FILES:
                if request.POST['expired_date'] == '':
                    promosi.promotion_title = request.POST['promotion_title']
                    promosi.description     = request.POST['description']
                    promosi.url_banner      = request.FILES['url_banner']
                elif request.POST['expired_date'] > str(datetime.now()):
                    promosi.promotion_title = request.POST['promotion_title']
                    promosi.description     = request.POST['description']
                    promosi.url_banner      = request.FILES['url_banner']
                    promosi.expired_date    = request.POST['expired_date']
                elif request.POST['expired_date'] <= str(datetime.now()):
                    raise ValidationError({'Expired Date' : 'Tanggal expired tidak boleh kurang dari tanggal hari ini'})

            if not request.FILES:
                if request.POST['expired_date'] == '':
                    promosi.promotion_title = request.POST['promotion_title']
                    promosi.description     = request.POST['description']
                    # promosi.url_banner      = request.FILES['url_banner']
                elif request.POST['expired_date'] > str(datetime.now()):
                    promosi.promotion_title = request.POST['promotion_title']
                    promosi.description     = request.POST['description']
                    # promosi.url_banner      = request.FILES['url_banner']
                    promosi.expired_date    = request.POST['expired_date']
                elif request.POST['expired_date'] <= str(datetime.now()):
                    raise ValidationError({'Expired Date' : 'Tanggal expired tidak boleh kurang/sama dari tanggal hari ini'})

            promosi.save()
        except Promotion.DoesNotExist:
            raise ValidationError('error')

        return Response({'detail' : 'update successful'}, status=status.HTTP_200_OK)

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        self.perform_destroy(instance)
        return Response({'detail' : 'deleted successful'},status=status.HTTP_204_NO_CONTENT)
