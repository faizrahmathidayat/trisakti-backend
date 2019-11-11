from rest_framework.serializers import (
    ModelSerializer, 
    HyperlinkedModelSerializer, 
    SlugRelatedField
)
from .models import (
    Country,
    Province,
    District,
    Subdisctrict,
    Village,
    PostalCode
)

class ProvinceSerializer(ModelSerializer):
    # districts = SlugRelatedField(many=True, read_only=True, slug_field="district")
    class Meta:
        model = Province 
        # fields = ['id_province', 'province', 'districts']
        fields = ['id_province', 'province']

class CountrySerializer(HyperlinkedModelSerializer):
    # provinces = SlugRelatedField(many=True, read_only=True, slug_field="province")
    provinces = ProvinceSerializer(many=True, read_only=True)
    class Meta:
        model = Country
        fields = '__all__'

class DistrictSerializer(ModelSerializer):
    class Meta:
        model = District 
        fields = '__all__'

class SubdisctrictSerializer(ModelSerializer):
    class Meta:
        model = Subdisctrict 
        fields = '__all__'

class VillageSerializer(ModelSerializer):
    class Meta:
        model = Village 
        fields = '__all__'

class PostalCodeSerializer(ModelSerializer):
    class Meta:
        model = PostalCode
        fields = '__all__'