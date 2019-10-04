from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, BooleanField, SubmitField, SelectField
from wtforms.validators import DataRequired, Length, Email, EqualTo, ValidationError
from website.models import User


class RegistrationForm(FlaskForm):
	username = StringField('Username', validators=[DataRequired(), Length(min=2, max=20)])
	email = StringField('Email', validators=[DataRequired(), Email(), Length(min=2, max=100)])
	password = PasswordField('Password', validators=[DataRequired(), Length(min=2, max=20)])
	confirm_password = PasswordField('Confirm Password', validators=[DataRequired(), EqualTo('password')])
	submit = SubmitField('Sign Up')

	myChoices = [('_Select', 'Select'), ('_Caucasian', 'Caucasian'), ('_LatinoHispanic', 'Latino/Hispanic'), ('_MiddleEastern', 'Middle Eastern'), ('_African', 'African'), ('_Caribbean', 'Caribbean'), ('_SouthAsian', 'South Asian'), ('_EastAsian', 'East Asian'), ('_Mixed', 'Mixed'), ('_Other', 'Other')]
	race = SelectField(u'Which of the following best represents your racial or ethnic heritage?', choices = myChoices, validators = [DataRequired()])

	def validate_username(self, username):
		user = User.query.filter_by(username=username.data).first()
		if user:
			raise ValidationError('That username is already taken. Please choose a different one.')
	def validate_email(self, email):
		email = User.query.filter_by(email=email.data).first()
		if email:
			raise ValidationError('That email is already taken. Please choose a different one.')
			

class LoginForm(FlaskForm):
	email = StringField('Email', validators=[DataRequired(), Email(), Length(min=2, max=100)])
	password = PasswordField('Password', validators=[DataRequired()])
	remember = BooleanField('Remember Me')
	submit = SubmitField('Login')


	

	


