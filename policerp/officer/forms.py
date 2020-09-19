from django import forms
from .models import Officer

class OfficerForm(forms.Form):
    rp_name = forms.CharField(max_length=100)
    rp_service_number = forms.IntegerField()
    badge = forms.CharField(max_length=100)
    strip = forms.CharField(max_length=100)
    rank = forms.CharField(max_length=100)


    # widgets = {
    #         'rp_name': forms.TextInput(attrs={'class':'form-control'}),
    #         'rp_service_number': forms.NumberInput(attrs={'class':'form-control'}),
    #         'badge': forms.TextInput(attrs={'class':'form-control'}),
    #         'strip': forms.TextInput(attrs={'class':'form-control'}),
    #         'rank': forms.TextInput(attrs={'class':'form-control'}),
    #     }

    
    