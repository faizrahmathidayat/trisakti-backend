from django.urls import path, include
from rest_framework.routers import DefaultRouter

from trisakti.jobs.views import (
        CareerCategoryView,
        JobVacancyView,
        JobApplyView,
        AttachmentJobApplyView
    )

router = DefaultRouter()
router.register('career-category', CareerCategoryView)
router.register('job-vacancy', JobVacancyView)
router.register('job-apply', JobApplyView)
router.register('attachment-jobapply', AttachmentJobApplyView)

urlpatterns = [
        path('', include(router.urls))
]
