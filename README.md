# Dockerized Node.js App

This repository demonstrates a simple Node.js app running with Docker.

## How to Build and Run

1. **Clone the repository:**

   ```bash
   git clone https://github.com/Eraybulut34/dockerized-node-app.git
   cd dockerized-node-app
   ```

2. **Build the Docker image:**

   ```bash
   docker build -t dockerized-node-app .
   ```

   This command creates a Docker image locally based on the Dockerfile. If the base image (Node.js) is not present, Docker will automatically pull it from Docker Hub.

3. **Run the Docker container:**

   ```bash
   docker run -p 3000:3000 dockerized-node-app
   ```

   This command starts the container and maps port 3000 on your machine to port 3000 in the container, allowing you to access the app at `http://localhost:3000`.

---

This version focuses on the core steps without unnecessary complexity.
