FROM python:3.12-slim


WORKDIR /app


COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


RUN mkdir -p /app/instance


RUN chmod 777 /app/instance


COPY . .


EXPOSE 5000


CMD ["python", "app.py"]
