FROM python:3.11-slim

WORKDIR /app

COPY ./scripts /app/scripts
COPY ./data /app/data
COPY ./models /app/models
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "-m", "uvicorn", "scripts.api_server:app", "--host", "0.0.0.0", "--port", "8000"]

