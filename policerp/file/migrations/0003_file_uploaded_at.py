# Generated by Django 3.1 on 2020-08-12 13:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('file', '0002_file_file_name'),
    ]

    operations = [
        migrations.AddField(
            model_name='file',
            name='uploaded_at',
            field=models.DateTimeField(auto_now_add=True, null=True),
        ),
    ]
