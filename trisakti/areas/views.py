from django.shortcuts import render
from .models import (
    Country,
    Province,
    District,
    Subdisctrict,
    Village,
    PostalCode
)
from .serializers import (
    CountrySerializer,
    ProvinceSerializer,
    DistrictSerializer,
    SubdisctrictSerializer,
    VillageSerializer,
    PostalCodeSerializer
)
from rest_framework.viewsets import ModelViewSet
from rest_framework.filters import (
    SearchFilter,
    OrderingFilter,
)

from django.db.models import Q

# Create your views here.
class CountryView(ModelViewSet):
    queryset = Country.objects.all() 
    serializer_class = CountrySerializer
    # filter_backends = [SearchFilter, OrderingFilter]
	# search_fields = ["country"]

class ProvinceView(ModelViewSet):
    queryset = Province.objects.all().order_by('province')
    serializer_class = ProvinceSerializer
    # filter_backends = [SearchFilter, OrderingFilter]
    # search_fields = ["id_province", "province"]

class DistrictView(ModelViewSet):
    queryset = District.objects.all() 
    serializer_class = DistrictSerializer 
    # filter_backends = [SearchFilter, OrderingFilter]
    # search_fields = ["id_province"]

    def get_queryset(self):
        queryset_list = self.queryset
        query = self.request.GET.get("province")
        if query:
            queryset_list = queryset_list.filter(
                Q(id_province=query)
                # Q(username=query)
            ).distinct()
            
        return queryset_list

class SubdistrictView(ModelViewSet):
    queryset = Subdisctrict.objects.all() 
    serializer_class = SubdisctrictSerializer 
    # filter_backends = [SearchFilter, OrderingFilter]
    # search_fields = ["subdistrict"]

    def get_queryset(self):
        queryset_list = self.queryset
        query = self.request.GET.get("district")
        if query:
            queryset_list = queryset_list.filter(
                Q(id_district=query)
                # Q(username=query)
            ).distinct()
            
        return queryset_list

class VillageView(ModelViewSet):
    queryset = Village.objects.all() 
    serializer_class = VillageSerializer
    # filter_backends = [SearchFilter, OrderingFilter]
    # search_fields = ["village"]

    def get_queryset(self):
        queryset_list = self.queryset
        query = self.request.GET.get("subdistrict")
        if query:
            queryset_list = queryset_list.filter(
                Q(id_subdistrict=query)
                # Q(username=query)
            ).distinct()
            
        return queryset_list

class PostalCodeView(ModelViewSet):
    queryset = PostalCode.objects.all() 
    serializer_class = PostalCodeSerializer
    filter_backends = [SearchFilter, OrderingFilter]
    search_fields = ["postal_code"]

