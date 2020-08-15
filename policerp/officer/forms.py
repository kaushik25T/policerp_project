from django import forms
from .models import Officer

class OfficerForm(forms.ModelForm):
    class Meta:
        model = Officer
        fields = ['rp_name', 'rp_service_number', 'badge' , 'strip' , 'rank',]

        widgets = {
            'rp_name': forms.TextInput(attrs={'class':'form-control'}),
            'rp_service_number': forms.NumberInput(attrs={'class':'form-control'}),
            'badge': forms.TextInput(attrs={'class':'form-control'}),
            'strip': forms.TextInput(attrs={'class':'form-control'}),
            'rank': forms.TextInput(attrs={'class':'form-control'}),
        }

    
    