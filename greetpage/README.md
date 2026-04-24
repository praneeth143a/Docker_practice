# Dockerized Greeting Web Page Deployment

## Step-by-Step Process
This project demonstrates a simple web application deployment using Docker.

It automates:
  - Serving a static HTML page using Nginx
  - Containerizing the application
  - Running the application inside a Docker container
  - Exposing the application via a browser
This simulates how containerized applications are deployed in real DevOps environments.

## Project Overview
  - Static web page is created using HTML & CSS
  - Nginx is used as a lightweight web server
  - Application is containerized using Docker
  - Container serves the webpage on a browser
  - Demonstrates basic container deployment workflow

## Technologies Used
  - Docker
  - Nginx
  - HTML & CSS

## Project Structure
```
    greetpage/
       |
       ├── Dockerfile
       └── index.html
```

##  Dockerfile
```
    FROM nginx:alpine
    
    COPY index.html /usr/share/nginx/html/index.html
    
    EXPOSE 80
```

## index.html
```
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Hello Page</title>
        <style>
            body {
                margin: 0;
                height: 100vh;
                background-color: black;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            h1 {
                color: white;
                font-size: 80px;
                font-family: Arial, Helvetica, sans-serif;
            }
        </style>
    </head>
    <body>
        <h1>Hello</h1>
    </body>
    </html>
```

# Process to Run the Project
1. Clone the Repository
   ```
     git clone https://github.com/praneeth143a/Docker-projects.git
     cd Docker-projects/greetpage
   ```

2. Build Docker Image
   ```
   docker build -t greetpage .
   ```

3. Run Docker Container
   ```
   docker run -d -p 8080:80 greet-app
   ```

4. Access the Application
   Open in browser:
   ```
   http://localhost:8080
   ```

## Key Learnings
  - Basics of Docker containerization
  - Using Nginx to serve static content
  - Port mapping (-p host:container)
  - Building and running Docker images
  - Understanding container lifecycle

## Notes
  - Ensure Docker is installed and running
  - Port 8080 should be free
  - If port is busy:
    ```
    docker run -d -p 3000:80 greet-app
    ```

## Output
After running successfully:
  - Nginx server runs inside container
  - Static HTML page is served
  - Accessible via browser   
