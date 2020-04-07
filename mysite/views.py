import datetime
from django.shortcuts import render_to_response
from django.utils import timezone
from django.contrib.contenttypes.models import ContentType
from read_statistics.utils import get_seven_days_read_data, get_today_hot_data, get_yesterday_hot_data
from blog.models import Blog
from django.db.models import Sum
from django.core.cache import cache

def get_week_hot_blogs():
    today = timezone.now().date()
    date = today - datetime.timedelta(days=7)
    blogs = Blog.objects \
                .filter(read_details__date__lt=today, read_details__date__gte=date) \
                .values('id', 'title') \
                .annotate(read_num_sum=Sum('read_details__read_num')) \
                .order_by('-read_num_sum')
    return blogs[:7]

def home(request):
    blog_content_type = ContentType.objects.get_for_model(Blog)
    dates, read_nums = get_seven_days_read_data(blog_content_type)

    # 获取7天热门博客的缓存数据
    week_hot_dat = cache.get('week_hot_dat')
    if week_hot_dat is None:
        week_hot_dat = get_week_hot_blogs()
        cache.set('get_week_hot_blogs', week_hot_dat, 3600) #一个小时=3600

    context = {}
    context['dates'] = dates
    context['read_nums'] = read_nums
    context['today_hot_dat'] = get_today_hot_data(blog_content_type)
    context['yesterday_hot_dat'] = get_yesterday_hot_data(blog_content_type)
    context['week_hot_dat'] = week_hot_dat

    return render_to_response('home.html', context)

