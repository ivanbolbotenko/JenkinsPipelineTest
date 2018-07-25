FROM alpine:3.7

# VERSIONS
ENV ALPINE_VERSION=3.7 \
    PYTHON_VERSION=2.7.14

COPY validator.txt /validator.txt

RUN mkdir /project
RUN mkdir /tests
RUN apt-get update && apt-get install -y pip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"]