from flask import render_template, url_for, flash, redirect
from website import app
from website.models import User
from website.forms import RegistrationForm, LoginForm



@app.route('/')
@app.route('/home')
def home():
    return render_template('home.html')

@app.route("/about")
def about():
	return "<h1> ABOUT PAGE!</h1>"

@app.route("/login", methods=['GET', 'POST'])
def login():
	form = LoginForm()
	if form.validate_on_submit():
		if form.email.data == 'admid@blog.com' and form.password == 'passwordTEMP': 
			flash(f'You have been logged in!', 'success')
			return redirect(url_for('home'))
		else:
			flash(f'Sorry, your password was incorrect. Please double-check your password.', 'danger')

	return render_template('login.html', title='Login', form=form)

@app.route("/register", methods=['GET', 'POST'])
def register():
	form = RegistrationForm()
	if form.validate_on_submit():
		flash(f'Account Created for {form.username.data}!', 'success')
		return redirect(url_for('home'))
	return render_template('register.html', title='Register', form=form)

