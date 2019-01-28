FROM python:3.7-alpine

COPY . /app
WORKDIR /app

RUN apk add --no-cache --virtual .pynacl_deps build-base python3-dev libffi-dev
RUN apk add openssl-dev
RUN pip install -r requirements.txt
RUN pip install https://github.com/mukulhase/WebWhatsapp-Wrapper/archive/master.zip