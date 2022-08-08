from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
from modules.mod_record.rd_transaction import transactions
import os

app=Flask(__name__)
app.config['DEBUG']=True

db=SQLAlchemy(app)

basedir = os.path.abspath(os.path.dirname(__file__))
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///' + os.path.join(basedir, 'models/db-contab.db')

app.register_blueprint(transactions)

@app.route('/')
def Welcome():
    return render_template('index.html')

if __name__ =='__main__':
    app.run(host='0.0.0.0', port=5000)