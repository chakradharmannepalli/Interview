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
2. **Then Enter to the directory:**
   ```bash
   cd Interview/task1
3. **Then build the docker image:**
   ```bash
   docker build -t simple-time-service .
4. **Then run the docker (Note: If you want to change the port then change in Dockerfile and simple_time_service.py file)**
   ```bash
   docker run -p 8080:8080 simple-time-service
 ![image](https://github.com/user-attachments/assets/42bced5b-1145-4cab-ada4-8ee0bb031bac)

5. **Now check whether the sever is running or not **
   ```bash
      curl http://localhost:8080
6. **Then login into the docker to push the code to docker hub**
   ```bash
   docker login
7.** Tag the docker username**
    ```bash
    
         docker tag simple-time-service your-username/simple-time-service:latest
8. **Then push the image to the docker
   docker push your-username/simple-time-service:latest

