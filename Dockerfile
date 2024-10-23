FROM python:3.12.7-alpine3.20

RUN apk update && apk add --no-cache py3-pip

ARG ANSIBLE_VERSION=2.8.6
RUN pip install ansible==$ANSIBLE_VERSION

RUN echo "grab this content" > /home/grab_this.txt

WORKDIR /ansible
