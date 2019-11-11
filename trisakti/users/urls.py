from django.urls import path, include

from trisakti.users.views import (
    user_redirect_view,
    user_update_view,
    user_detail_view,
    UserViewSet,
    UserProfileViewSet
)

from rest_framework.routers import DefaultRouter

router = DefaultRouter()
router.register('user', UserViewSet)
router.register('user-profile', UserProfileViewSet)

app_name = "users"
urlpatterns = [
    path('', include(router.urls)),
    path("~redirect/", view=user_redirect_view, name="redirect"),
    path("~update/", view=user_update_view, name="update"),
    path("<str:username>/", view=user_detail_view, name="detail"),
]
