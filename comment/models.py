from django.db import models
from django.contrib.contenttypes.fields import GenericForeignKey
from django.contrib.contenttypes.models import ContentType
from django.contrib.auth.models import User

# Create your models here.
class Comment(models.Model):
    content_type = models.ForeignKey(ContentType, on_delete=models.CASCADE)
    object_id = models.PositiveIntegerField()
    content_object = GenericForeignKey('content_type', 'object_id')

    text = models.TextField()
    comment_time = models.DateTimeField(auto_now_add=True)
    user = models.ForeignKey(User, related_name="comments", on_delete=models.CASCADE) #回复者

    root = models.ForeignKey('self', related_name="root_comment", null=True, on_delete=models.CASCADE)
    parent = models.ForeignKey('self', related_name="parent_comment", null=True, on_delete=models.CASCADE)  #父级评论，表示你评论的上一个对象是
    reply_to = models.ForeignKey(User, related_name="replies", null=True, on_delete=models.CASCADE) # 根级评论，就是评论了，主要用于显示
    # 自己的理解备注
    # 评论文章的没有root，回复评论的有root和parent

    def __str__(self):
        return self.text

    def get_user(self):
        return self.user

    def get_url(self):
        return self.content_object.get_url()

    class Meta:
        ordering = ['comment_time']
        verbose_name = '评论'
        verbose_name_plural = verbose_name
