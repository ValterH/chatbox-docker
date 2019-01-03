from django.urls import path
from django.contrib.auth import logout
from . import views

app_name = 'dfchatbox'
urlpatterns = [
        path('',views.index,name='index'),
        #path('updateDatabase/',views.update_db,name='update_db')
        ]
