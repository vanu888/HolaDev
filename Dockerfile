# Dockerfile
# Use a lightweight base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY app.py .

# Install dependencies directly
RUN pip install flask

# Expose the port
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
