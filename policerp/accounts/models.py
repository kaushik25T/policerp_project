from django.db import models
# from django.contrib.auth.models import AbstractUser

from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver


# from django.contrib.auth.admin import UserAdmin
# from django.contrib.auth.forms import UserChangeForm

class Key(models.Model):
    license_key = models.CharField(max_length=12,primary_key=True,default=True)
   

class Myuser(models.Model):

    user = models.OneToOneField(User, on_delete=models.CASCADE)
    lkey= models.CharField(max_length=20,unique=True,null=True)
  

 

# @receiver(post_save, sender=User)
# def create_user_profile(sender, instance, created, **kwargs):
#     if created:
#         Myuser.objects.create(user=instance)

# @receiver(post_save, sender=User)
# def save_user_profile(sender, instance, **kwargs):
#     instance.Myuser.save()
    

