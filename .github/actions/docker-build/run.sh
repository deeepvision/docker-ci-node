#!/bin/sh

set -e
set -u

echo "Executing Docker action"
cd /github/workspace

docker login docker.pkg.github.com -u sergsadovoi -p $GITHUB_TOKEN
docker build -t docker.pkg.github.com/deeepvision/docker-ci-node/ci-node .
docker push docker.pkg.github.com/deeepvision/docker-ci-node/ci-node
