# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to install dependencies
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Expose port 5000 for the Flask app
EXPOSE 5000

# Define environment variable to disable buffering (optional)
ENV PYTHONUNBUFFERED=1

# Command to run the Flask app
CMD ["python", "app.py"]
#testing manual deployment in jenkins
#testing automation in Jenkins
