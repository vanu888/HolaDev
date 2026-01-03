# app.py
from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    # Change the text below:
    return f"🚀 SUCCESS! Version 2 is running on {os.uname()[1]}"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
