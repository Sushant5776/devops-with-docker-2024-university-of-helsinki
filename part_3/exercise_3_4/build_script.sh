#!/bin/sh

# Check for required environment variables and arguments
if [ -z "$DOCKER_USER" ] || [ -z "$DOCKER_PWD" ] || [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo "Missing required arguments or environment variables"
  exit 1
fi

# Assign arguments to variables
GIT_REPO=$1
IMAGE_NAME=$2
TARGET_REPO=$3

# Clone the Git repository
git clone $GIT_REPO repo

# Navigate to the repository directory
cd repo

# Log in to Docker Hub
echo $DOCKER_PWD | docker login -u $DOCKER_USER --password-stdin

# Build the Docker image
docker build -t $IMAGE_NAME .

# Tag the Docker image
docker tag $IMAGE_NAME $TARGET_REPO

# Push the Docker image to the target repository
docker push $TARGET_REPO

# Log out from Docker Hub
docker logout
