from flask import Flask
import os

app = Flask(__name__)

app_env = os.getenv("APP_ENV", "development")

@app.route('/')
def index():
    return f'Hello, World! The environment is {app_env}'

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)

