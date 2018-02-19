FROM arm64v8/debian:9
MAINTAINER Andriy Rakhnin <docker@rakhnin.com>

RUN apt-get update && \
    apt-get install -y mongodb && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/apt/*

VOLUME ["/data/db"]

EXPOSE 27017

CMD ["mongod"]
