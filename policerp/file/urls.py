from django.urls import path , include
# from .views import delete

from . import views

urlpatterns = [
    path('file',views.file,name='file'),
    path('file/<int:id>/delete', views.delete,name='delete'), 
    
]