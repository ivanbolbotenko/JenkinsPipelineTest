FROM ubuntu:xenial

COPY validator.txt /validator.txt
COPY project /project

RUN mkdir /tests

ENTRYPOINT /bin/sh