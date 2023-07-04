# Ubuntu latest with Java installed.
# Build image with:  docker build -t jeff-tian/ubuntu-java:v1 .
FROM ubuntu:22.10
MAINTAINER Jeff Tian, https://github.com/jeff-tian
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install curl && \
    apt-get install -y git && \
    apt-get -y install default-jre-headless && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*