from django.urls import path, include
from rest_framework.routers import DefaultRouter 

from .views import (
    CountryView, 
    ProvinceView,
    DistrictView,
    SubdistrictView,
    VillageView,
    PostalCodeView
)

router = DefaultRouter() 

router.register('countries', CountryView)
router.register('provinces', ProvinceView)
router.register('districts', DistrictView)
router.register('subdistricts', SubdistrictView)
router.register('villages', VillageView)
router.register('postal-codes', PostalCodeView)

urlpatterns = [
    path('', include(router.urls))
]