from django.shortcuts import get_object_or_404,render
from django.core.paginator import Paginator
from django.conf import settings
from django.db.models import Count
from django.contrib.contenttypes.models import ContentType

from .models import Blog, BlogType
from read_statistics.utils import read_statistics_once_read

def get_blog_list_common_data(request, blogs_all_list):
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

    # 获取日期归档对应的博客数量
    blog_dates = Blog.objects.dates('created_time', 'month', order="DESC")
    blog_dates_dict = {}
    for blog_date in blog_dates:
        blog_count = Blog.objects.filter(created_time__year=blog_date.year,
                                        created_time__month=blog_date.month).count()
        blog_dates_dict[blog_date] = blog_count

    context = {}
    context['blogs'] = page_of_blogs.object_list    # 这一页的所有的博客
    context['page_of_blogs'] = page_of_blogs        # 博客列表的这一页
    context['blog_types'] = BlogType.objects.annotate(blog_count=Count('blog')) #SQL语句  获取不同博客类型的数量 
    context['page_range'] = page_range          #博客页码范围
    context['blog_dates'] = blog_dates_dict

    return context

def blog_list(request):
    blogs_all_list = Blog.objects.all()
    context = get_blog_list_common_data(request, blogs_all_list)
    return render(request, 'blog/blog_list.html', context)

def blog_with_type(request, blog_type_pk):
    context = {}
    blog_type = get_object_or_404(BlogType, pk=blog_type_pk)
    blogs_all_list = Blog.objects.filter(blog_type=blog_type)
    context = get_blog_list_common_data(request, blogs_all_list)
    context['blog_type'] = blog_type
    
    return render(request, 'blog/blog_with_type.html', context)

def blogs_with_date(request, year, month):
    context = {}
    blogs_all_list = Blog.objects.filter(created_time__year=year, created_time__month=month)
    context = get_blog_list_common_data(request, blogs_all_list)
    context['blogs_with_date'] = '%s年%s月' % (year, month)

    return render(request, 'blog/blogs_with_date.html', context)


def blog_detail(request, blog_pk):
    blog = get_object_or_404(Blog, pk=blog_pk)
    read_cookie_key = read_statistics_once_read(request, blog)

    context = {}
    context['blog'] = blog
    context['previous_blog'] = Blog.objects.filter(created_time__gt=blog.created_time).last()   #获取前面的一篇文章（以创建的时间为准）
    context['next_blog'] = Blog.objects.filter(created_time__lt=blog.created_time).first()       #获取后面的一篇文章
    response = render(request, 'blog/blog_detail.html', context)
    response.set_cookie(read_cookie_key, 'true')    #阅读cookie标记
    return response
