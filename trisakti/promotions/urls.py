from django.urls import path, include
from rest_framework.routers import DefaultRouter
from trisakti.promotions.views import (PromotionView)

router = DefaultRouter()
router.register('promotion', PromotionView)

urlpatterns = [
        path('', include(router.urls))
]
