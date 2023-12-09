# Specify base image to build on top of
FROM node:alpine
# Copy from current directory of the image (which would be root) into a folder called 'app'
COPY . /app
# Set the working directory for subsequent instructions to the newly created 'app' directory
WORKDIR /app
# Run a command
CMD node app.js