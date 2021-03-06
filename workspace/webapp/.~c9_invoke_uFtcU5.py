from django.http import HttpResponse , HttpResponseRedirect
from django.shortcuts import render,render_to_response, redirect
from .forms import RegisterForm, FormationForm, CreateTeamForm
from django.utils import timezone
from .models import Players,Teams,User, Matches, Results
from django.db.models import F
import json



from django.http import *
from django.shortcuts import render_to_response,redirect
from django.template import RequestContext
#from birthdayreminder.models import *
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from django.shortcuts import render
from django.contrib.auth.decorators import login_required





# register your views here.
teamnum = 0
user_players = []
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
            #global teamnum 
           
            #team = Teams.objects.latest('id')
            #global teamnum
            #teamnum = team.id + 1
            
            print(form.cleaned_data)
            user = form.save(commit=False)
            user.balance = 1000000.00
            user.weekly_score = 0
            user.total_score = 0
           

            user.created_at = timezone.now()
            user.save()
            team =  Teams()
            team.user_id = user.id
            team.save()
            
            user = User.objects.get(id = user.id)
            user.team_number =  team.id
            user.save()
            teamnum = team.id
            # redirect to a new URL:
            form = FormationForm()
            return render(request, 'webapp/team/formation.html', {'form':form, 'user_id':user.id})
            #return HttpResponseRedirect('/team/formation/' )

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
            if form.cleaned_data["Select"] == 'Formation 1':
                formation = 1
            elif form.cleaned_data["Select"] == 'Formation 2':
                formation = 2
            else:
                formation = 3
          
            balance =  1000000
            # redirect to a new URL:
            all_entries = Players.objects.all()
            user_players = 0
            player_count = 1
            return render(request, 'webapp/team/select_players.html', {'user_id': request.POST['user_id'], 'gk': 0 , 'd': 0, 's': 0 , 'm': 0,'player_count':player_count, 'balance': balance, 'formation': formation, 'players': all_entries, 'user_players': user_players, 'user_player_list': []})
            
     else:
        form = FormationForm()

     return render(request, 'webapp/team/formation.html', {'form': form})


