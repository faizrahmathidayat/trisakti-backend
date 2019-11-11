from rest_framework.serializers import ModelSerializer, SlugRelatedField, StringRelatedField, HyperlinkedModelSerializer

from .models import (
    ForumCategory,
    Forum,
    ForumMember,
    ForumDiscussion,
    Comments
)


class ForumCategorySerializer(ModelSerializer):
    forum_category = SlugRelatedField(read_only=True, many=True, slug_field="forum_name")

    class Meta:
        model = ForumCategory
        fields = ['id_category', 'category_desc', 'forum_category']


class ForumSerializer(ModelSerializer):
    class Meta:
        model = Forum
        fields = '__all__'


class ForumMemberSerializer(ModelSerializer):
    class Meta:
        model = ForumMember
        fields = '__all__'


class ForumDiscussionSerializer(ModelSerializer):
    class Meta:
        model = ForumDiscussion
        fields = '__all__'


class CommentsSerializer(ModelSerializer):
    class Meta:
        model = Comments
        fields = '__all__'
