import datetime
from django.shortcuts import render, redirect
from django.urls import reverse
from django.utils import timezone
from django.core.paginator import Paginator


from .models import Guestbook



# Create your views here.

def guestbook(request):

    # 获取列表
    message_list = Guestbook.objects.all()
    paginator = Paginator(message_list, 3) #每10页进行分页

    page_num = request.GET.get('page', 1)   #获取url的页面参数（GET请求）
    page_of_messages = paginator.get_page(page_num)

    current_page_num = page_of_messages.number #获取当前页码
    page_range = list(range(max(current_page_num - 2, 1), current_page_num)) + \
                 list(range(current_page_num, min(current_page_num + 2, paginator.num_pages) + 1))

     # 加上省略页码标记
    if page_range[0] - 1 >= 2:
        page_range.insert(0, '...')
    if paginator.num_pages - page_range[-1] >= 2:
        page_range.append('...')
    
    # 加上首页和尾页,非首尾页，就在前面和后面插入
    if page_range[0] != 1:
        page_range.insert(0, 1)
    if page_range[-1] != paginator.num_pages:
        page_range.append(paginator.num_pages)         


    context = {}
    context['messages'] = page_of_messages.object_list
    context['page_of_messages'] = page_of_messages
    context['page_range'] = page_range


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