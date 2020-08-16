from django.shortcuts import render,redirect
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse
from .forms import OfficerForm
from  .models import Officer


# Create your views here.

def officer(request):

    if request.user.is_authenticated == True:
        my_offi = Officer.objects.order_by('-uploaded_at')
        offi = OfficerForm()
        if request.method == "POST":
            offi =  OfficerForm(request.POST)
            if offi.is_valid():
                offi.save()
                return redirect('officer')
        
        context = {
            'my_offi':offi
        }

        return render(request,'officer.html' , {'my_offi':offi , 'r_o':my_offi} )
    
    else:
         return redirect('/accounts/login')