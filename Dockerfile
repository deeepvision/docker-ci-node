FROM node:14-alpine

LABEL maintainer="s.sadovyi@deepvision.team"

ENV \
    TERM=xterm \
    TS_NODE_PROJECT=/tsconfig.json \
    NODE_PATH=/usr/local/lib/node_modules

COPY ./rootfs /

RUN \
    apk upgrade --no-cache && \
    apk add --no-cache bash zip && \
    \
    # Install Typescript
    npm install --global \
        typescript \
        ts-node @types/node \
        fs-extra @types/fs-extra \
        bluebird @types/bluebird \
        node-fetch @types/node-fetch && \
    npm cache clean --force && \
    \
    # Install PHP with Composer
    apk add --no-cache php7 composer
