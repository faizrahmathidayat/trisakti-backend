from django.db import models
from django.conf import settings
import uuid
from rest_framework.serializers import ValidationError
from django.utils import timezone
from django.core.validators import FileExtensionValidator
import os
from django.dispatch import receiver
from datetime import datetime
import math

def hex_uuid():
    return uuid.uuid4().hex

def path_category(instance, filename):
    upload_to = 'jobs/jobs-category'
    ext = filename.split('.')[-1]
    # get filename
    if instance.pk:
        filename = '{}.{}'.format(instance.pk, ext)
    else:
        # set filename as random string
        filename = '{}.{}'.format(uuid4().hex, ext)
    # return the whole path to the file
    return os.path.join(upload_to, filename)

class CareerCategory(models.Model):
    id_category = models.CharField(max_length=32, primary_key=True, default=hex_uuid, editable=False)
    category = models.CharField(max_length=250)
    url_image = models.FileField(upload_to=path_category, null=True, blank=True,validators=[FileExtensionValidator(['jpg', 'jpeg', 'png'])])

    class Meta:
        db_table = "career_category"

        def __str__(self):
            return str(self.id_category)

    def delete(self):
        self.url_image.delete()
        super(CareerCategory, self).delete()

    def update(self):
        self.url_image.save()
        super(CareerCategory, self).save()

# @receiver(models.signals.post_delete, sender=CareerCategory)
# def auto_delete_file_on_delete(sender, instance, **kwargs):
#     if instance.url_image:
#         if os.path.isfile(instance.url_image.path):
#             os.remove(instance.url_image.path)

# @receiver(models.signals.pre_save, sender=CareerCategory)
# def auto_delete_file_on_change(sender, instance, **kwargs):
#     if not instance.pk:
#         return False

#     try:
#         old_file = sender.objects.get(pk=instance.pk).url_image
#     except sender.DoesNotExist:
#         return False

#     new_file = instance.url_image
#     if not old_file == new_file:
#         if os.path.isfile(old_file.path):
#             os.remove(old_file.path)

def path_vacancy(instance, filename):
    upload_to = 'jobs/jobs-bannerjobs'
    ext = filename.split('.')[-1]
    # get filename
    if instance.pk:
        filename = '{}.{}'.format(instance.pk, ext)
    else:
        # set filename as random string
        filename = '{}.{}'.format(uuid4().hex, ext)
    # return the whole path to the file
    return os.path.join(upload_to, filename)

class JobVacancy(models.Model):
    id_job = models.CharField(max_length=32, primary_key=True, default=hex_uuid, editable=False)
    id_category = models.ForeignKey(CareerCategory, related_name="job_vacancy", on_delete=models.CASCADE)
    username = models.ForeignKey(settings.AUTH_USER_MODEL, to_field='username', db_column='username', related_name='username_vacancy', on_delete=models.CASCADE)
    desc = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    expired_date = models.DateTimeField()
    title_joblist = models.CharField(max_length=250)
    company_name = models.CharField(max_length=250)
    function_job = models.CharField(max_length=250)
    type_job = models.CharField(max_length=250)
    experience_job = models.CharField(max_length=250)
    image_job = models.FileField(upload_to=path_vacancy, null=False, validators=[FileExtensionValidator(['jpg', 'jpeg', 'png'])])
    required_skill = models.CharField(max_length=255)

    def created_date(self):
        now = timezone.now()
        diff= now - self.created_at
        # print(diff)
        if diff.days == 0 and diff.seconds >= 0 and diff.seconds < 60:
            seconds= diff.seconds
            if seconds == 1:
                return str(seconds) +  "second ago"
            else:
                return str(seconds) + " seconds ago"
        if diff.days == 0 and diff.seconds >= 60 and diff.seconds < 3600:
            minutes= math.floor(diff.seconds/60)
            if minutes == 1:
                return str(minutes) + " minute ago"
            else:
                return str(minutes) + " minutes ago"

        if diff.days == 0 and diff.seconds >= 3600 and diff.seconds < 86400:
            hours= math.floor(diff.seconds/3600)
            if hours == 1:
                return str(hours) + " hour ago"
            else:
                return str(hours) + " hours ago"
        # 1 day to 30 days
        if diff.days >= 1 and diff.days < 30:
            days= diff.days
            if days == 1:
                return str(days) + " day ago"
            else:
                return str(days) + " days ago"

        if diff.days >= 30 and diff.days < 365:
            months= math.floor(diff.days/30)
            if months == 1:
                return str(months) + " month ago"
            else:
                return str(months) + " months ago"

        if diff.days >= 365:
            years= math.floor(diff.days/365)
            if years == 1:
                return str(years) + " year ago"
            else:
                return str(years) + " years ago"

    # def save(self, *args, **kwargs):
    #     if self.expired_date < datetime.now():
    #         raise ValidationError({"expired_date": ["Tanggal expired tidak boleh kurang dari tanggal hari ini"]})
    #     super(JobVacancy, self).save(*args, **kwargs)

    class Meta:
        db_table = "job_vacancy"

        def __str__(self):
            return str(self.id_job)

    def delete(self):
        self.image_job.delete()
        super(JobVacancy, self).delete()

    def update(self):
        self.image_job.save()
        super(JobVacancy, self).save()
