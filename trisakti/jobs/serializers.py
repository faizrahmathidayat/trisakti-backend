from rest_framework.validators import UniqueValidator
from rest_framework.serializers import (
        ModelSerializer,
        HyperlinkedModelSerializer,
        SerializerMethodField,
        SlugRelatedField,
        CharField,
        FileField,
        DateTimeField,
        ValidationError
    )

from .models import (
        CareerCategory,
        JobVacancy,
        JobApply,
        AttachmentJobApply
    )

from django.contrib.auth import get_user_model

from django.db.models import Q

from django.core.mail import send_mail, EmailMultiAlternatives

User = get_user_model()

class AttachmentJobApplySerializer(ModelSerializer):

    class Meta:
        model = AttachmentJobApply
        fields = '__all__'

class JobApplySerializer(ModelSerializer):
    attachment_code = CharField(read_only=True)
    body_messages = CharField(read_only=True)

    class Meta:
        model = JobApply
        fields = '__all__'
        write_only_fields = ('attachment_code')

    def validate_id_job(self, value):
        data = self.get_initial()
        job = JobApply.objects.filter(
            Q(username=data.get('username')) &
            Q(id_job=data.get('id_job'))
            )
        if job:
            raise ValidationError({'detail':'You have applied for this job'})
        return value

class JobVacancySerializer(ModelSerializer):
    expired_date = DateTimeField(format='%Y-%m-%d %H:%M:%S')
    created_at = DateTimeField(format='%Y-%m-%d %H:%M:%S', read_only=True)
    created_date = CharField(read_only=True)
    count_job = SerializerMethodField(read_only=True)
    category_name = SerializerMethodField(read_only=True)
    email_user = SerializerMethodField(read_only=True)
    class Meta:
        model = JobVacancy
        fields = [
            'id_job',
            'username',
            'email_user',
            'image_job',
            'title_joblist',
            'company_name',
            'function_job',
            'type_job',
            'experience_job',
            'required_skill',
            'desc' ,
            'created_at',
            'created_date',
            'expired_date',
            'id_category',
            'count_job',
            'category_name'
        ]

    def get_count_job(self, obj):
        return obj.job_apply.count()

    def get_category_name(self, obj):
        return obj.id_category.category

    def get_email_user(self, obj):
        return obj.username.email

class CareerCategorySerializer(ModelSerializer):
    category = CharField(validators=[
        UniqueValidator(
            queryset=CareerCategory.objects.all(),
            message="This category is already in use",
        )])
    url_image = FileField(required=True)
    
    class Meta:
        model = CareerCategory
        fields = '__all__'
