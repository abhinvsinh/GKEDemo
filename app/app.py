from flask import Flask
import time
import math

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello from GKE 🚀 CI/CD test"

@app.route("/load")
def load():
    end = time.time() + 5
    while time.time() < end:
        math.sqrt(123456789)
    return "CPU load generated\n"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)

