from django.shortcuts import render
from rest_framework.response import Response
from rest_framework import status

from .models import (
        CareerCategory,
        JobVacancy,
        JobApply,
        AttachmentJobApply
    )

from .serializers import (
        CareerCategorySerializer,
        JobVacancySerializer,
        JobApplySerializer,
        AttachmentJobApplySerializer
    )

from rest_framework.viewsets import ModelViewSet
from django.contrib.auth import get_user_model
from django.db.models import Q

from datetime import datetime
from django.utils import timezone

from django.core.mail import send_mail, EmailMessage, EmailMultiAlternatives
from rest_framework.serializers import ValidationError

from rest_framework.decorators import api_view

from django.template.loader import render_to_string
from django.utils.html import strip_tags
from django.conf import settings
import os
from urllib.request import urlopen

User = get_user_model()

class CareerCategoryView(ModelViewSet):
    queryset = CareerCategory.objects.all().order_by('category')
    serializer_class = CareerCategorySerializer

    def update(self, request, pk=None):
        try:
            categories = CareerCategory.objects.get(pk=pk)

            if request.FILES:
                categories.category = request.POST['category']
                categories.url_image = request.FILES['url_image']
            else:
                categories.category = request.POST['category']

            categories.save()
        except CareerCategory.DoesNotExist:
            raise ValidationError('error')

        return Response({'detail' : 'update successful'}, status=status.HTTP_200_OK)

class JobVacancyView(ModelViewSet):
    now = datetime.now()
    queryset = JobVacancy.objects.filter(expired_date__gte=now)
    serializer_class = JobVacancySerializer

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        self.perform_create(serializer)
        headers = self.get_success_headers(serializer.data)

        if serializer.data['expired_date'] <= str(datetime.now()):
            raise ValidationError({'expired_date' : ['Tanggal expired tidak boleh kurang/sama dari tanggal hari ini']})
        return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)

    def update(self, request, pk=None):
        try:
            vacancies = JobVacancy.objects.get(pk=pk)
            get_category = CareerCategory.objects.get(id_category=request.POST['id_category'])
            get_user = User.objects.get(username=request.POST['username'])
            now = str(datetime.now())

            # cek jika gambar berubah
            if request.FILES:
                if request.POST['expired_date'] == '':
                    vacancies.id_category   = get_category
                    vacancies.username      = get_user
                    vacancies.desc          = request.POST['desc']
                    # vacancies.expired_date  = request.POST['expired_date']
                    vacancies.title_joblist = request.POST['title_joblist']
                    vacancies.company_name  = request.POST['company_name']
                    vacancies.function_job  = request.POST['function_job']
                    vacancies.type_job      = request.POST['type_job']
                    vacancies.experience_job= request.POST['experience_job']
                    vacancies.image_job     = request.FILES['image_job']
                    vacancies.required_skill= request.POST['required_skill']
                elif request.POST['expired_date'] > now:
                    vacancies.id_category   = get_category
                    vacancies.username      = get_user
                    vacancies.desc          = request.POST['desc']
                    vacancies.expired_date  = request.POST['expired_date']
                    vacancies.title_joblist = request.POST['title_joblist']
                    vacancies.company_name  = request.POST['company_name']
                    vacancies.function_job  = request.POST['function_job']
                    vacancies.type_job      = request.POST['type_job']
                    vacancies.experience_job= request.POST['experience_job']
                    vacancies.image_job     = request.FILES['image_job']
                    vacancies.required_skill= request.POST['required_skill']
                elif request.POST['expired_date'] < now:
                    raise ValidationError({'Expire Date' : 'Tanggal expired tidak boleh kurang dari tanggal hari ini'})
            # cek jika gambar tidak berubah
            if not request.FILES:
                if request.POST['expired_date'] == '':
                    vacancies.id_category   = get_category
                    vacancies.username      = get_user
                    vacancies.desc          = request.POST['desc']
                    # vacancies.expired_date  = request.POST['expired_date']
                    vacancies.title_joblist = request.POST['title_joblist']
                    vacancies.company_name  = request.POST['company_name']
                    vacancies.function_job  = request.POST['function_job']
                    vacancies.type_job      = request.POST['type_job']
                    vacancies.experience_job= request.POST['experience_job']
                    # vacancies.image_job     = request.FILES['image_job']
                    vacancies.required_skill= request.POST['required_skill']
                elif request.POST['expired_date'] > now:
                    vacancies.id_category   = get_category
                    vacancies.username      = get_user
                    vacancies.desc          = request.POST['desc']
                    vacancies.expired_date  = request.POST['expired_date']
                    vacancies.title_joblist = request.POST['title_joblist']
                    vacancies.company_name  = request.POST['company_name']
                    vacancies.function_job  = request.POST['function_job']
                    vacancies.type_job      = request.POST['type_job']
                    vacancies.experience_job= request.POST['experience_job']
                    # vacancies.image_job     = request.FILES['image_job']
                    vacancies.required_skill= request.POST['required_skill']
                elif request.POST['expired_date'] < now:
                    raise ValidationError({'expired_date' : 'Tanggal expired tidak boleh kurang dari tanggal hari ini'})

            vacancies.save()

        except JobVacancy.DoesNotExist:
            raise ValidationError('errors')

        return Response({'detail' : 'update successful'}, status=status.HTTP_200_OK)

