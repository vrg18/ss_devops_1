FROM tiangolo/uwsgi-nginx-flask:python3.11

RUN git clone https://github.com/vrg18/flaskex /app/flaskex
COPY ./uwsgi.ini /app/uwsgi.ini
ENV STATIC_PATH /app/flaskex/static
WORKDIR /app/flaskex
RUN pip install -r requirements.txt
