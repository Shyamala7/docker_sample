FROM python:3.6.5

ENV PYTHONUNBUFFERED 1
#ENV DJANGO_ENV=prod
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
COPY . /code
RUN pip3 install -r requirements.txt
ADD . /code/
VOLUME /code
WORKDIR /code

EXPOSE 8000

