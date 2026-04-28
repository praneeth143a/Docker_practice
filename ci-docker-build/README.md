# Step-by-Step Process

This project demonstrates a mini CI (Continuous Integration) pipeline using Docker and Bash scripting.

It automates:
  - Building a Docker image
  - Tagging the image
  - Logging into Docker Hub
  - Pushing the image to a remote registry
  - Running the container automatically
This simulates how CI pipelines work in real DevOps environments.

# Project Overview
 - Application is containerized using Docker
 - Docker image build and push is automated using a Bash script
 - Image is pushed to Docker Hub
 - CI behavior is simulated using ```set -e``` (fail-fast execution)
 - Container is automatically deployed after build

# Technologies Used

 - Docker
 - Bash (Shell Scripting)
 - Python
 - Docker Hub (Container Registry)


# Project Structure
```
        ci-docker-build/
           |
           |-- app/
           |    |
           |    |-- Dockerfile
           |    |-- app.py
           | 
           ├── build.sh
           └── README.md

```

# Dockerfile
```
FROM python:3.10-alpine

WORKDIR /app

COPY app.py .

RUN pip install flask

EXPOSE 5000

CMD ["python", "app.py"]
```

 # app.py
 ```
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hi, This is mini ci-test-pipeline 🚀"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
```

# build.sh (bash file)
```
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

```


# Process to Run the Project

1. Clone the repository
   ```
   git clone https://github.com/praneeth143a/Docker-projects/ci-docker-build
   cd ci-docker-build
   ```

2. Make script executable
   ```
   chmod +x build.sh
   ```
3. Set Docker Access Token
   ```
   export DOCKER_PASSWORD=your_docker_access_token
   ```

4. Run the Build & Push Script
   ```
   ./build.sh
   ```

This will:
 - Build Docker image
 - Tag image
 - Login to Docker Hub
 - Push image

5. Run the Docker Container
   ```
   docker run -d -p 5000:5000 praneethkumar27/ci-test-app
   ```
   
6. Access the Application
   Open in browser:
   ```
    http://localhost:5000
   ```

# Notes
  - Ensure Docker is installed and running
  - Use Docker Hub Access Token, not password
  - Application must bind to 0.0.0.0
  
  - If port is busy:
    ```
    docker run -d -p 5001:5000 praneethkumar27/ci-test-app
    ```
   
# Key Learnings

 - Automating Docker builds using shell scripting
 - Docker image tagging and versioning
 - Secure authentication using environment variables
 - Pushing images to Docker Hub
 - Understanding CI concepts like fail-fast execution
 - Running containerized applications
 - Hands-on practice with Docker-based CI pipelines

