# STREAMING_CHUNK:Initializing install script...
#!/bin/bash
# Останавливаем старый процесс, если он есть
pkill -f "flask run" || true

# STREAMING_CHUNK:Installing system dependencies...
# Устанавливаем Python и pip
yum update -y
yum install -y python3 pip

# STREAMING_CHUNK:Preparing application directory...
# Создаем целевую директорию заранее, чтобы избежать ошибок
mkdir -p /home/ec2-user/flask-app

# STREAMING_CHUNK:Installing Python dependencies...
# Устанавливаем зависимости из текущей временной папки распаковки CodeDeploy
pip3 install -r requirements.txt
