from django.shortcuts import render,redirect
from .forms import StripForm
from  .models import Strip
from officer.models import Officer

# Create your views here.
def strip(request):
     if request.user.is_authenticated == True:
          strip_form = StripForm()
          stname = Strip.objects.all()
          offi = Officer.objects.all()
          if request.method == "POST":
               strip_form =  StripForm(request.POST)
               if strip_form.is_valid():
                    strip_form.save()
                    return redirect('strip')

          return render(request,'strip.html',{'sf':strip_form,'strip':stname,'officer':offi})
     return redirect('/accounts/login')