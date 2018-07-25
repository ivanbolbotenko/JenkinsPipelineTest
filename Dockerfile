FROM ubuntu:xenial

COPY validator.txt /validator.txt

RUN mkdir /project
RUN mkdir /tests

ENTRYPOINT ["/bin/bash"]