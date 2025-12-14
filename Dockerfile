FROM python:3.11-slim

WORKDIR /app

COPY app/main.py .
COPY build/python_class.zip .

ENTRYPOINT ["python", "main.py"]
