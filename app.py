from flask import Flask
app = Flask(__name__)
@app.route('/')
def hello():
    retrun 'Hello  from Flask on cloud build'
