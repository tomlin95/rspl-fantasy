
from django.db import models
from django_mysql.models import JSONField, Model


# Create your models here.

class User(models.Model):
     name = models.CharField(max_length=255)
     team_number =  models.IntegerField()
     weekly_score  = models.IntegerField()
     total_score= models.IntegerField()
     balance = models.FloatField()
     password = models.CharField(max_length=94)
     email = models.CharField(max_length=255)
     user_name = models.CharField(max_length=255)
     profile_picture = models.CharField(max_length=255)
     created_at =  models.DateField()
     updated_at = models.DateField()
     password = models.CharField(max_length=255)
     username = models.CharField(max_length=255)

class Teams(models.Model):
      name = models.CharField(max_length=255)
      user_id =  models.IntegerField()
      formation =  models.IntegerField()
      players = models.CharField(max_length=1000)
      # webapp_players = JSONField()

class Players(models.Model):
     name = models.CharField(max_length=255)
     league_team = models.CharField(max_length=255)
     score = models.FloatField()
     position = models.CharField(max_length=255)
     price = models.FloatField()
     weekly_score =  models.IntegerField()
     
class Matches(models.Model):
      team1_score =  models.IntegerField()
      team2_score  =  models.IntegerField()
      team1 = models.CharField(max_length=255)
      team2 =   models.CharField(max_length=255),
      location =  models.CharField(max_length=255)
      match_date = models.DateField()
      week =  models.IntegerField()
      status=  models.CharField(max_length=255)
      updated=  models.CharField(max_length=255)
     
class Results(models.Model):
      match_id  =  models.IntegerField()
      player_id =  models.IntegerField()
      yc  =  models.IntegerField()
      assist  =  models.IntegerField()
      goal =  models.IntegerField()
      cleansheet  =  models.IntegerField()
      appearance =  models.IntegerField()
      own_goal  =  models.IntegerField()
      rc =  models.IntegerField()

