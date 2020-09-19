from django.db import models

# Create your models here.

class Strip(models.Model):
    strip_name = models.CharField(max_length=30,unique=True)