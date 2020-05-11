from django.urls import path
from . import views

urlpatterns = [
    path('', views.guestbook, name='guestbook'),
    path('message_commit', views.message_commit, name='message_commit'),

    
]
