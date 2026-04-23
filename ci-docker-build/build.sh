#!/bin/bash

set -e

DOCKER_USERNAME="praneethkumar27"
DOCKER_IMAGE="ci-test-app"
IMAGE_TAG="latest"
FULL_IMAGE_NAME="praneethkumar27/ci-test-app"

CONTAINER_NAME="ci-test-container"
APP_PORT=5000

echo "====================Build the docker image================="
docker build -t ci-test-app ./app

echo "=====================Tag the docker image====================="
docker tag ci-test-app praneethkumar27/ci-test-app

echo "=====================Login into docker=================="
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

echo "==================Push the image to docker hub======================"
docker push praneethkumar27/ci-test-app

echo "=================image pushed successfully======================="

echo "==================Remove old container if exists======================"
if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
    docker stop $CONTAINER_NAME || true
    docker rm $CONTAINER_NAME || true
fi

echo "==================Run the container======================"
docker run -d -p $APP_PORT:$APP_PORT --name $CONTAINER_NAME praneethkumar27/ci-test-app

echo "=================image pushed and running successfully======================="
echo "APP: http://localhost:$APP_PORT"
