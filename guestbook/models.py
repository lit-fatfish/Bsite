from django.db import models
from django.contrib.auth.models import User
from django.contrib.contenttypes.fields import GenericForeignKey
from django.contrib.contenttypes.models import ContentType


# Create your models here.


class Guestbook(models.Model):
    # content_type = models.ForeignKey(ContentType, on_delete=models.CASCADE)
    # object_id = models.PositiveIntegerField()
    # content_object = GenericForeignKey('content_type', 'object_id')

    content = models.TextField(verbose_name='留言内容')
    message_time = models.DateTimeField(auto_now_add=True, verbose_name='留言时间')
    user = models.ForeignKey(User, related_name="guestbook", on_delete=models.CASCADE, verbose_name='留言者') #留言者

    class Meta:
        ordering = ['-message_time']
        verbose_name = '留言'
        verbose_name_plural = verbose_name

