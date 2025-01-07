# Use Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy application code to the container
COPY app.py requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get install -y curl

# Expose the application port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]




# # Use Python base image
# FROM python:3.10-slim

# # Set working directory
# WORKDIR /app

# # Copy application code to the container
# COPY app.py requirements.txt /app/

# # install curl
# RUN apt-get update && apt-get install -y curl
# # Install dependencies
# RUN pip install --no-cache-dir -r requirements.txt


# # Expose the application port
# EXPOSE 5000

# # Run the Flask app
# CMD ["python", "app.py"]
