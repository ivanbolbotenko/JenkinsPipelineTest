FROM python:3.6-alpine

# VERSIONS
ENV ALPINE_VERSION=3.7 \
    PYTHON_VERSION=2.7.14

COPY validator.txt /validator.txt

RUN mkdir /project
RUN mkdir /tests

ENTRYPOINT ["/bin/bash"]