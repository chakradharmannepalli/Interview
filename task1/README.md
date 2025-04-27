# SimpleTimeService

**SimpleTimeService** is a simple microservice that provides the current timestamp and the IP address of the visitor in a JSON response. This service is designed as a Node.js application and is containerized using Docker.
task1/
├── Dockerfile
├── README.md
├── app.js
├── package-lock.json
└── package.json
## Features
- Returns a JSON response containing:
  - `timestamp`: The current date and time.
  - `ip`: The IP address of the visitor.
  
- Containerized with **Docker** and can be deployed anywhere Docker is supported.

## Prerequisites

Before running the application, make sure you have the following installed:

- [Docker](https://www.docker.com/get-started) (for containerization)
- [Node.js](https://nodejs.org/) (if you need to run locally without Docker)
- [npm](https://www.npmjs.com/) (Node.js package manager)

## Running the Application

### Option 1: Running with Docker

1. **Install Docker(Note: Please restart the system or vm after docker install)**
    ```bash
    sudo apt update
    sudo apt install docker.io -y
    sudo systemctl status docker
    sudo systemctl start docker
    sudo usermod -aG docker ubuntu
2. **After restart please check whether the docker is working or not**
     ```bash
     docker run hello-world
3. **Clone the repository** to your local machine:

   ```bash
   git clone https://github.com/chakradharmannepalli/Interview.git
   cd Interview/task1
4. **If You want to run this in venv use this or just go ahead**
   ```bash
    python3 -m venv venv

5. **Install npm**
   ```bash
   sudo apt install npm
6. **Intiate npm and install nodejs**
   ```bash
   npm init -y
   npm install express
   npm install
   npm start
   npm init -y
7. **The build and run with docker**
   ```bash
   docker build -t simple-time-service .
   docker run -d -p 3000:3000 simple-time-service
8. **Change the inbound traffic in aws security group to allow in port 3000**
9. **To check whether app is running or not**
   ```bash
   curl http://localhost:3000
  ![Screenshot 2025-04-26 213527](https://github.com/user-attachments/assets/a9007c6b-68b5-47a0-bb83-131c28eaef7d)
  ![image](https://github.com/user-attachments/assets/3e7e61c4-55ab-4194-be32-27f28eaffa37)

