# Generated by Django 2.2.4 on 2019-09-04 09:15

from django.db import migrations, models
import trisakti.users.models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofile',
            name='url_photo',
            field=models.ImageField(blank=True, null=True, storage=trisakti.users.models.OverwriteStorage(), upload_to=trisakti.users.models.path_and_rename),
        ),
    ]
