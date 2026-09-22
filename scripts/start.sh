#!/bin/bash
cd /home/ec2-user/flask-app
# Запускаем Flask в фоновом режиме на 80 порту
nohup python3 -m flask run --host=0.0.0.0 --port=80 > /dev/null 2>&1 &