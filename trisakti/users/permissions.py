from rest_framework.permissions import BasePermission, SAFE_METHODS


class IsOwner(BasePermission):
	message = 'You are not the owner'

	def has_object_permission(self, request, view, obj):
		return obj.username == request.user 


class IsVerified(BasePermission):
	message = 'You need to join our member for premium feature'

	def has_object_permission(self, request, view, obj):
		return bool(request.user.is_superuser or (request.user and obj.is_verified))


# class IsNotSuspended(BasePermission):
# 	message = 'Your account is suspended'

# 	def has_permission(self, request, view):
# 		return bool(request.user.is_active and not request.user.is_suspended)

