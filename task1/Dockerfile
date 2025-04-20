# Use a lightweight version of Python
FROM python:3.12-slim

# Set a non-root user
RUN useradd -m simpleuser

# Set the working directory
WORKDIR /app

# Copy the application code into the container
COPY simple_time_service.py /app/
COPY requirements.txt /app/
RUN pip3 install flask
RUN pip install --upgrade pip 
# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Change ownership of the files to the non-root user
RUN chown -R simpleuser:simpleuser /app

# Switch to the non-root user
USER simpleuser

# Expose port 8080
EXPOSE 8080

# Run the Flask application
CMD ["python", "simple_time_service.py"]

