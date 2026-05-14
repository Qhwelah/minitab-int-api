#!/bin/bash

# Validate port input number
if [ -z "$PORT" ]; then
    echo "ERROR: Environment variable PORT is not set. Please set PORT to some positive integer port number and run the script again."
    exit 1
elif ! [[ $PORT =~ ^[0-9]+$ ]]; then
    echo "ERROR: Received argument '$PORT' which is not a positive integer. Please run script again with a valid integer port number."
    exit 1
fi

echo "Starting api service on port $PORT"

# Building with image tag "minitab-api"
docker build -t minitab-api .

# Running with container name "api-app" on specified port number
docker run --name api-app -p $PORT:80 -d minitab-api:latest

echo "Started service name 'api-app' on port number $PORT."
echo "Go to http://localhost:$PORT/docs for the API swagger page."
echo "Run 'bash shutdown.sh' when completed to stop and delete container."