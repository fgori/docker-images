#!/bin/bash

# env variables
. build.config

# docker build
docker build --force-rm -t ${IMG_NAME}:${IMG_TAG} .
