# Purpose: Dockerfile for exercise 1.7
FROM ubuntu:22.04

# Set the working directory
WORKDIR /usr/src/app

# Install the necessary packages
RUN apt-get update && apt-get install -y curl

# Copy the script to the working directory
COPY script.sh .

# Change the permissions of the script
RUN chmod +x script.sh

# Run the script on container start
CMD ./script.sh