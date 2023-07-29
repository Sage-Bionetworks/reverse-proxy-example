from flask import Flask, redirect

app = Flask(__name__)

@app.route("/sign-in")
def hello_world():
    return "<p>Sign-in form</p>"
    
    
@app.route("/")
def redir():
    # this should be rewritten by apache to http://<host>/prefix_to_match/sign_in
    return redirect("http://localhost/sign-in")
    
    

