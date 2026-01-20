# Step-by-step process to crate a base image.

Remember this a basic image structure, need to memorize it.

```

  folder(firstimage)
    |
    |--- Dockerfile
    |
    |--- app.py

```


# Follow these steps to create your first image.

 - First, create a folder(firstimage).
   using:
   ```
     mkdir firstimage
     cd firstimage
   ```

- Then, create a docker file using command in terminal.
  ```
    vi Dockerfile
  ```
- Now, write the docker file. Basic structure of Docker file.
  ```
  
    FROM: python:3.10-apline
  
    WORKDIR /firstimage
  
    COPY app.py .
  
    CMD ["pyhton", "app.py"]

  ```
Explanation (Important to understand)

  - FROM → Base image (Python 3.10 with Alpine Linux)

  - WORKDIR → Sets working directory inside the container

  - COPY → Copies app.py from local system to container

  - CMD → Command that runs when container starts



- After, Docker file write app.py file
```
    print("Hello, How are you?")
```

- Now, we have written all required files for basic images.


# Run commands:

```

  docker build -t firstimage    // we have built the image.
  docker run firstimage        // we have succesfully the image.

```

You have successfully:

  - Created your first Docker image

  - Built it using a Dockerfile

  - Ran a container from the image
