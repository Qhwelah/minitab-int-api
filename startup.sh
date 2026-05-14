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

# docker build -t minitab-api .

# docker run --name api-app -p 80:80 -d minitab-api:latest