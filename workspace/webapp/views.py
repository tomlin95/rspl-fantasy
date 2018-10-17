from django.http import HttpResponse , HttpResponseRedirect
from django.shortcuts import render,render_to_response, redirect
from .forms import RegisterForm, FormationForm, CreateTeamForm
from django.utils import timezone
from .models import Players,Teams,User, Matches, Results
from django.db.models import F
import json
import datetime


from django.http import *
from django.shortcuts import render_to_response,redirect
from django.template import RequestContext
#from birthdayreminder.models import *
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from django.shortcuts import render
from django.contrib.auth.decorators import login_required




from django.core.mail import send_mail
# register your views here.
teamnum = 0
#user_players = []



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
            request.session['user_id'] = user.id
            request.session['user_name'] = user.name
            request.session['team_id'] = team.id
            request.session['user_players'] =[]
            # redirect to a new URL:
            form = FormationForm()
            return render(request, 'webapp/team/formation.html', {'form':form})
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
            user_players = []
            balance =  1000000
            # redirect to a new URL:
            all_entries = Players.objects.all()
            #user_players = 0
            player_count = 1
            return render(request, 'webapp/team/select_players.html', { 'gk': 0 , 'd': 0, 's': 0 , 'm': 0,'player_count':player_count, 'balance': balance, 'formation': formation, 'players': all_entries, 'user_players': request.session.get('user_players'), 'user_player_list': []})
            
     else:
        form = FormationForm()

     return render(request, 'webapp/team/formation.html', {'form': form})


