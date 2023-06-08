# Base image
FROM python:3.9-slim-buster

# Set working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port
EXPOSE 5000

# Set environment variables
ENV APP_HOST=0.0.0.0
ENV APP_PORT=5000
ENV REDIS_HOST=flask-redis
ENV REDIS_PORT=6379
ENV DATABASE_URI=sqlite:////tmp/test.db

# Create the database
RUN python create_db.py

# Run the application
CMD ["python", "app.py"]
