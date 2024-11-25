FROM mcr.microsoft.com/devcontainers/python:1-3.12-bullseye

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "-m", "ingestion.pipeline"]
