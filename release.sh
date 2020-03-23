#!/bin/bash

VERSION=$(cat version)
echo $(perl -pe 's/^((\d+\.)*)(\d+)(.*)$/$1.($3+1).$4/e' < VERSION) > version

VERSION=$(cat version)

echo "new version is: $VERSION"

docker build -t ugurozgen/fargate-ssh-alpine:$VERSION .

docker push ugurozgen/fargate-ssh-alpine:$VERSION
