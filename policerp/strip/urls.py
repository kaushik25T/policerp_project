from django.urls import path , include

from . import views

urlpatterns = [
    path('strip',views.strip,name='strip'),
    
]