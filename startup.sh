#!/bin/bash

if [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Starting api service on port $1"
else
    echo "ERROR: Received argument '$1' which is not a positive integer. Please run script again with a valid integer port number."
fi

# docker build -t minitab-api .

# docker run --name api-app -p 80:80 -d minitab-api:latest