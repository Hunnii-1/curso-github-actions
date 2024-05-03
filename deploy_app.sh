#!/bin/bash
# Script to deploy an application based on server name

echo "Starting deployment on $SERVER_NAME..."

if [[ $SERVER_NAME == "development" ]]; then
    echo "Deploying to Development Server..."
    # Simulate deployment commands for development
elif [[ $SERVER_NAME == "production" ]]; then
    echo "Deploying to Production Server..."
    # Simulate deployment commands for production
else
    echo "Server name not recognized. Deployment aborted."
    exit 1
fi

echo "Deployment completed on $SERVER_NAME."sit