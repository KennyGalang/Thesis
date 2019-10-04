from website import db, login_manager
from flask_login import UserMixin
import datetime

@login_manager.user_loader
def load_user(user_id):
	return User.query.get(int(user_id))



class User(db.Model, UserMixin):
	id = db.Column(db.Integer, primary_key = True)
	username = db.Column(db.String(10), unique=True, nullable=False)
	
	# image_file = db.Column(db.String(20), nullable=False, default='default.jpg')
	password = db.Column(db.String(60), nullable=False)
	#how object is printed when printed out
	now = datetime.datetime.now()
	dateList = str(now).split()
	date = dateList[0]	

	email = db.Column(db.String(140), unique=True, nullable=False)
	def __repr__(self):
		return f"User('{self.username}', '{self.email}'), '{self.date}'"

