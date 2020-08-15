from django.urls import path , include

from . import views

urlpatterns = [
    path('officer',views.officer,name='officer'),
    
]