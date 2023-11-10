#!/bin/bash

# Ask the user for the Dockerfile name
read -p "Enter the Dockerfile name (default is Dockerfile): " dockerfile
dockerfile=${dockerfile:-Dockerfile}

# Ask the user for the image name
read -p "Enter the image name (default is adminjs-nestjs): " imagename
imagename=${imagename:-adminjs-nestjs}

# Build the Docker image
docker build -f $dockerfile -t $imagename .

echo "Docker image $imagename has been built successfully."
