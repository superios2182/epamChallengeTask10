#!/bin/bash
# Останавливаем старый процесс, если он есть
pkill -f "flask run" || true

# Устанавливаем Python и pip
yum update -y
yum install -y python3 pip

# Переходим в директорию и ставим зависимости
cd /home/ec2-user/flask-app
pip3 install -r requirements.txt