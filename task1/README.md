# SimpleTimeService

This is a simple microservice that returns the current timestamp and the visitor's IP address in JSON format.

## How to Deploy

### Prerequisites
- Docker
- Git (if you want to clone the code)

### Steps to Run the Application

1. **Clone the repository (if necessary):**

   ```bash
   git clone https://github.com/chakradharmannepalli/Interview.git
   cd Interview
   cd task1
   docker build -t simple-time-service .
   docker run -p 8080:8080 simple-time-service
   curl http://localhost:8080
   docker login
   docker tag simple-time-service your-username/simple-time-service:latest
   docker push your-username/simple-time-service:latest

![image](https://github.com/user-attachments/assets/42bced5b-1145-4cab-ada4-8ee0bb031bac)