class JobApplyView(ModelViewSet):
    queryset = JobApply.objects.all()
    serializer_class = JobApplySerializer

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        self.perform_create(serializer)
        headers = self.get_success_headers(serializer.data)
        try:
            get_job_vacancy = JobVacancy.objects.get(id_job=serializer.data['id_job'])
            get_user = User.objects.get(username=get_job_vacancy.username)
        except JobVacancy.DoesNotExist:
            raise ValidationError('Job DoesNotExist')

        val_get_job_vacancy = JobVacancy.objects.get(id_job=serializer.data['id_job'])
        val_get_user = User.objects.get(username=get_job_vacancy.username)

        if request.user.username == val_get_user.username:
            raise ValidationError({'detail' : 'anda tidak dapat melamar pekerjaan yang anda buat'})

        subject, from_email, to = 'Job Apply '+get_job_vacancy.function_job, 'faiz@inarts.co.id', request.user.email

        html_content = render_to_string('account/mail_template.html',
        {
        'varname':'test email',

        }) 
        text_content = strip_tags(html_content)
        directory = os.path.dirname(os.path.abspath(__file__))
        msg = EmailMultiAlternatives(subject, text_content, from_email, [to])
        msg.attach_alternative(html_content, "text/html")
        response = urlopen(serializer.data['url_attachment'])
        # response = urlopen(settings.BASE_URL+"media/jobs/jobs-attachment/03ff750153aa4762a4cb04b56e27afbe.pdf/")
        msg.attach(request.FILES['url_attachment'].name,response.read(),mimetype="application/pdf")
        # msg.attach_file(settings.MEDIA_ROOT+'/jobs/job-attachment/11bcc3f0d7374c7a9d6e748114a146da.pdf')
        msg.send()
            
        # send email kepada pelamar kerja
        # send_mail(
        #     'Job Apply '+get_job_vacancy.function_job,
        #     'anda telah melamar pekerjaan sebagai '+get_job_vacancy.function_job,
        #     'faiz@inarts.co.id',
        #     [request.user.email],
        #     fail_silently=False
        # )  

        # send email kepada pembuat lapangan kerja
        # send_mail(
        #     'Job Apply Request',
        #     serializer.data['url_attachment'],
        #     'faiz@inarts.co.id',
        #     [get_user.email],
        #     fail_silently=False
        # )  

        return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)

    def update(self, request, pk=None):
        try:
            applies = JobApply.objects.get(pk=pk)
            get_data_vacancy = JobVacancy.objects.get(id_job=request.POST['id_job'])
            get_data_user    = User.objects.get(username=request.POST['username'])

            if request.FILES:
                applies.id_job          = get_data_vacancy
                applies.username        = get_data_user
                applies.url_attachment  = request.FILES['url_attachment']
            else:
                applies.id_job = get_data_vacancy
                applies.username = get_data_user

            applies.save()
        except JobApply.DoesNotExist:
            raise ValidationError('error')

        return Response({'detail' : 'update successful'}, status=status.HTTP_200_OK)

class AttachmentJobApplyView(ModelViewSet):
    queryset = AttachmentJobApply.objects.all()
    serializer_class = AttachmentJobApplySerializer

    def list(self, request, *args, **kwargs):
        return Response({'WARNING' : 'untuk saat ini modul attachment job apply tidak dapat di access'})
