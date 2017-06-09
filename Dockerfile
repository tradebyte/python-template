FROM python:alpine

ARG TARGET=development

ADD . /code
WORKDIR /code
RUN pip install --no-cache-dir --upgrade -r requirements/$TARGET.txt
