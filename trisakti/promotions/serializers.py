from .models import (Promotion)
from rest_framework.serializers import (ModelSerializer, CharField, HyperlinkedModelSerializer)
from .models import Promotion
from rest_framework.serializers import (ValidationError, DateTimeField)

class PromotionSerializer(HyperlinkedModelSerializer):
    expired_date = DateTimeField(format='%Y-%m-%d %H:%M:%S')
    created_at = DateTimeField(format='%Y-%m-%d %H:%M:%S', read_only=True)
    expired_text = CharField(read_only=True)
    class Meta:
        model = Promotion
        fields = ['url', 'id_promotion', 'promotion_title', 'description', 'url_banner', 'created_at', 'expired_date', 'expired_text']
        write_only_fields = ('created_at', 'expired_text')
