from django.shortcuts import render,redirect
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse
from .forms import DocumentForm 
from  .models import FileDoc
from django.shortcuts import get_object_or_404
# Create your views here.

def file(request):

    if request.user.is_authenticated == True:
        my_res = FileDoc.objects.order_by('-uploaded_at')

        my_form = DocumentForm()
        if request.method == "POST":
            my_form =  DocumentForm(request.POST , request.FILES)
            if my_form.is_valid():
                my_form.save()
                return redirect('file')
        context1 = {
            'form' : my_form
        }
        context2 = {
            'res' : my_res
        }
        return render(request , "file.html" , {'form' : my_form , 'res' : my_res})
    else:
        return redirect('/accounts/login')


def delete(request,id):
    # d =  get_object_or_404(FileDoc, id=id)

    if request.method == "POST":
        d = FileDoc.objects.get(id=id)
        d.delete()
        return redirect('file') 
        
    
    return render(request,"file.html")
    


