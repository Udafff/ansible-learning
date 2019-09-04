# https://palletsprojects.com/p/flask/
# $ env FLASK_APP=hello.py flask run
FROM python:3.7.4
LABEL maintainer="Udovichenko A."

RUN pip install --upgrade pip
RUN pip install Flask
COPY . /
ENV FLASK_APP=hello_flask.py
EXPOSE 5000
CMD flask run --host=0.0.0.0
