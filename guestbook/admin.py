from django.contrib import admin
from .models import Guestbook
# Register your models here.


@admin.register(Guestbook)
class GuestbookAdmin(admin.ModelAdmin):
    list_display = ('id', 'content', 'message_time', 'user')
