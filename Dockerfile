FROM node:10-alpine

LABEL maintainer="s.sadovyi@deepvision.team"

ENV \
    TZ=Europe/Kiev \
    TERM=xterm \
    TS_NODE_COMPILER_OPTIONS='{ "baseUrl": "/usr/local/lib/node_modules", "typeRoots": ["/usr/local/lib/node_modules/@types"] }' \
    NODE_PATH=/usr/local/lib/node_modules

RUN \
    npm install --global \
        typescript \
        ts-node \
        fs-extra @types/fs-extra \
        bluebird @types/bluebird \
        node-fetch @types/node-fetch\
        @types/node && \
    npm cache clean --force
