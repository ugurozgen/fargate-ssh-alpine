#!/bin/bash

VERSION=$(cat version)

docker run -d -p 2222:22 ugurozgen/fargate-ssh-alpine:"$VERSION"

ssh root@localhost -p 2222
