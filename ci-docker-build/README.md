# Step-by-step process

This project demonstrates a mini CI (Continuous Integration) pipeline using Docker and Bash scripting.
It automates the process of building a Docker image, tagging it, logging in to Docker Hub, and pushing the image to a remote container registry.

This project is designed to simulate how CI pipelines work in real DevOps environments

# Project Overview

 - Application is containerized using Docker

 - Docker image build and push is automated using a Bash script

 - Image is pushed to Docker Hub

 - Mimics CI behavior using ``` set -e ``` to stop on failure

# Technologies Used

 - Docker

 - Bash (Shell Scripting)

 - Python

 - Docker Hub (Image Registry)

# Project Structure
```
        ci-docker-build/
           |
           |-- app/
           |    |
           |    |-- Dockerfile
           |    |-- app.py
           | 
           |-- build.sh

```

# Dockerfile
```
FROM python:3.10-alpine
WORKDIR /app
COPY app.py .
CMD ["python", "app.py"]
```

 # app.py
 ```
print("Hey, you have successfully image is pushed to Dockerhub.")
```

# build.sh (bash file)
```
#!/bin/bash

set -e #to stop the script if any command fails.

echo " building the image "
docker build -t ci-docker ./app 

echo " Tagging the docker image "
docker tag ci-docker praneethkumar27/ci-docker:latest    #here, praneethkumar27 is my dockerhub username, while tagging give you're docker_username

echo " login to DockerHub "
docker login -u #docker_username -p #docker_password

echo " push the image into dockerhub "
docker push praneethkumar27/ci-docker:latest

echo " Successfully image is pushed into DockerHub "

```
# Process to run the project

1. Clone the repository
   ```
   git clone https://github.com/praneeth143a/Docker-projects/ci-docker-build
   cd ci-docker-build
   ```

2. Make script executable
   ```
   chmod +x build.sh
   ```
3. Run the script
   ```
   ./build_and_push.sh
   ```

4. Run the Docker image
   ```
   docker run praneethkumar27/ci-test-app
   ```

# Key Learnings

 - Automating Docker builds using shell scripts

 - Image tagging and versioning

 - Pushing images to Docker Hub

 - Understanding CI concepts like fail-fast execution

 - Hands-on practice with Docker-based CI pipelines

