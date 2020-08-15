from django.db import models

# Create your models here.

class FileDoc(models.Model):
    file_name = models.CharField(max_length=30 , null=True)
    files = models.FileField()
    uploaded_at = models.DateTimeField(auto_now_add=True,null=True)

    def delete(self, *args, **kwargs):
        self.files.delete()
        super().delete(*args, **kwargs)  # Call the "real" save() method.
        