def add_player(request):

    if request.method == 'POST':
     
      formation = int(request.POST['formation'])
    
      if formation == 1:
        gk = 1
        m = 3
        d = 4
        s = 3
      elif formation == 2:
        gk = 1
        m = 4
        d = 4
        s = 2
      else:
        gk =1
        m = 4
        d = 5
        s =1
        
      player_object =  Players.objects.get(id=int(request.POST['player_id']))
      print (player_object.price)
     
      balance = float(request.POST['balance']) - player_object.price
      
      print(balance)
      player_count = (int(request.POST['player_count']))
      print ("player count is " )
      print(player_count)
      
      if player_count <= 14 and balance >= 0:
         print("ITS A POST")
         if player_object.position == 'GK' and int(request.POST['gk']) < gk:
             user_players.append(int(request.POST['player_id']))
         
             user_player_list = []
             
             print(user_players)
             for u in user_players:
                 user_player_list.append(Players.objects.get(id=u))
             player_count = int(request.POST['player_count']) + 1
             all_entries = Players.objects.all()
            
             gk = int(request.POST['gk']) +  1
             return render(request, 'webapp/team/select_players.html', {'user_id': request.POST['user_id'],'gk': gk, 'd':int(request.POST['d']), 's': int(request.POST['s']), 'm':int(request.POST['m']),'player_count':player_count,'balance': balance, 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list':user_player_list})
   
         elif player_object.position == 'D' and int(request.POST['d']) < d:
             user_players.append(int(request.POST['player_id']))
         
             user_player_list = []
             
             print(user_players)
             for u in user_players:
                 user_player_list.append(Players.objects.get(id=u))
             player_count = int(request.POST['player_count']) + 1
             all_entries = Players.objects.all()
            
             d = int(request.POST['d']) + 1
             return render(request, 'webapp/team/select_players.html', {'user_id': request.POST['user_id'],'gk': int(request.POST['gk']), 'd':d ,'s': int(request.POST['s']), 'm':int(request.POST['m']),'player_count':player_count,'balance': balance, 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list':user_player_list})
        
 
         elif player_object.position == 'S' and int(request.POST['s']) < s:
             user_players.append(int(request.POST['player_id']))
         
             user_player_list = []
             
             print(user_players)
             for u in user_players:
                 user_player_list.append(Players.objects.get(id=u))
             player_count = int(request.POST['player_count']) + 1
             all_entries = Players.objects.all()
            
             s = int(request.POST['s']) + 1
             return render(request, 'webapp/team/select_players.html', {'user_id': request.POST['user_id'],'gk': int(request.POST['gk']), 'd':int(request.POST['d']), 's': s, 'm':int(request.POST['m']),'player_count':player_count,'balance': balance, 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list':user_player_list})
         
 
 
         elif player_object.position  == 'M' and int(request.POST['m']) < m:
             user_players.append(int(request.POST['player_id']))
         
             user_player_list = []
             
             print(user_players)
             for u in user_players:
                 user_player_list.append(Players.objects.get(id=u))
             player_count = int(request.POST['player_count']) + 1
             all_entries = Players.objects.all()
            
             m = int(request.POST['m']) + 1
             return render(request, 'webapp/team/select_players.html', {'user_id': request.POST['user_id'],'gk': int(request.POST['m']), 'd':int(request.POST['d']), 's': int(request.POST['s']), 'm':m,'player_count':player_count,'balance': balance, 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list':user_player_list})
         else:
             user_player_list = []
             for u in user_players:
              user_player_list.append(Players.objects.get(id=u))
             all_entries = Players.objects.all()
             if player_object.position == 'GK':
                 position = 'Goal Keepers'
             elif player_object.position == 'M':
                 position = 'MidFielders'
             elif player_object.position == 'S':
                 position = 'Strikers'
             else:
                 position = 'Defenders'
             return render(request, 'webapp/team/select_players.html', {  'user_id': request.POST['user_id'],'gk': int(request.POST['gk']), 'd':int(request.POST['d']), 's': int(request.POST['s']), 'm':int(request.POST['m']),'notvalid': 1, 'message': 'You cannot select anymore ' + position , 'player_count': int(request.POST['player_count']),'balance': float(request.POST['balance']), 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list': user_player_list})

     
     
     
      elif player_count > 14 or balance <=0 :
         print("ops in here")
         user_player_list = []
       
         for u in user_players:
             user_player_list.append(Players.objects.get(id=u))
         all_entries = Players.objects.all()
         print("full")
         return render(request, 'webapp/team/select_players.html', { 'user_id': request.POST['user_id'],  'notvalid': 1, 'message': 'Oops You cannot select any more players','player_count': int(request.POST['player_count']),'balance': float(request.POST['balance']), 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list': user_player_list})
    else:
        return render(request, 'webapp/home.html')
    all_entries = Players.objects.all()
    return render(request, 'webapp/team/select_players.html', { 'user_id': request.POST['user_id'], 'formation': request.POST.get('formation'), 'players': all_entries , 'user_players': user_players})
 
def remove_player(request):
     if request.method == 'POST':
         print("ITS A POST")
         user_players.remove(int(request.POST['player_id']))
         user_player_list = []
         for u in user_players:
             user_player_list.append(Players.objects.get(id=u))
         all_entries = Players.objects.all()
         player_count = int(request.POST['player_count']) - 1
         player_object =  Players.objects.get(id=int(request.POST['player_id']))
         print (player_object.price)
         balance = float(request.POST['balance']) + player_object.price
         return render(request, 'webapp/team/select_players.html', {  'user_id': request.POST['user_id'],'player_count':player_count,'balance': balance, 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list':user_player_list})
    
     
     else:
        return render(request, 'webapp/home.html')
     all_entries = Players.objects.all()
     return render(request, 'webapp/team/select_players.html', {'user_id': request.POST['user_id'], 'formation': request.POST.get('formation'), 'players': all_entries , 'user_players': user_players})
 

def submit_players(request):
     if request.method == 'POST':
        #form = CreateTeamForm()
        print(user_players)
       # team = Teams()
        # check whether it's valid:
        if str(request.POST.get('formation')) == 'Formation 1':
            formation = 1
        elif str(request.POST.get('formation')) == 'Formation 2':
            formation = 2
        else:
            formation = 3
        print request.POST['user_id']
        user= User.objects.get(id= int( request.POST['user_id']))
        team= Teams.objects.get(id = user.team_number)
        team.user_id = user.id
        team.formation = formation
        
        team.players = '{"players": '+ str( user_players[:11] ) +' , "benchplayers":  ' + str(user_players[-3:] )+ '}'
        team.name = str(request.POST['teamname'])
        team.save()
        user.balance = float(request.POST['balance'])
        user.save()
        
        # redirect to a new URL:
        #return render(request, 'webapp/team/formation.html')
        #return render(request, 'webapp/home.html')
        return render(request, 'webapp/user/allset.html', {'user_id': user.id, 'team_id': teamnum})          
     else:
        return render(request, 'webapp/home.html')
        #return render(request,'webapp/allset.html', {'user_id': user.id, 'team_id': teamnum})
    
def user_home(request):
    update_players_score(1)
    if request.method == 'POST':
        update_weekly_score(int(request.POST['user_id']))
        update_total_score(int(request.POST['user_id']))
        user = User.objects.get(id=int(request.POST['user_id']))
        team = Teams.objects.get(id=user.team_number)
        print team.players
        players_json = json.loads(team.players)
        players = players_json['players']
        benchplayers = players_json['benchplayers']
        players_list = Players.objects.filter(id__in=players).order_by('position')
        benchplayers_list = Players.objects.filter(id__in=benchplayers).order_by('position')
       
       # lastmatch = Matches.object.get()
       # return render(request, 'webapp/home.html')
        return render(request, 'webapp/user/user_home.html', {'user': user, 'team': team, 'players_list': players_list, 'benchplayers_list': benchplayers_list} )
  
  
 
def transfer(request):
    if request.method == 'POST':
        print request.POST
        user = User.objects.get(id=int(request.POST['user_id']))
        team = Teams.objects.get(id=user.team_number)
        print team.players
        players_json = json.loads(team.players)
        players = players_json['players']
        benchplayers = players_json['benchplayers']
        players_list = []
        for u in players:
         players_list.append(Players.objects.get(id=u))
        benchplayers_list = []
        for b in benchplayers:
         benchplayers_list.append(Players.objects.get(id=b))
        
        
        return render(request, 'webapp/team/transferout.html',{'user_id': user.id, 'benchplayers_list': benchplayers_list, 'players_list':players_list})
    return

    
    

def transferout(request):
    print "in here"
    if request.method == 'POST':
        player =  Players.objects.get(id = int(request.POST['player_id']))
        user = User.objects.get(id= int(request.POST['user_id']))
        balance = user.balance + player.price
        
       
        
        all_players = Players.objects.all()
        return render(request, 'webapp/team/transferin.html', {'transfered_player_price': player.price, 'transfered_player_id': player.id, 'balance': balance,'transfered_player': player.name, 'user_id':int(request.POST['user_id']), 'all_players': all_players})
    return 

def transferin(request):
    if request.method == 'POST':
     
        player =  Players.objects.get(id = int(request.POST['player_id']))
        user = User.objects.get(id= int(request.POST['user_id']))
        tempbalance  = user.balance - float(request.POST['transfered_player_price'])
        
        user.balance = tempbalance + player.price
        user.save()
        team = Teams.objects.get(id=user.team_number)
        players_json = json.loads(team.players)
        players = players_json['players']
        benchplayers = players_json['benchplayers']
        players.remove(int(request.POST['transfered_player_id']))
        players.append(int(request.POST['player_id']))
        team.players = '{"players": '+ str( players ) +' , "benchplayers":  ' + str(benchplayers )+ '}'
      
        team.save()
        
        
        return render(request, 'webapp/team/transfersucces.html', {'user_id': user.id})
       # lastmatch = Matches.object.get()
       # return render(request, 'webapp/home.html')
        #return render(request, 'webapp/user/user_home.html', {'user': user, 'team': team, 'players_list': players_list, 'benchplayers_list': benchplayers_list} )
  
def substitute(request):
    if request.method == 'POST':
        user = User.objects.get(id= int(request.POST['user_id']))
        team = Teams.objects.get(id=user.team_number)
        players_json = json.loads(team.players)
        players = players_json['players']
        benchplayers = players_json['benchplayers']
        players_list = []
        for u in players:
         players_list.append(Players.objects.get(id=u))
        benchplayers_list = []
        for b in benchplayers:
         benchplayers_list.append(Players.objects.get(id=b))
        return render(request, 'webapp/team/substituteout.html', {'user_id': user.id, 'players_list': players_list})
    return
def substituteout(request):
    print("in here")
    print(request)
    if request.method == 'POST':
        user = User.objects.get(id= int(request.POST['user_id']))
        team = Teams.objects.get(id=user.team_number)
        players_json = json.loads(team.players)
        players = players_json['players']
        benchplayers = players_json['benchplayers']
        players_list = []
        for u in players:
         players_list.append(Players.objects.get(id=u))
        benchplayers_list = []
        for b in benchplayers:
         benchplayers_list.append(Players.objects.get(id=b))
        player = Players.objects.get(id=int(request.POST['player_id']))
        print("!!!!!!!!!!!!!!!!!!!!!!!1")
        return render(request, 'webapp/team/substitutein.html', {'user_id': user.id,'subplayername': player.name, 'subplayerid': player.id, 'benchplayers_list': benchplayers_list})
    print("q322525")
    return 

def substitutein(request):
      if request.method == 'POST':
        print(request.POST)
        user = User.objects.get(id= int(request.POST['user_id']))
        team = Teams.objects.get(id=user.team_number)
        players_json = json.loads(team.players)
        players = players_json['players']
        benchplayers = players_json['benchplayers']
        players.remove(int(request.POST['subplayerid']))
        players.append(int(request.POST['player_id']))
        benchplayers.remove(int(request.POST['player_id']))
        benchplayers.append(int(request.POST['subplayerid']))
        team.players = '{"players": '+ str( players ) +' , "benchplayers":  ' + str(benchplayers )+ '}'
      
        team.save()
        print(players)
        print ("___-------")
        print(benchplayers)
        players_list = []
        for u in players:
         players_list.append(Players.objects.get(id=u))
        benchplayers_list = []
        for b in benchplayers:
         benchplayers_list.append(Players.objects.get(id=b))
       
          
        return render(request, 'webapp/user/user_home.html', {'user': user, 'team': team, 'players_list': players_list, 'benchplayers_list': benchplayers_list} )
      return
  
def ranks(request):
    users = User.objects.all().order_by('total_score').reverse()
    return render(request, 'webapp/user/ranks.html', {'users': users})
    
    
def update_total_score(user_id):
    user = User.objects.get(id=user_id)
    team = Teams.objects.get(id=user.team_number)
    players_json = json.loads(team.players)
    players = players_json['players']
    temp_total_score = 0
    for player_id in players:
       player = Players.objects.get(id = player_id)
       temp_total_score =  temp_total_score + player.score
    user.total_score =  temp_total_score
    user.save()
    
    return 

def update_weekly_score(user_id):
    
    user = User.objects.get(id=user_id)
    team = Teams.objects.get(id=user.team_number)
    players_json = json.loads(team.players)
    players = players_json['players']
    temp_weekly_score = 0
    for player_id in players:
       player = Players.objects.get(id = player_id)
       temp_weekly_score =  temp_weekly_score + player.weekly_score
    user.weekly_score =  temp_weekly_score
    user.save()
    
    
    return 

def update_players_score(weekgiven):
    matches = Matches.objects.filter( week=weekgiven , status = 'true' , updated = 'false' )
    for match in matches:

        results = Results.objects.filter(match_id = match.id)
        for result in results:
            points =  (result.yc * -2) + (result.rc * -5) + (result.assist * 3) + (result.appearance) + (result.goal * 5) + (result.cleansheet) +  (result.own_goal * -2)
            Players.objects.filter(id=result.player_id).update(weekly_score=F('weekly_score')+ points)
            Players.objects.filter(id=result.player_id).update(score= F('score')+ points)
        Matches.objects.filter(id=match.id).update(updated='true')
         
# make sure to to change match to updated
    return 



# The name Facey, Leon Facey

def login(request):
    return render(request,"login.html")
    
