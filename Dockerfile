FROM ubuntu:xenial

COPY validator.txt /validator.txt

RUN mkdir /project
RUN mkdir /tests
RUN apt-get update && apt-get install -y \
    python-pip
ENTRYPOINT ["/bin/bash"]