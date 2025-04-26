# SimpleTimeService

**SimpleTimeService** is a simple microservice that provides the current timestamp and the IP address of the visitor in a JSON response. This service is designed as a Node.js application and is containerized using Docker.

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

1. **Clone the repository** to your local machine:

   ```bash
   git clone https://github.com/chakradharmannepalli/Interview.git
   cd Interview/task1
2. **Install npm**
   ```bash
   sudo apt install npm
3. **Intiate npm and install nodejs**
   ```bash
   npm init -y
   npm install express
   npm install
   npm start
   npm init -y
4. **The build and run with docker**
   ```bash
   docker build -t simple-time-service .
   docker run -d -p 3000:3000 simple-time-service
5. **Change the inbound traffic in aws security group to allow in port 3000
6. **To check whether app is running or not**
   ```bash
   curl http://localhost:3000
  ![Screenshot 2025-04-26 213527](https://github.com/user-attachments/assets/a9007c6b-68b5-47a0-bb83-131c28eaef7d)
  ![image](https://github.com/user-attachments/assets/b2a656cb-9a1a-4311-bd93-9da7bcbdbf6a)

