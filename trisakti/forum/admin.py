from django.contrib import admin
from trisakti.forum.models import (
	ForumCategory, 
	Forum, 
	ForumMember, 
	ForumDiscussion, 
	Comments
)

# Register your models here.
admin.site.register(ForumCategory)
admin.site.register(Forum)
admin.site.register(ForumMember)
admin.site.register(ForumDiscussion)
admin.site.register(Comments)