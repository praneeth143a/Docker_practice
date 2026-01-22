
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Second image is working"

app.run(host="0.0.0.0", port=8080)
