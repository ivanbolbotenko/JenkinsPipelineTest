FROM ubuntu:xenial

COPY validator.txt /validator.txt

RUN mkdir /project
RUN mkdir /tests
RUN apt-get update && apt-get install -y pip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"]