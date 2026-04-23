from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hi, This is mini ci-test-pipeline 🚀"

if __name__ == "__main__":
    print("Server starting...")
    app.run(host="0.0.0.0", port=5000)
