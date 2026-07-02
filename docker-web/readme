# Step-by-Step Process

This project demonstrates a mini CI (Continuous Integration) pipeline using Docker and Bash scripting.

It automates:
  - Building a Docker image for a Flask web application
  - Running the application inside a Docker container
  - Using Nginx as a reverse proxy (via Docker Compose)
  - Exposing the application through a browser
  - This simulates a real-world CI pipeline workflow used in DevOps environments.

# Project Overview
  
  - A simple Flask web application is created
  - Application is containerized using Docker
  - Docker Compose is used to manage multi-container setup
  - Nginx acts as a reverse proxy to the Flask app
  - Application is accessed through a web browser

# Technologies Used
  
    - Docker 🐳
    - Docker Compose ⚙️
    - Flask (Python) 🐍
    - Nginx 🌐
    - Linux (Ubuntu)


# Project Structure
```
        docker-web/
     ├── app/
     │    ├── app.py
     │    ├── Dockerfile
     │    └── requirements.txt
     ├── nginx/
     │    └── default.conf
     └── docker-compose.yml

```

# Dockerfile


```
    FROM python:3.11-slim
    
    WORKDIR /app
    
    COPY requirements.txt .
    
    RUN pip install --no-cache-dir -r requirements.txt
    
    COPY . .
    
    EXPOSE 5000
    
    CMD ["python", "app.py"]
```

# app.py
    ```
    from flask import Flask
    
    app = Flask(__name__)
    
    @app.route("/")
    def home():
        return "<h1>Docker Web Project</h1><p>Hello from Flask running inside Docker 🚀</p>"
    
    if __name__ == "__main__":
        app.run(host="0.0.0.0", port=5000)
```

# requirements.txt
```
requirements.txt
```

# Nginx Configuration
    ```
    server {
        listen 80;
    
        location / {
            proxy_pass http://app:5000;
        }
    }
```

# docker-compose.yml
```

    services:
    
      app:
        build: ./app
        container_name: flask_app
    
      nginx:
        image: nginx:latest
        container_name: nginx_server
    
        ports:
          - "8080:80"
    
        volumes:
          - ./nginx/default.conf:/etc/nginx/conf.d/default.conf
    
        depends_on:
          - app
```


# Process to Run the Project

1. Navigate to Project Folder
```
cd docker-web
```

2. Build Docker Images
```docker compose build```

3. Start Containers
  ```docker compose up -d```

4. Check Running Containers
```docker ps```

5. Access Application
Open browser:
````
http://localhost:8080
```

# Notes
Ensure Docker is installed and running
Ensure port 8080 is free
If needed, change port mapping in docker-compose.yml


#Key Learnings
      - Docker containerization
      - Writing Dockerfiles
      - Docker Compose usage
      - Multi-container application setup
      - Service communication using Nginx reverse proxy
      - Port mapping and networking
      - Basic DevOps deployment workflow
      
      
      





