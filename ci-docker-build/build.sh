#!/bin/bash

set -e   #to stop script on error

#we can use variables also for easy script

#DOCKER_USERNAME="praneethkumar27"
#DOCKER_IMAGE="ci-test-app"
#IMAGE_TAG="latest"
FULL_IMAGE_NAME="praneethkumar27/ci-test-app"


echo "build the docker image"
docker build -t ci-test-app ./app

echo "tag the docker image"
docker tag ci-test-app praneethkumar27/ci-test-app

echo "login into docker"
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"

echo "push the image to docker hub"
docker push praneethkumar27/ci-test-app

echo "image pushed successfully: $FULL_IMAGE_NAME"