# @receiver(models.signals.post_delete, sender=JobVacancy)
# def auto_delete_file_on_delete(sender, instance, **kwargs):
#     if instance.image_job:
#         if os.path.isfile(instance.image_job.path):
#             os.remove(instance.image_job.path)

# @receiver(models.signals.pre_save, sender=JobVacancy)
# def auto_delete_file_on_change(sender, instance, **kwargs):
#     if not instance.pk:
#         return False

#     try:
#         old_file = sender.objects.get(pk=instance.pk).image_job
#     except sender.DoesNotExist:
#         return False

#     new_file = instance.image_job
#     if not old_file == new_file:
#         if os.path.isfile(old_file.path):
#             os.remove(old_file.path)

def path_attachment(instance, filename):
    upload_to = 'jobs/jobs-attachment'
    ext = filename.split('.')[-1]
    # get filename
    if instance.pk:
        filename = '{}.{}'.format(instance.pk, ext)
    else:
        # set filename as random string
        filename = '{}.{}'.format(uuid4().hex, ext)
    # return the whole path to the file
    return os.path.join(upload_to, filename)

class JobApply(models.Model):
    trx_job = models.CharField(max_length=32, primary_key=True, default=hex_uuid, editable=False)
    username = models.ForeignKey(settings.AUTH_USER_MODEL, related_name="username_job", to_field="username", on_delete=models.CASCADE)
    id_job = models.ForeignKey(JobVacancy, related_name="job_apply", on_delete=models.CASCADE)
    body_messages = models.TextField()
    attachment_code = models.CharField(max_length=250, default=hex_uuid, unique=True)
    apply_date = models.DateField(auto_now_add=True)
    url_attachment = models.FileField(upload_to=path_attachment, null=False, validators=[FileExtensionValidator(['pdf'])])

    class Meta:
        db_table = "job_apply"

        def __str__(self):
            return str(self.trx_job)

    def delete(self):
        self.url_attachment.delete()
        super(JobApply, self).delete()

    def update(self):
        self.url_attachment.save()
        super(JobApply, self).save()

# @receiver(models.signals.post_delete, sender=JobApply)
# def auto_delete_file_on_delete(sender, instance, **kwargs):
#     if instance.url_attachment:
#         if os.path.isfile(instance.url_attachment.path):
#             os.remove(instance.url_attachment.path)

# @receiver(models.signals.pre_save, sender=JobApply)
# def auto_delete_file_on_change(sender, instance, **kwargs):
#     if not instance.pk:
#         return False

#     try:
#         old_file = sender.objects.get(pk=instance.pk).url_attachment
#     except sender.DoesNotExist:
#         return False

#     new_file = instance.url_attachment
#     if not old_file == new_file:
#         if os.path.isfile(old_file.path):
#             os.remove(old_file.path)

