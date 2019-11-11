from django.conf import settings
from django.urls import include, path
from django.conf.urls.static import static
from django.contrib import admin
from django.views.generic import TemplateView
from django.views import defaults as default_views

from rest_framework.routers import DefaultRouter 
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView
from trisakti.users.views import MyTokenObtainPairSerializer, MyTokenObtainPairView

from trisakti.users.views import (
    LogoutView, 
    RegsitrasiConfirmToken, 
    ForgotPasswordSendEmail,
    ForgotPasswordConfirmToken,
    ForgotPasswordResetPassword,
    change_password
)

urlpatterns = [
    # api auth rest framework 
    path("api-auth", include("rest_framework.urls")),
    
    # API
    path('api/v1/users/', include("trisakti.users.urls")),
    path('api/v1/areas/', include("trisakti.areas.urls")),
    path('api/v1/forums/', include("trisakti.forum.urls")),
    path('api/v1/jobs/', include("trisakti.jobs.urls")),
    path('api/v1/promotions/', include("trisakti.promotions.urls")),

    path("api/v1/token/", MyTokenObtainPairView.as_view()),
    path("api/v1/token/refresh/", TokenRefreshView.as_view()),
    path("api/v1/register/confirm/", RegsitrasiConfirmToken),
    path("api/v1/forgot-password-send-email/", ForgotPasswordSendEmail),
    path("api/v1/forgot-password-send-email/confirm-token/", ForgotPasswordConfirmToken),
    path("api/v1/forgot-password-send-email/reset-password/", ForgotPasswordResetPassword),
    path("api/v1/change-password/", change_password),
    path("api/v1/logout/", LogoutView.as_view()),
    # END API

    path("", TemplateView.as_view(template_name="pages/home.html"), name="home"),
    path(
        "about/", TemplateView.as_view(template_name="pages/about.html"), name="about"
    ),
    # Django Admin, use {% url 'admin:index' %}
    path(settings.ADMIN_URL, admin.site.urls),
    # User management
    path("users/", include("trisakti.users.urls", namespace="users")),
    path("accounts/", include("allauth.urls")),
    # Your stuff: custom urls includes go here
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

if settings.DEBUG:
    # This allows the error pages to be debugged during development, just visit
    # these url in browser to see how these error pages look like.
    urlpatterns += [
        path(
            "400/",
            default_views.bad_request,
            kwargs={"exception": Exception("Bad Request!")},
        ),
        path(
            "403/",
            default_views.permission_denied,
            kwargs={"exception": Exception("Permission Denied")},
        ),
        path(
            "404/",
            default_views.page_not_found,
            kwargs={"exception": Exception("Page not Found")},
        ),
        path("500/", default_views.server_error),
    ]
    if "debug_toolbar" in settings.INSTALLED_APPS:
        import debug_toolbar

        urlpatterns = [path("__debug__/", include(debug_toolbar.urls))] + urlpatterns
