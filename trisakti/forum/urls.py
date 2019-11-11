from django.urls import path, include
from rest_framework.routers import DefaultRouter 

from trisakti.forum.views import (
    ForumCategoryView,
    ForumView,
    ForumMemberView,
    ForumDiscussionView,
    CommentsView
)

router = DefaultRouter()
router.register('forum-category', ForumCategoryView)
router.register('forum', ForumView)
router.register('forum-member', ForumMemberView)
router.register('forum-discussion', ForumDiscussionView)
router.register('comments', CommentsView)

urlpatterns = [
    path('', include(router.urls))
]