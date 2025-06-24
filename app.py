# from flask import Flask
# app = Flask(__name__)
# @app.route("/")
# def hello_world():
#     return "Hello, World!"
# if __name__ == "__main__":
#     app.run(debug=True)  # debug=True enables debug mode for development
from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello from Cloud Run with Flask!'

if __name__ == '__main__':
    port = int(os.environ.get("PORT", 8080))
    app.run(host='0.0.0.0', port=port)
