import datetime
from django.shortcuts import render, redirect
from django.urls import reverse
from django.utils import timezone

from .models import Guestbook



# Create your views here.

def guestbook(request):

    # 获取列表
    message_list = Guestbook.objects.all()

    context = {}
    # context['content'] = message_list.content
    # context['message_time'] = message_list.message_time
    # context['user'] = message_list.user
    context['message_list'] = message_list


    return render(request, 'guestbook.html',context)

def message_commit(request):
    referer = request.META.get('HTTP_REFERER', reverse('home'))
    # 数据检查
    if not request.user.is_authenticated:
        return render(request, 'error.html', {'message': '用户未登录', 'redirect_to': referer})
    text = request.POST.get('text', '').strip()
    if text == '':
        return render(request, 'error.html', {'message': '评论内容为空', 'redirect_to': referer})
    try:
        pass
    except Exception as e:
        return render(request, 'error.html', {'message': '评论对象不存在', 'redirect_to': referer})

    # 检查通过，保存数据
    message = Guestbook()
    message.user = request.user
    message.content = text
    message.message_time = timezone.now()
    message.save()
    return redirect(referer)