#!/bin/bash

#build-docker.sh

set -e

# get workflow+container name
IMAGE_NAME="pgitools"

# build container
docker build -f ./Dockerfile . \
      -t $IMAGE_NAME
