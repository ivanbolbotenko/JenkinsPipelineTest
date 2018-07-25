FROM ubuntu:xenial

COPY validator.txt /validator.txt

RUN mkdir /project
RUN mkdir /tests
RUN apt-get update && easy_install pip==8.1.1 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"]