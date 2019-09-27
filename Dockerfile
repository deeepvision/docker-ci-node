FROM node:10-alpine

LABEL maintainer="s.sadovyi@deepvision.team"

ENV \
    TZ=Europe/Kiev \
    TERM=xterm \
    TS_NODE_COMPILER_OPTIONS='{ "baseUrl": "/usr/local/lib/node_modules", "typeRoots": ["/usr/local/lib/node_modules/@types"] }' \
    NODE_PATH=/usr/local/lib/node_modules

RUN \
    npm install --global typescript ts-node fs-extra bluebird @types/node @types/bluebird @types/fs-extra && \
    npm cache clean --force
