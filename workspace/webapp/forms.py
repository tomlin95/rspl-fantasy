
from django import forms
from .models import User, Teams
from django.contrib.auth.forms import AuthenticationForm 

# Create yourforms here.

class RegisterForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ('name', 'user_name','email','password')
     #profile_picture =  forms.FileField()
     
class FormationForm(forms.Form):
    CHOICES = (('Formation 1', 'Formation 1'),('Formation 2', 'Formation 2'),('Formation 3', 'Formation 3'),)
    Select = forms.ChoiceField(choices=CHOICES)
   #select = forms.CharField(widget=forms.Select(choices=CHOICES))

class CreateTeamForm(forms.Form):
   class Meta:
        model = Teams
        fields = ('name', 'formation','webapp_players','user_id')
        

                               