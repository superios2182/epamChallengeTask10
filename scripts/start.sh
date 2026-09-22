#!/bin/bash
cd /home/ec2-user/flask-app
# Запускаем Flask в фоновом режиме на 8000 порту в соответствии с Target Group
nohup python3 -m flask run --host=0.0.0.0 --port=8000 > /dev/null 2>&1 &
