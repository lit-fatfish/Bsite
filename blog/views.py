from django.shortcuts import render_to_response,get_object_or_404
from django.core.paginator import Paginator
from .models import Blog, BlogType
from django.conf import settings

def blog_list(request):
    blogs_all_list = Blog.objects.all()
    paginator = Paginator(blogs_all_list, settings.EACH_PAGE_BLOGS_NUMBER) #每10页进行分页
    page_num = request.GET.get('page', 1)   #获取url的页面参数（GET请求）
    page_of_blogs = paginator.get_page(page_num)    #共有多少篇博客

    current_page_num = page_of_blogs.number #获取当前页码
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
    context['blogs'] = page_of_blogs.object_list
    context['page_of_blogs'] = page_of_blogs
    context['blog_types'] = BlogType.objects.all()
    context['page_range'] = page_range
    #context['blog_count'] = Blog.objects.all().count()  #统计博客数量，然后可以直接在html中引用
    return render_to_response('blog/blog_list.html', context)

def blog_detail(request, blog_pk):
    context = {}
    context['blog'] = get_object_or_404(Blog, pk=blog_pk)
    return render_to_response('blog/blog_detail.html', context)

def blog_with_type(request, blog_type_pk):
    context = {}
    blog_type = get_object_or_404(BlogType, pk=blog_type_pk)


    blogs_all_list = Blog.objects.filter(blog_type=blog_type)
    paginator = Paginator(blogs_all_list, settings.EACH_PAGE_BLOGS_NUMBER) #每10页进行分页
    page_num = request.GET.get('page', 1)   #获取url的页面参数（GET请求）
    page_of_blogs = paginator.get_page(page_num)    #共有多少篇博客

    current_page_num = page_of_blogs.number #获取当前页码
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
    context['blog_type'] = blog_type
    context['blogs'] = page_of_blogs.object_list
    context['page_of_blogs'] = page_of_blogs
    context['blog_types'] = BlogType.objects.all()
    context['page_range'] = page_range

    return render_to_response('blog/blog_with_type.html', context)

