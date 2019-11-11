from django.db import models
from django.conf import settings

# Create your models here.
class ForumCategory(models.Model):
    id_category = models.AutoField(primary_key=True)
    category_desc = models.TextField()

    class Meta:
        # managed = False 
        db_table = "forum_category"

    def __str__(self):
        return str(self.id_category)

class Forum(models.Model):
    id_forum = models.AutoField(primary_key=True)
    forum_name = models.CharField(max_length=255)
    id_category = models.ForeignKey(ForumCategory, related_name="forum_category", on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        # managed = False 
        db_table = "forum"

    def __str__(self):
        return str(self.id_forum)

class ForumMember(models.Model):
    id_forum_member = models.AutoField(primary_key=True)
    id_forum = models.ForeignKey(Forum, related_name="forum", on_delete=models.CASCADE)
    username = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    join_date = models.DateTimeField(auto_now_add=True)

    class Meta:
        # managed = False 
        db_table = "forum_member"
    
    def __str__(self):
        return str(self.id_forum_member)

class ForumDiscussion(models.Model):
    id_discussion = models.AutoField(primary_key=True)
    id_forum = models.ForeignKey(Forum, related_name="forum_discussion", on_delete=models.CASCADE)
    id_forum_member = models.ForeignKey(ForumMember, on_delete=models.CASCADE)
    message = models.TextField()
    post_date = models.DateTimeField(auto_now_add=True)
    is_hide = models.BooleanField(default=False)

    class Meta: 
        # managed = False 
        db_table = "forum_discussion"
    
    def __str__(self):
        return str(self.id_discussion)

class Comments(models.Model):
    id_comments = models.AutoField(primary_key=True)
    id_forum_member = models.ForeignKey(ForumMember, on_delete=models.CASCADE)
    id_discussion = models.CharField(max_length=20)
    message = models.TextField()
    is_hide = models.BooleanField(default=False)
    comments_date = models.DateTimeField(auto_now_add=True)

    class Meta: 
        # managed = False 
        db_table = "comments"
    
    def __str__(self):
        return str(self.comments_code)