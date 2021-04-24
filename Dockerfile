FROM python:3.7.2-slim

COPY . /udacity5
WORKDIR /udacity5

RUN pip install -r requirements.txt


ENTRYPOINT ["gunicorn","-b",":8080","main:APP"]
