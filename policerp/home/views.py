from django.shortcuts import render ,redirect 
from django.http import HttpResponse
from django.contrib.auth.models import  User , auth
from django.contrib import messages
from officer.models import Officer
from file.models import  FileDoc

# Create your views here.

def home(request):
    if request.user.is_authenticated == True:
        o_count = Officer.objects.all()
        f_count = FileDoc.objects.all()
        # s_count = Officer.objects.filter('strip')
        return render(request,'home.html',{'o':o_count ,'f':f_count})
        # return render(request,'home.html')
    else:
        return redirect('accounts/login')

# def rows(request):
#     count = Officer.objects.all()
#     return render(request,'home.html',{'c':count})
