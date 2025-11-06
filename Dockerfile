   FROM python:3.13-slim

   WORKDIR /app

   COPY . /app




   EXPOSE 5000

   ENV PYTHONUNBUFFERED=1

   ENV FLASK_ENV=production

   CMD ["gunicorn", "--bind", "0.0.0.0:5000", "--timeout", "600", "app:app"]