#!/bin/bash

# Go to parent directory of the script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
cd $SCRIPT_DIR && cd ..

# Check if Docker Compose is installed
if ! command -v docker-compose &>/dev/null; then
  echo "Docker Compose could not be found"
  exit
fi

# Check if Docker Compose file exists
if [ ! -f "docker-compose.yaml" ]; then
  echo "Docker Compose file could not be found"
  exit
fi

# Start the Docker Compose task
docker compose up -d

# Echo an empty line
echo

# Check if Docker Compose task is running
if [ "$(docker-compose ps -q)" ]; then
  echo "🔥 Docker Compose task is running 🔥"
else
  echo "🚨 Docker Compose task is not running 🚨"
fi

# Echo an empty line
echo
