from flask import Flask
import os

app = Flask(__name__)

# Глобальный флаг для имитации поломки сервера
is_healthy = True

@app.route('/')
def hello():
    global is_healthy
    if not is_healthy:
        return "Internal Server Error", 500
    return "Hello from the environment ngt8zi57!"

@app.route('/break')
def break_app():
    global is_healthy
    is_healthy = False
    return "Application disrupted! Health checks will now fail."

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
