from django.shortcuts import render,redirect
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse
from .forms import OfficerForm
from  .models import Officer
from strip.models import Strip
from django.contrib import messages
from strip.forms import StripForm

# Create your views here.

def cheack(strip):
    cheack = Strip.objects.filter(strip_name = strip) 
    print(cheack)
    if  not  cheack:
        return False
    else:
        return True
    

def officer(request):

    if request.user.is_authenticated == True:
        my_offi = Officer.objects.order_by('-uploaded_at')
        s = Strip.objects.all()
        offi =  OfficerForm(request.POST or None)
        # if Strip.objects.filter(Strip.strip_name=Officer.).exists():
        if request.method == "POST" :
            offi =  OfficerForm(request.POST or None)
            st = StripForm(request.POST or None)
            # if Strip.objects.filter().exists:
            if offi.is_valid():
                rp_name = offi.cleaned_data['rp_name']
                rp_service_number = offi.cleaned_data['rp_service_number']
                badge = offi.cleaned_data['badge']
                strip = offi.cleaned_data['strip']
                rank = offi.cleaned_data['rank']


                temp = Officer(rp_name=rp_name,rp_service_number=rp_service_number,badge=badge,strip=strip,rank=rank)
                res = cheack(strip)
                print(res)
                if res == True:
                    temp.save()
                    return redirect('officer')
                else:
                    messages.warning(request,"Strip is Invalid!")
                    
                    return redirect('officer')
                # print(strip)
                # print(cheack)
                
        
       
        return render(request,'officer.html' , {'my_offi':offi , 'r_o':my_offi} )
    
    else:
         return redirect('/accounts/login')