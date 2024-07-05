from django.db import models

# Create your models here.
"""_summary_
多行註解
    Returns:
        _type_: _description_
"""
'''
多行註解
'''
class Post(models.Model):
    title = models.CharField(max_length=200)
    slug = models.CharField(max_length=200)
    content = models.TextField()
    pub_date = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        ordering = ['-pub_date']
        
    def __str__(self):
        return self.title
    