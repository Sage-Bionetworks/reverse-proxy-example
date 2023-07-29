from flask import Flask, redirect

app = Flask(__name__)

@app.route("/flask_app")
def hello_world():
    return "<p>Hello World, from Flask!</p>"
    
    
@app.route("/flask_redir")
def redir():
    return redirect("/new_location")
    
    

