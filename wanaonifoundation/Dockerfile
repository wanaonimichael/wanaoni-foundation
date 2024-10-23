FROM python:3.11.9-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
CMD ["gunicorn", "wanaonifoundation.asgi:application", "-k", "uvicorn.workers.UvicornWorker"]

