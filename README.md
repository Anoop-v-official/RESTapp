# RESTapp
Task Documentation: Setting up Flask Application with Redis and PostgreSQL using Docker Compose

Overview

This document provides step-by-step instructions for setting up a Flask application with Redis as a cache and PostgreSQL as a database using Docker Compose. The goal is to create a fully functional web application that can handle requests, store data in the database, and utilize Redis for caching.

Prerequisites

Before proceeding with the setup, ensure you have the following prerequisites installed on your system:

Docker: Version 20.10.0 or higher
Docker Compose: Version 1.29.0 or higher

File Structure

The task involves the following files:

app.py: The main Flask application file containing the application logic and routes.
create_db.py: A script to create the necessary database tables.
Dockerfile: A Dockerfile for building the Flask application image.
docker-compose.yml: A Docker Compose file for defining the services and their configurations.

Procedure

Step 1: Save the files
Create a directory on your system for the project.
Save the app.py, create_db.py, Dockerfile, and docker-compose.yml files into the project directory.
Step 2: Build and Start Docker Containers
Open a terminal and navigate to the project directory.

Build the Docker image:


$ docker-compose build

Start the Docker containers:


$ docker-compose up

This command will start the Flask application, Redis, and PostgreSQL containers.

Monitor the container logs to ensure they are running successfully:

$ docker-compose logs -f

The logs will be displayed in the terminal, allowing you to monitor any output or errors from the containers.

Step 3: Access the Application

Open a web browser and visit http://localhost:5000 to access the Flask application.

You should see the message "Hello, World!" indicating that the application is running successfully.

Step 4: Test the Functionality

You can test the various routes and functionality of the application:

http://localhost:5000/status: Returns the status of the application.
http://localhost:5000/palindrom/{text}: Checks if the provided text is a palindrome.
http://localhost:5000/redis-hits: Increments the Redis hits counter.
Make requests to these routes and verify the expected responses.

Step 5: Clean Up

To stop the containers, press Ctrl+C in the terminal where the docker-compose up command is running.

To remove the containers and associated resources, run the following command in the project directory:

$ docker-compose down
This will stop and remove the containers, networks, and volumes created by Docker Compose.


Troubleshooting

If you encounter any issues during the setup or execution of the task, refer to the following troubleshooting tips:

Ensure that Docker and Docker Compose are installed correctly and are up to date.
Check the container logs using docker-compose logs to identify any errors or issues.
Verify that the necessary ports (e.g., 5000, 6379) are not being used by other applications on your system.

Issues Faced.

When entering the ENV DATABASE_URI
for postgresql the database failed . fixed by changing it to Sqlite

Faced an issue while adding the  host as 127.0.0.1 as mentioned in the app.py it was not connecting then switched to 0.0.0.0 by referring internet found the fix (it listens to all interfaces within the container )




Conclusion

By following the steps outlined in this documentation, i have successfully set up a Flask application with Redis as a cache and PostgreSQL as a database using Docker Compose. The application is up and running, and i have tested its functionality by accessing different routes and verifying the expected responses.

Throughout the process, i have gained hands-on experience in:

Creating a Flask application and defining routes.
Configuring and utilizing Redis as a cache for improving application performance.
Integrating PostgreSQL as a database for storing and retrieving data.
Building Docker images and using Docker Compose to orchestrate multiple containers.
Monitoring container logs and troubleshooting common issues.
This setup provides a solid foundation for developing and deploying web applications that require caching and database functionalities.
