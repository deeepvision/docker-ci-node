FROM node:12-alpine

LABEL maintainer="s.sadovyi@deepvision.team"

ENV \
    TZ=Europe/Kiev \
    TERM=xterm \
    TS_NODE_PROJECT=/tsconfig.json \
    NODE_PATH=/usr/local/lib/node_modules

COPY ./rootfs /

RUN \
    npm install --global typescript ts-node fs-extra @types/fs-extra bluebird @types/bluebird node-fetch @types/node-fetch @types/node && \
    npm cache clean --force
