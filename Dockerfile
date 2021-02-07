FROM ubuntu:latest

USER root

RUN apt-get update  \
    && apt-get -y install curl gnupg \
    && curl -sL https://deb.nodesource.com/setup_15.x | bash - \
    && apt-get -y install nodejs \
    && npm install -g ts-node \
    && npm install -g mocha\
    && npm install -g gulp