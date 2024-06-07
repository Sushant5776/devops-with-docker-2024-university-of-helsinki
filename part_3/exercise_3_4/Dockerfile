# Use the official Docker-in-Docker image as a base
FROM docker:latest

# Set the working directory
WORKDIR /app

# Copy the build script into the container
COPY ./build_script.sh ./build_script.sh

# Make the script executable
RUN chmod +x /app/build_script.sh

# Define the entrypoint to the script
ENTRYPOINT ["/app/build_script.sh"]