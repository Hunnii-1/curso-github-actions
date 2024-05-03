#!/bin/bash
# Script to configure testing environment

# Variables from environment or default
DEBUG=${DEBUG:-false}
MAX_CONNECTIONS=${MAX_CONNECTIONS:-100}
TIMEOUT=${TIMEOUT:-1.5}
ENV_ID=${ENV_ID:-"abc123"}  # Default is a simple hex string

echo "Configuring testing environment..."

# Check if ENV_ID is a valid hex number
if [[ $ENV_ID =~ ^[0-9a-fA-F]+$ ]]; then
    echo "Environment ID is valid."
else
    echo "Error: Environment ID is not a valid hex number."
    exit 1
fi

# Check for null values
if [[ -z $DEBUG || -z $MAX_CONNECTIONS || -z $TIMEOUT || -z $ENV_ID ]]; then
    echo "Error: One or more configuration values are null."
    exit 1
fi

echo "Debug Mode: $DEBUG"
echo "Maximum Connections: $MAX_CONNECTIONS"
echo "Timeout: $TIMEOUT seconds"
echo "Environment ID: $ENV_ID"

# More configuration steps can be added here