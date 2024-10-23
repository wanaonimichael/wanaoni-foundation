FROM python:3.11.9-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose the port
EXPOSE 8000

# Start the application
CMD ["gunicorn", "wanaonifoundation.asgi:application", "-k", "uvicorn.workers.UvicornWorker"]
FROM python:3.11.9-slim
WORKDIR /app
COPY . /app
RUN pip install django channels channels_redis gunicorn
EXPOSE 8000
CMD ["gunicorn", "wanaonifoundation.asgi:application", "-k", "uvicorn.workers.UvicornWorker"]
FROM python:3.11.9-slim
WORKDIR /app
COPY . /app
RUN pip install django channels channels_redis gunicorn
EXPOSE 8000
CMD ["gunicorn", "wanaonifoundation.asgi:application", "-k", "uvicorn.workers.UvicornWorker"]

