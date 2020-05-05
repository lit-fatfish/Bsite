# Generated by Django 2.2.10 on 2020-05-05 11:52

import ckeditor_uploader.fields
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0006_auto_20200420_2110'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='blog',
            options={'ordering': ['-created_time'], 'verbose_name': '博客', 'verbose_name_plural': '博客'},
        ),
        migrations.AlterModelOptions(
            name='blogtype',
            options={'verbose_name': '博客类型', 'verbose_name_plural': '博客类型'},
        ),
        migrations.AlterField(
            model_name='blog',
            name='author',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='作者'),
        ),
        migrations.AlterField(
            model_name='blog',
            name='blog_type',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='blog.BlogType', verbose_name='博客类型'),
        ),
        migrations.AlterField(
            model_name='blog',
            name='content',
            field=ckeditor_uploader.fields.RichTextUploadingField(verbose_name='内容'),
        ),
        migrations.AlterField(
            model_name='blog',
            name='created_time',
            field=models.DateTimeField(auto_now_add=True, verbose_name='创建时间'),
        ),
        migrations.AlterField(
            model_name='blog',
            name='last_updated_time',
            field=models.DateTimeField(auto_now=True, verbose_name='最后更新时间'),
        ),
        migrations.AlterField(
            model_name='blog',
            name='title',
            field=models.CharField(max_length=50, verbose_name='标题'),
        ),
    ]
