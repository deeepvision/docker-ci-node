#!/bin/sh

set -e
set -u

echo "Executing Docker action"
cd /github/workspace

#docker login docker.pkg.github.com -u $GITHUB_DOCKER_USER -p $GITHUB_DOCKER_TOKEN
docker build -t docker.pkg.github.com/deeepvision/docker-ci-node/ci-node .
docker push docker.pkg.github.com/deeepvision/docker-ci-node/ci-node
