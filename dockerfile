# используем официальный образ python
FROM python:latest

# устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# копируем файл зависимостей
COPY requirements.txt .

# устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# копируем приложение
COPY app.py .

# запускаем приложение
CMD ["python", "app.py"]