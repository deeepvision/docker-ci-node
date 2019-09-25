FROM node:10-alpine

LABEL maintainer="s.sadovyi@deepvision.team"

ENV \
    TZ=Europe/Kiev \
    TERM=xterm

RUN \
    npm install --global typescript ts-node fs-extra bluebird
