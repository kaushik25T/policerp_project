from django.db import models

# Create your models here.


class Officer(models.Model):
    rp_name = models.CharField(max_length=30)
    rp_service_number=models.IntegerField()
    badge=models.CharField(max_length=30)
    strip = models.CharField(max_length=30)
    rank = models.CharField(max_length=30)
    

    uploaded_at = models.DateTimeField(auto_now_add=True,null=True)
