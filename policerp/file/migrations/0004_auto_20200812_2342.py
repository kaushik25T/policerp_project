# Generated by Django 3.1 on 2020-08-12 18:12

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('file', '0003_file_uploaded_at'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='File',
            new_name='FileDoc',
        ),
    ]
