from django.contrib import admin
from .models import (
        CareerCategory,
        JobVacancy,
        JobApply,
        AttachmentJobApply
    )

admin.site.register(CareerCategory)
admin.site.register(JobVacancy)
admin.site.register(JobApply)
admin.site.register(AttachmentJobApply)
# Register your models here.
