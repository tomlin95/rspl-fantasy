from django.conf.urls import url 
from . import views
from django.contrib import admin
from django.contrib.auth import views as auth_views



# register your views here.
urlpatterns = [ url(r'^$', views.index, name ='index'),
                url(r'^user/register/', views.register, name ='register'),  url(r'^user/create/', views.create_user, name ='create_user'),
                url(r'^team/formation/', views.select_formation, name ='select_formation') ,
                url(r'^team/addplayer/', views.add_player, name ='add_player'),
                url(r'^team/removeplayer/', views.remove_player, name ='remove_player'),
                url(r'^team/submitplayers/', views.submit_players, name ='submit_players'),
                url(r'^user/home', views.user_home, name= 'user_home'),
                url(r'^team/player/transfer', views.transfer, name= 'transfer'),
                url(r'^team/player/out', views.transferout, name= 'transferout'),
                url(r'^team/player/in', views.transferin, name = 'transferin'),
                url(r'^team/transfer/sucess', views.transfersuccess, name = 'transfersucess'),
               
                url(r'^team/player/substitute/out', views.substituteout, name = 'substituteout'),
                url(r'^team/player/substitute/in', views.substitutein, name = 'substitutein'),
                url(r'^team/player/substitute', views.substitute, name = 'substitute'),
                url(r'^fantasy/ranks', views.ranks, name = 'ranks'),
                url(r'^league/table', views.leaguetable, name = 'leaguetable'),
                url(r'^login', views.login_user, name = 'login_user'),
                url(r'^logout', views.logout_user, name = 'logout_user'),
                url(r'^matches', views.matches, name = 'matches'),
               
                url(r'^contact', views.contact, name = 'contact'),
                url(r'^about', views.about, name = 'about'),
                url(r'^send/mail', views.sendmail, name = 'sendmail'),
    
                
               # url(r'^login/$', auth_views.login, {'template_name': 'registration/login.html'})

                ]
                
                
                
                