def path_and_rename(instance, filename):
    ext = filename.split('.')[-1]
    # get filename
    if instance.pk and ext == 'jpg' or ext == 'jpeg' or ext =='png':
        filename = '{}.{}'.format(instance.pk, ext)
        upload_to = 'jobs/jobs-image'
    elif instance.pk and ext == 'docx' or ext == 'doc':
        filename = '{}.{}'.format(instance.pk, ext)
        upload_to = 'jobs/jobs-document'
    else:
        # set filename as random string
        filename = '{}.{}'.format(uuid4().hex, ext)
    # return the whole path to the file
    return os.path.join(upload_to, filename)

class AttachmentJobApply(models.Model):
    id_attachment = models.CharField(max_length=32, primary_key=True, default=hex_uuid, editable=False)
    attachment_code = models.ForeignKey(JobApply, related_name="attach_job", to_field="attachment_code", on_delete=models.CASCADE)
    attachment_name = models.CharField(max_length=250)
    url_attachment = models.FileField(upload_to=path_and_rename, null=False, validators=[FileExtensionValidator(['docx', 'doc', 'jpg', 'jpeg', 'png'])])

    class Meta:
        db_table = "attacment_job_apply"
        def __str__(self):
            return str(self.id_attachment)
            
# @receiver(models.signals.post_delete, sender=AttachmentJobApply)
# def auto_delete_file_on_delete(sender, instance, **kwargs):
#     if instance.url_attachment:
#         if os.path.isfile(instance.url_attachment.path):
#             os.remove(instance.url_attachment.path)

# @receiver(models.signals.pre_save, sender=AttachmentJobApply)
# def auto_delete_file_on_change(sender, instance, **kwargs):
#     if not instance.pk:
#         return False

#     try:
#         old_file = sender.objects.get(pk=instance.pk).url_attachment
#     except sender.DoesNotExist:
#         return False

#     new_file = instance.url_attachment
#     if not old_file == new_file:
#         if os.path.isfile(old_file.path):
#             os.remove(old_file.path)

#membuat fungsi untuk menghapus file dari system
def _delete_file(path):
   if os.path.isfile(path):
       os.remove(path)

def _update_file(path):
    if os.path.isfile(path):
        os.remove(path)
#end fungsi hapus file

#auto delete file on_delete -> di overriding menggunakan function delete pada class model masing masing
@receiver(models.signals.post_delete, sender=CareerCategory)
def delete_file(sender, instance, *args, **kwargs):
    if instance.url_image:
        _delete_file(instance.url_image.path)

@receiver(models.signals.post_delete, sender=JobVacancy)
def delete_file(sender, instance, *args, **kwargs):
    if instance.image_job:
        _delete_file(instance.image_job.path)

@receiver(models.signals.post_delete, sender=JobApply)
def delete_file(sender, instance, *args, **kwargs):
    if instance.url_attachment:
        _delete_file(instance.url_attachment.path)
#end auto delete file on_delete

#auto_delete_file_on_change -> di overriding menggunakan function update pada class model masing masing
@receiver(models.signals.pre_save, sender=CareerCategory)
def auto_delete_file_on_change(sender, instance, **kwargs):
    if not instance.pk:
        return False

    try:
        old_file = sender.objects.get(pk=instance.pk).url_image
    except sender.DoesNotExist:
        return False

    new_file = instance.url_image
    if not old_file == new_file:
        _update_file(old_file.path)

@receiver(models.signals.pre_save, sender=JobVacancy)
def auto_delete_file_on_change(sender, instance, **kwargs):
    if not instance.pk:
        return False

    try:
        old_file = sender.objects.get(pk=instance.pk).image_job
    except sender.DoesNotExist:
        return False

    new_file = instance.image_job
    if not old_file == new_file:
        _update_file(old_file.path)

# @receiver(models.signals.pre_save, sender=JobApply)
# def auto_delete_file_on_change(sender, instance, **kwargs):
#     if not instance.pk:
#         return False

#     try:
#         old_file = sender.objects.get(pk=instance.pk).url_attachment
#     except sender.DoesNotExist:
#         return False

#     new_file = instance.url_attachment
#     if not old_file == new_file:
#         _update_file(old_file.path)
