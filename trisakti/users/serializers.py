from django.conf import settings
from rest_framework.serializers import (
    ModelSerializer,
    CharField,
    BooleanField,
    ValidationError,
    EmailField,
    SerializerMethodField
)

from django.contrib.auth import get_user_model
from .models import UserProfile
from django.contrib.auth.models import Group

import random
import string

from django.core.mail import send_mail, EmailMultiAlternatives

from rest_framework.validators import UniqueValidator
from django.core.validators import RegexValidator
from django.db.models import Q

from django.template.loader import render_to_string
from django.utils.html import strip_tags

from django.template.loader import get_template
from django.template import Context

User = get_user_model()


class UserUpdateSerializer(ModelSerializer):
    class Meta:
        model = User 
        fields = ['id', 'username', 'password', 'email', 'telp', 'is_active']


class UserSerializer(ModelSerializer):

    default_error_messages = {
        'blank': 'This field is required',
    }

    password = CharField(max_length=15, min_length=3,
                         style={'input_type': 'password'},
                         error_messages={
                             'blank': 'Password is required',
                         })
    is_active = BooleanField(default=False, read_only=True)
    email = EmailField(max_length=100,
                       validators=[UniqueValidator(
                           queryset=User.objects.all(),
                           message="This email has been used"
                       )]
                       )
    telp = CharField(required=True, max_length=13, min_length=10, validators=[UniqueValidator(
        queryset=User.objects.all(),
        message="This phone number has been used"
    )])

    profile = SerializerMethodField()
    confirm_password = CharField(write_only=True)

    class Meta:
        model = User
        fields = ['id', 'username', 'password', 'email', 'telp', 'is_active', 'profile', 'confirm_password']
        extra_kwargs = {
            'password': {
                'write_only': True,
                'error_messages': {
                    'blank': 'Password is required',
                    'required': 'Password is required'
                }
            },
        }
        read_only_fields = ['id']

    def get_profile(self, obj):
        if obj.username:
            return UserProfileSerializer(UserProfile.objects.filter(Q(username=obj.username)), many=True, read_only=True).data
        return None

    def create(self, validated_data):

        letters = string.hexdigits
        random_string = ''.join(random.choice(letters) for i in range(11))

        activate_token = ''.join(random.choice(letters) for i in range(32))

        email_register = validated_data['email']
        # Validating Data
        user = User(
            username=validated_data['username'],
            email=email_register,
            telp=validated_data['telp'],
            is_active=False,
            token=activate_token
        )

        user.set_password(validated_data['password'])
        user.save()

        # group = Group.objects.get(name="non_member")
        # group.user_set.add(user)
        # group.save()

        get_username = User.objects.get(username=validated_data['username'])
        user_profile = UserProfile(
            id_profile=random_string,
            username=get_username
        )
        user_profile.save()

        my_context = {
            'user': validated_data['username'] + settings.BASE_URL,
            'base_url': settings.IMAGE_URL + 'emails/email.png', 
            'url': settings.BASE_URL + 'api/v1/register/confirm/?token=' + activate_token,
        }

        subject, from_email, to = 'Confirmation Registration Trisakti Connect', 'galih@inarts.co.id', [email_register]
        text_content = 'This is an important message.'
        html_content = render_to_string('emails/users/verification_email.html', my_context)

        msg = EmailMultiAlternatives(subject, text_content, from_email, [to])
        msg.attach_alternative(html_content, "text/html")
        send = msg.send()

        return user

    def validate_confirm_password(self, value):
        data = self.get_initial()
        if not value:
            raise ValidationError({"confirm_password": ["Confirm password may not be blank"]})
        if value != data["password"]:
            raise ValidationError("Password must be match")
        print(value)
        print(data["password"])
        return value


class UserProfileSerializer(ModelSerializer):
    id_profile = CharField(read_only=True)
    photo = SerializerMethodField()

    class Meta:
        model = UserProfile
        # fields = [
        #     'id_profile',
        #     'nik',
        #     'name',
        #     'username',
        #     'gender',
        #     'birth_location',
        #     'birthdate',
        #     'address',
        #     'faculty',
        #     'department',
        #     'generation',
        #     'url_photo',
        # ]
        fields = '__all__'

    def get_photo(self, obj):
        try:
            image = obj.url_photo.url
        except:
            image = '/media/photos/default.jpg' 
        return image
