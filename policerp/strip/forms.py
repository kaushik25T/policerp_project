from django import forms
from  .models import Strip

class StripForm(forms.ModelForm):
     class Meta:
        model = Strip
        fields = ['strip_name']

        widgets = {
            'strip_name': forms.TextInput(attrs={'class':'form-control'}),
         
        }
