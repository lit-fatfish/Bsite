from django.db import models
from django.contrib.auth.models import User
from django.urls import reverse
from django.contrib.contenttypes.fields import GenericRelation
from ckeditor_uploader.fields import RichTextUploadingField
from read_statistics.models import ReadNumExpandMethod, ReadDetail

class BlogType(models.Model):
    type_name = models.CharField(max_length=15)

    def __str__(self):
        return self.type_name
    class Meta:
        verbose_name = '博客类型'
        verbose_name_plural = verbose_name

class Blog(models.Model, ReadNumExpandMethod):
    title = models.CharField(max_length=50, verbose_name='标题')
    blog_type = models.ForeignKey(BlogType, on_delete=models.CASCADE, verbose_name='博客类型')
    content = RichTextUploadingField(verbose_name='内容')
    author = models.ForeignKey(User, on_delete=models.CASCADE, verbose_name='作者')
    read_details = GenericRelation(ReadDetail)

    created_time = models.DateTimeField(auto_now_add=True, verbose_name='创建时间')
    last_updated_time = models.DateTimeField(auto_now=True, verbose_name='最后更新时间')

    def get_user(self):
        return self.author

    def get_url(self):
        return reverse('blog_detail', kwargs={'blog_pk':self.pk})

    def __str__(self):
        return "<Blog:%s>" % self.title
    
    class Meta:
        ordering = ['-created_time']
        verbose_name = '博客'
        verbose_name_plural = verbose_name




