from django.db import models
from django.conf import settings
import uuid
from rest_framework.serializers import ValidationError
from django.utils import timezone
import os
from django.dispatch import receiver
from PIL import Image

def hex_uuid():
    return uuid.uuid4().hex

def path_and_rename(instance, filename):
    upload_to = 'promotions'
    ext = filename.split('.')[-1]
    # get filename
    if instance.pk:
        filename = '{}.{}'.format(instance.pk, ext)
    else:
        # set filename as random string
        filename = '{}.{}'.format(uuid4().hex, ext)
    # return the whole path to the file
    return os.path.join(upload_to, filename)

class Promotion(models.Model):
    id_promotion = models.CharField(primary_key=True, max_length=32, default=hex_uuid, editable=False)
    url_banner = models.ImageField(upload_to=path_and_rename, null=False)
    promotion_title = models.CharField(max_length=250)
    description = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    expired_date = models.DateTimeField()

    def expired_text(self):
        now = timezone.now()
        print(now)
        if self.expired_date < now:
            return "promosi sudah berakhir"
        else:
            return "promosi masih berjalan"

    # def save(self, *args, **kwargs):
    #     if self.expired_date < timezone.now():
    #         raise ValidationError({"expired_date": ["Expiry date cannot be smaller than today date"]})
    #     super(Promotion, self).save(*args, **kwargs)

    class Meta:
        db_table = "promotion"

        def __str__(self):
            return str(self.id_promotion)

    def save(self, *args, **kwargs):
        instance = super(Promotion, self).save(*args, **kwargs)
        if self.url_banner != None:
            image = Image.open(self.url_banner.path)
            image.save(self.url_banner.path, quality=20, optimize=True)
        return instance
            
@receiver(models.signals.post_delete, sender=Promotion)
def auto_delete_file_on_delete(sender, instance, **kwargs):
    """
    Deletes file from filesystem
    when corresponding `MediaFile` object is deleted.
    """
    if instance.url_banner:
        if os.path.isfile(instance.url_banner.path):
            os.remove(instance.url_banner.path)

@receiver(models.signals.pre_save, sender=Promotion)
def auto_delete_file_on_change(sender, instance, **kwargs):
    """
    Deletes old file from filesystem
    when corresponding `MediaFile` object is updated
    with new file.
    """
    if not instance.pk:
        return False

    try:
        old_file = sender.objects.get(pk=instance.pk).url_banner
    except sender.DoesNotExist:
        return False

    new_file = instance.url_banner
    if not old_file == new_file:
        if os.path.isfile(old_file.path):
            os.remove(old_file.path)
# Create your models here.
