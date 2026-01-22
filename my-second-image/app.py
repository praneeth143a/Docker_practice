
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Docker Imaage is working"

app.run(host="0.0.0.0", port=8080)
