from django.contrib.auth.models import AbstractUser
from django.db.models import CharField
from django.urls import reverse
from django.utils.translation import ugettext_lazy as _

from django.db import models
from django.conf import settings

from rest_framework.serializers import ValidationError

from trisakti.areas.models import (
    Country,
    Province,
    District,
    Subdisctrict,
    Village,
    PostalCode
)

import os
from django.core.files.storage import FileSystemStorage
from uuid import uuid4
from PIL import Image


class OverwriteStorage(FileSystemStorage):
    def get_available_name(self, name, max_length=None):
        # If the filename already exists, remove it as if it was a true file system
        if self.exists(name):
            os.remove(os.path.join(settings.MEDIA_ROOT, name))
        return name


def path_and_rename(instance, filename):
    upload_to = 'photos/' + instance.pk
    ext = filename.split('.')[-1]
    # get filename
    if instance.pk:
        filename = '{}.{}'.format(instance.pk, ext)
    else:
        # set filename as random string
        filename = '{}.{}'.format(uuid4().hex, ext)
    # return the whole path to the file
    return os.path.join(upload_to, filename)


def file_size(value): 
    print(value)
    ext = os.path.splitext(value.name)[1]
    valid_extensions = ['.jpg', '.png']
    if not ext.lower() in valid_extensions:
        raise ValidationError(u'Unsupported file extension.')
    else:
        limit = 1 * 1024 * 1024
        if value.size > limit:
            raise ValidationError('File too large. Size should not exceed 1 MB.')

class User(AbstractUser):

    # First Name and Last Name do not cover name patterns
    # around the globe.
    name = CharField(_("Name of User"), blank=True, max_length=255)
    token = CharField(max_length=255, blank=True, null=True)
    remember_token = CharField(max_length=255, blank=True, null=True)
    telp = CharField(max_length=13)

    def get_absolute_url(self):
        return reverse("users:detail", kwargs={"username": self.username})


class UserProfile(models.Model):
    id_profile = models.CharField(max_length=11, primary_key=True)
    username = models.OneToOneField(settings.AUTH_USER_MODEL, to_field="username", on_delete=models.CASCADE)
    url_photo = models.ImageField(upload_to=path_and_rename, storage=OverwriteStorage(), blank=True, null=True)
    nik = models.CharField(max_length=100, unique=True, blank=True, null=True)
    name = models.CharField(max_length=100, blank=True, null=True)
    gender = models.CharField(max_length=10, blank=True, null=True)
    birth_location = models.CharField(max_length=100, blank=True, null=True)
    birthdate = models.DateField(auto_now=False, auto_now_add=False, blank=True, null=True)
    address = models.TextField(blank=True, null=True)
    id_country = models.ForeignKey(Country, related_name="country_user", on_delete=models.PROTECT, null=True)
    id_province = models.ForeignKey(Province, related_name="province_user", on_delete=models.PROTECT, null=True)
    id_district = models.ForeignKey(District, related_name="district_user", on_delete=models.PROTECT, null=True)
    id_village = models.ForeignKey(Village, related_name="village_user", on_delete=models.PROTECT, null=True)
    postal_code = models.IntegerField(max_length=5, blank=True, null=True)
    faculty = models.IntegerField(blank=True, null=True)
    department = models.CharField(max_length=100, blank=True, null=True)
    generation = models.IntegerField(blank=True, null=True)
    is_verified = models.BooleanField(default=False)
    is_forum = models.BooleanField(default=False)
    is_marketplace = models.BooleanField(default=False)

    class Meta:
        db_table = "user_profile"
        verbose_name = "user_profile"
        verbose_name_plural = "users_profile"

    def __str__(self):
        return str(self.id_profile)

    def save(self, *args, **kwargs):
        instance = super(UserProfile, self).save(*args, **kwargs)
        if self.url_photo != None:
            image = Image.open(self.url_photo.path)
            image.save(self.url_photo.path, quality=20, optimize=True)
        return instance
