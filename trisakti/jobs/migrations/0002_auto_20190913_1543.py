# Generated by Django 2.2.4 on 2019-09-13 08:43

import django.core.validators
from django.db import migrations, models
import trisakti.jobs.models


class Migration(migrations.Migration):

    dependencies = [
        ('jobs', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='jobvacancy',
            name='company_name',
            field=models.CharField(default='PT. Maju', max_length=250),
        ),
        migrations.AddField(
            model_name='jobvacancy',
            name='experience_job',
            field=models.CharField(default='Fresh Graduate', max_length=250),
        ),
        migrations.AddField(
            model_name='jobvacancy',
            name='function_job',
            field=models.CharField(default='Branch Management Development Program', max_length=250),
        ),
        migrations.AddField(
            model_name='jobvacancy',
            name='image_job',
            field=models.FileField(default=1, upload_to=trisakti.jobs.models.path_vacancy, validators=[django.core.validators.FileExtensionValidator(['jpg', 'jpeg', 'png'])]),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='jobvacancy',
            name='required_skill',
            field=models.CharField(default='Sales Training', max_length=255),
        ),
        migrations.AddField(
            model_name='jobvacancy',
            name='title_joblist',
            field=models.CharField(default='Lowongan Pekerjaan PT. Maju', max_length=250),
        ),
        migrations.AddField(
            model_name='jobvacancy',
            name='type_job',
            field=models.CharField(default='Full Time', max_length=250),
        ),
        migrations.AlterField(
            model_name='attachmentjobapply',
            name='url_attachment',
            field=models.FileField(upload_to=trisakti.jobs.models.path_and_rename, validators=[django.core.validators.FileExtensionValidator(['docx', 'doc', 'jpg', 'jpeg', 'png'])]),
        ),
    ]