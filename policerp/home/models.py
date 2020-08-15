from django.db import models

# Create your models here.

class Rp(models.Model):
    rp_name = models.CharField(max_length=100)
    badge= models.CharField(max_length=100)
