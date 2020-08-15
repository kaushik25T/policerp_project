from django import forms
from .models import FileDoc

class DocumentForm(forms.ModelForm):
    class Meta:
        model = FileDoc
        fields = ['file_name', 'files', ]

        widgets = {
            'file_name' : forms.TextInput(attrs={'class':'form-control'}),
            'files' : forms.FileInput(attrs={'class':'form-control'}),
        }

# class Document(forms.Form):
#     file_name = forms.CharField(max_length=30)
#     files = forms.FileField()

