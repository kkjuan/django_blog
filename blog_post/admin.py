from django.contrib import admin
from blog_post.models import Post, GuestBook

# Register your models here.
admin.site.register(Post)
admin.site.register(GuestBook)