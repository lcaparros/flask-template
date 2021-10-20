FROM python:3.8-slim

COPY ./app /srv/flask_app

WORKDIR /srv/flask_app

RUN apt -y update && \
    apt -y install nginx python3-dev build-essential && \
    pip install -r requirements.txt --src /usr/local/src

COPY uwsgi.ini /srv/flask_app/uwsgi.ini
COPY startup.sh /srv/flask_app/startup.sh
COPY nginx.conf /etc/nginx

RUN chmod +x ./startup.sh

VOLUME ["/srv/flask_app/logs"]

CMD ["./startup.sh"]