#!/bin/bash
# Останавливаем старый процесс, если он есть
pkill -f "flask run" || true

# Устанавливаем Python и pip
yum update -y
yum install -y python3 python3-pip

# Устанавливаем зависимости из текущей папки распаковки
pip3 install -r requirements.txt

# Создаем целевую директорию для приложения на будущее
mkdir -p /home/ec2-user/flask-app
