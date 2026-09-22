#!/bin/bash
cd /home/ec2-user/flask-app

# Останавливаем старые процессы python
pkill -f "python" || true

# Указываем Flask файл приложения и запускаем на порту 8000
export FLASK_APP=app.py
nohup python3 -m flask run --host=0.0.0.0 --port=8000 > /home/ec2-user/app.log 2>&1 &
