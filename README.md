# Docker Projects 🐳

Docker Projects is a hands-on collection of Docker example projects created as part of my DevOps learning journey.
This repository is designed to help beginners and aspiring DevOps engineers understand essential Docker concepts through real, practical examples.

# Table of Contents

 - Overview

 - Projects Included

 - Prerequisites

 - How to Use

 - What You’ll Learn

 - License

# Overview

This repository contains several Docker projects demonstrating core Docker features and workflows.
Each project includes Dockerfiles and simple examples to build, run, and manage containerized applications.

# Projects Included

The following folders contain Docker practice material:

| Project            | Description                                          |
| ------------------ | ---------------------------------------------------- |
| `my-first-image`   | A basic Docker image example                         |
| `greetpage`        | Simple web page served from a Docker container       |
| `docker-flask-app` | Flask (Python) app containerized with Docker         |
| `ci-docker-build`  | CI example for Docker builds (*GitHub Actions/CICD*) |

# Prerequisites

Before you begin, make sure you have:

 - Docker installed (Docker Desktop or Docker Engine)

 - Basic familiarity with command line/terminal(Ubuntu)

 - Git (optional, for cloning the repo)

 # How to Use
1. If you want all projects to your local. Then, clone the repository.
   ```
   git clone https://github.com/praneeth143a/Docker-projects.git
   cd Docker-projects
   ```

2.  Now, Build the image.
    Ex: we are building greetpage image.
    ```
    cd greetpage
    docker build -t greetpage .
    ```

3.  Now, run the Container.
    ```
    docker run -p 8080:8080 greetpage
    ```

4.  Open your browser and navigate to http://localhost:8080 to see the app running(if applicable in your local machine)

# What You’ll Learn

This repository covers core Docker topics:

 - Building Docker images using Dockerfile

 - Managing containers

 - Networking between containers

 - Using volumes for data

 - Using Docker in CI workflows

 - Containerizing Python apps

# License

This project is licensed under the MIT License — see the LICENSE file for details.
