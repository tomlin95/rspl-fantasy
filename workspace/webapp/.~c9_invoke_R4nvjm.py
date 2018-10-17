from django.http import HttpResponse , HttpResponseRedirect
from django.shortcuts import render,render_to_response, redirect
from .forms import RegisterForm, FormationForm, SelectPlayersForm
from django.utils import timezone
from .models import Players
# register your views here.


def index(request):
    return render(request, 'webapp/home.html')
    
def register(request):
    form =  RegisterForm()
    return  render(request, 'webapp/user/register.html', {'form': form})

def create_user(request):
    print("Inside create user")
    print(request.method)
       # if this is a POST request we need to process the form data
    if request.method == 'POST':
        print("Method is post")
        # create a form instance and populate it with data from the request:
        form = RegisterForm(request.POST)
        # check whether it's valid:
        if form.is_valid():
            # process the data in form.cleaned_data as required
            # ...
            print(form.cleaned_data)
            user = form.save(commit=False)
            user.balance = 1000000.00
            user.created_at = timezone.now()
            user.save()
            # redirect to a new URL:
            #return render(request, 'webapp/team/formation.html')
            return HttpResponseRedirect('/team/formation/')

    # if a GET (or any other method) we'll create a blank form
    else:
        form = RegisterForm()

    return render(request, 'webapp/user/register.html', {'form': form})
    
def select_formation(request):
     if request.method == 'POST':
        print("Method is post")
        # create a form instance and populate it with data from the request:
        form = FormationForm(request.POST)
        # check whether it's valid:
        if form.is_valid():
            # process the data in form.cleaned_data as required
            # ...
            print(form.cleaned_data)
            print(form.cleaned_data["Select"])
            # redirect to a new URL:
            all_entries = Players.objects.all()
            user_players = []
            return render(request, 'webapp/team/select_players.html', {'formation': form.cleaned_data["Select"], 'players': all_entries, 'user_players': user_players})
     else:
        form = FormationForm()

     return render(request, 'webapp/team/formation.html', {'form': form})


def add_player(request):
     print(request.method)
     if request.method == 'POST':
         print("ITS A POST")
         print (request.POST.get('player_id'))
         user_players = r
     else:
         print("ITS A get")
         
         return render(request, 'webapp/home.html')
     all_entries = Players.objects.all()
     return render(request, 'webapp/team/select_players.html', {f'players': all_entries , 'user_players': user_players})
  