def add_player(request):
    print("je")
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
     
   
      player_count = (int(request.POST['player_count']))
      print ("player count is " )
      print(player_count)
      
      if player_count <= 11 and balance >= 0:
        
         print("ITS A POST")
         print(request.POST)
         if player_object.position == 'GK' and int(request.POST['gk']) < gk:
             user_players = request.session.get('user_players')
             user_players.append(int(request.POST['player_id']))
             request.session['user_players'] = user_players
             user_player_list = []
             
             print(request.session.get('user_players'))
             for u in user_players:
                 user_player_list.append(Players.objects.get(id=u))
             player_count = int(request.POST['player_count']) + 1
             all_entries = Players.objects.all()
            
             gk = int(request.POST['gk']) +  1
             return render(request, 'webapp/team/select_players.html', {'gk': gk, 'd':int(request.POST['d']), 's': int(request.POST['s']), 'm':int(request.POST['m']),'player_count':player_count,'balance': balance, 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list':user_player_list})
   
         elif player_object.position == 'D' and int(request.POST['d']) < d:
             user_players = request.session.get('user_players')
             user_players.append(int(request.POST['player_id']))
             request.session['user_players'] = user_players
             user_player_list = []
             
             print(request.session.get('user_players'))
             for u in user_players:
                 user_player_list.append(Players.objects.get(id=u))
             player_count = int(request.POST['player_count']) + 1
             all_entries = Players.objects.all()
            
             d = int(request.POST['d']) + 1
             return render(request, 'webapp/team/select_players.html', {'gk': int(request.POST['gk']), 'd':d ,'s': int(request.POST['s']), 'm':int(request.POST['m']),'player_count':player_count,'balance': balance, 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list':user_player_list})
        
 
         elif player_object.position == 'S' and int(request.POST['s']) < s:
             print("111111111")
             print(request.session.get('user_players'))
             user_players = request.session.get('user_players')
             user_players.append(int(request.POST['player_id']))
             request.session['user_players'] = user_players
             user_player_list = []
             
             print(request.session.get('user_players'))
             for u in user_players:
                 user_player_list.append(Players.objects.get(id=u))
             player_count = int(request.POST['player_count']) + 1
             all_entries = Players.objects.all()
            
             s = int(request.POST['s']) + 1
             return render(request, 'webapp/team/select_players.html', {'gk': int(request.POST['gk']), 'd':int(request.POST['d']), 's': s, 'm':int(request.POST['m']),'player_count':player_count,'balance': balance, 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list':user_player_list})
         
 
 
         elif player_object.position  == 'M' and int(request.POST['m']) < m:
             user_players = request.session.get('user_players')
             user_players.append(int(request.POST['player_id']))
             request.session['user_players'] = user_players
             user_player_list = []
             
             print(request.session.get('user_players'))
             for u in user_players:
                 user_player_list.append(Players.objects.get(id=u))
             player_count = int(request.POST['player_count']) + 1
             all_entries = Players.objects.all()
            
             m = int(request.POST['m']) + 1
             return render(request, 'webapp/team/select_players.html', {'gk': int(request.POST['m']), 'd':int(request.POST['d']), 's': int(request.POST['s']), 'm':m,'player_count':player_count,'balance': balance, 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list':user_player_list})
         else:
             user_players = request.session.get('user_players')

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
             return render(request, 'webapp/team/select_players.html', {'gk': int(request.POST['gk']), 'd':int(request.POST['d']), 's': int(request.POST['s']), 'm':int(request.POST['m']),'notvalid': 1, 'message': 'You cannot select anymore ' + position , 'player_count': int(request.POST['player_count']),'balance': float(request.POST['balance']), 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list': user_player_list})

     
      elif player_count > 11 and player_count <=14  and balance >= 0:
             user_players = request.session.get('user_players')
             user_players.append(int(request.POST['player_id']))
             request.session['user_players'] = user_players
             user_player_list = []
             
             print(request.session.get('user_players'))
             for u in user_players:
                 user_player_list.append(Players.objects.get(id=u))
             player_count = int(request.POST['player_count']) + 1
             all_entries = Players.objects.all()
            
           
             return render(request, 'webapp/team/select_players.html', {'gk': int(request.POST['m']), 'd':int(request.POST['d']), 's': int(request.POST['s']),  'm':int(request.POST['m']),'player_count':player_count,'balance': request.POST['balance'], 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list':user_player_list, 'message': 2})
         
        
      elif player_count > 14 or balance <=0 :
         print("ops in here")
         user_players = request.session.get('user_players')

         user_player_list = []
         for u in user_players:
          user_player_list.append(Players.objects.get(id=u))
         all_entries = Players.objects.all()
         print("full")
         return render(request, 'webapp/team/select_players.html', {  'gk': int(request.POST['m']), 'd':int(request.POST['d']), 's': int(request.POST['s']),  'm':int(request.POST['m']), 'notvalid': 1, 'message': 'Oops You cannot select any more players','player_count': int(request.POST['player_count']),'balance': float(request.POST['balance']), 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list': user_player_list})
      else:
        
        return render(request, 'webapp/home.html')
    all_entries = Players.objects.all()
    user_players = request.session.get('user_players')
    return render(request, 'webapp/team/select_players.html', { 'formation': request.POST.get('formation'), 'players': all_entries , 'user_players': user_players})
 
def remove_player(request):
     if request.method == 'POST':
         print("ITS A POST")
         user_players = request.session.get('user_players')
         user_players.remove(int(request.POST['player_id']))
         request.session['user_players'] = user_players
       
          
       
         user_player_list = []
         for u in user_players:
             user_player_list.append(Players.objects.get(id=u))
         all_entries = Players.objects.all()
         player_count = int(request.POST['player_count']) - 1
         player_object =  Players.objects.get(id=int(request.POST['player_id']))
         print (player_object.price)
         balance = float(request.POST['balance']) + player_object.price
         print(request.session.get('user_players'))
         m = int(request.POST['m'])
         s = int(request.POST['s'])
         d = int(request.POST['d'])
         gk =int(request.POST['s'])
         if  player_object.position  == 'M':
             m = int(request.POST['m']) - 1
         elif player_object.position  == 'S':
             s = int(request.POST['s']) - 1
         elif  player_object.position  == 'D':
             d = int(request.POST['d']) -1
         else:
             gk =int(request.POST['s']) - 1
         player_count = int(request.POST['player_count']) - 1
          
         return render(request, 'webapp/team/select_players.html', {'gk': gk, 'd':d, 's': s,  'm':m, 'player_count':player_count,'balance': balance, 'formation': str(request.POST.get('formation')), 'players': all_entries , 'user_players': user_players , 'user_player_list':user_player_list})
    
     
     else:
        return render(request, 'webapp/home.html')
     all_entries = Players.objects.all()
     return render(request, 'webapp/team/select_players.html', { 'formation': request.POST.get('formation'), 'players': all_entries , 'user_players': user_players})
 

def submit_players(request):
     if request.method == 'POST':
        #form = CreateTeamForm()
        user_players = request.session.get('user_players')
        print(user_players)
       # team = Teams()
        # check whether it's valid:
        if int(request.POST.get('formation')) == 1:
            formation = 1
        elif int(request.POST.get('formation')) == 2:
            formation = 2
        else:
            formation = 3
    
        user= User.objects.get(id= request.session.get('user_id'))
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
        return render(request, 'webapp/user/allset.html', {'user_id': request.session.get('user_id'), 'team_id': teamnum})          
     else:
        return render(request, 'webapp/home.html')
        #return render(request,'webapp/allset.html', {'user_id': user.id, 'team_id': teamnum})
    
def user_home(request):
    update_players_score(1)
    
  
    if request.method == 'POST':
        update_weekly_score(request.session.get('user_id'))
        update_total_score(request.session.get('user_id'))
        user = User.objects.get(id=request.session.get('user_id'))
        
        first_person = User.objects.raw('SELECT id,  FIND_IN_SET( total_score, (SELECT GROUP_CONCAT( total_score ORDER BY total_score DESC ) FROM webapp_user )) AS rank FROM webapp_user WHERE id = ' + str(user.id))
        rank = first_person[0].rank
        team = Teams.objects.get(id=user.team_number)
        print team.players
        players_json = json.loads(team.players)
        players = players_json['players']
        benchplayers = players_json['benchplayers']
        players_list = Players.objects.filter(id__in=players).order_by('position')
        benchplayers_list = Players.objects.filter(id__in=benchplayers).order_by('position')
        formation = team.formation
        print (formation)
       # lastmatch = Matches.object.get()
       # return render(request, 'webapp/home.html')
        delta = datetime.datetime(2017, 05, 20) - datetime.datetime.now()
        print('sdd')
        print (delta.days)
        return render(request, 'webapp/user/user_home.html', {'rank':rank, 'user': user, 'team': team, 'players_list': players_list, 'benchplayers_list': benchplayers_list} )
    
    else:
       
        
        update_weekly_score( request.session.get('user_id'))
        print  int(request.GET.get('user_id', ''))
        update_total_score( request.session.get('user_id'))
        print( "dssdsdsdd")
        user = User.objects.get(id=request.session.get('user_id'))
        print user
        first_person = User.objects.raw('SELECT id,  FIND_IN_SET( total_score, (SELECT GROUP_CONCAT( total_score ORDER BY total_score DESC ) FROM webapp_user )) AS rank FROM webapp_user WHERE id = ' + str(user.id))
        rank = first_person[0].rank
        team = Teams.objects.get(id=user.team_number)
        print team.players
        players_json = json.loads(team.players)
        players = players_json['players']
        benchplayers = players_json['benchplayers']
        players_list = Players.objects.filter(id__in=players).order_by('position')
        benchplayers_list = Players.objects.filter(id__in=benchplayers).order_by('position')
       
       # lastmatch = Matches.object.get()
       # return render(request, 'webapp/home.html')
        delta = datetime.datetime(2017, 05, 20) - datetime.datetime.now()
        print('sdd')
        print (delta.days)
        formation = team.formation
        print (formation)
        return render(request, 'webapp/user/user_home.html', {'rank':rank, 'user': user, 'team': team, 'players_list': players_list, 'benchplayers_list': benchplayers_list} )
    
 
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
        
        
        return redirect('https://fantasy-joditay.c9users.io/team/transfer/sucess')
       # lastmatch = Matches.object.get()
       # return render(request, 'webapp/home.html')
        #return render(request, 'webapp/user/user_home.html', {'user': user, 'team': team, 'players_list': players_list, 'benchplayers_list': benchplayers_list} )
def transfersuccess(request):
    return render(request, 'webapp/team/transfersucces.html', {'user_id': request.session.get('user_id')})
    

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
       
          
        return render(request, 'webapp/user/user_home.html', {'delta':delta,'user': user, 'team': team, 'players_list': players_list, 'benchplayers_list': benchplayers_list} )
      return
  
def ranks(request):
    users = User.objects.all().order_by('total_score').reverse()
    return render(request, 'webapp/user/ranks.html', {'users': users})
    
def leaguetable(request):
    return render(request, 'webapp/leagueranks.html')


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
    print(matches)
    for match in matches:
        print(match) 
        results = Results.objects.filter(match_id = match.id)
        
        for result in results:
            print(result.player_id)
            player = Players.objects.filter(id=result.player_id)
            print(player[0].name)
            if player[0].position == 'S':
             points =  (result.yc * -2) + (result.rc * -5) + (result.assist * 4) + (result.appearance) + (result.goal * 5) +   (result.own_goal * -2)
            elif player[0].position == 'D':
             points =  (result.yc * -2) + (result.rc * -5) + (result.assist * 5) + (result.appearance) + (result.goal * 6) + (result.cleansheet) +  (result.own_goal * -2)
            elif player[0].position == 'M':
             points =  (result.yc * -2) + (result.rc * -5) + (result.assist * 5) + (result.appearance) + (result.goal * 5) +  (result.own_goal * -2)
            else:
             points =  (result.yc * -2) + (result.rc * -5) + (result.assist * 3) + (result.appearance) + (result.goal * 5) + (result.cleansheet) +  (result.own_goal * -2)

            Players.objects.filter(id=result.player_id).update(weekly_score=F('weekly_score')+ points)
            Players.objects.filter(id=result.player_id).update(score= F('score')+ points)
        Matches.objects.filter(id=match.id).update(updated='true')
        print(matches)
        for match in matches:
            print(match.team1)
            print(match.team2)
         
# make sure to to change match to updated
    return 

def matches(request):
    return render(request, 'webapp/team/matches.html')



# The name Facey, Leon Facey


def login_user(request):
  
    username = password = ''
    if request.POST:
        
        username = request.POST['username']
        password = request.POST['password']
        try:
            user = User.objects.get(user_name = username, password = password)
        except User.DoesNotExist:
            user = None
        #user = authenticate(username=str(username), password=str(password))

        if user is not None:
          request.session['user_id'] = user.id
          request.session['user_name'] = user.name
          return redirect('/user/home/?user_id=%s' % user.id)
        else:
          return render(request, 'registration/login.html', {'notvalid': 1})
          
    #print("in 222 here")
    return render_to_response('registration/login.html', context_instance=RequestContext(request))


def logout_user(request):
    request.session['user_id'] = None
    request.session['user_name'] = None
    request.session['user_players'] = None
    request.session['team_id'] = None
    return redirect('/')

def contact(request):
    return render(request, 'webapp/contact.html')
def about(request):
    return render(request, 'webapp/about.html')

def sendmail(request):
    send_mail(
    str(request.POST['subject']),
    str(request.POST['msg']),
    str(request.POST['email']),
    ['jodimarietaylor18@gmail.com'],
    fail_silently=False,
    )
    return render(request, 'webapp/contact.html' , {'message': 'sent'})
    return 