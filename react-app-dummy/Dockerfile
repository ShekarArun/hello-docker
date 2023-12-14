FROM node:20.10.0-alpine3.18

# Add user with lower privileges than root
RUN addgroup app && adduser -S -G app app
# Switch to the newly created System user (-S option in the above command)
USER app

WORKDIR /app

# Copy basic files for dependencies to be installed
COPY package*.json .
RUN npm install

# Copy complete build context now after installing node modules
COPY . .
# Expose port 3000 for application to listen to events
EXPOSE 3000

# Set the starting command
CMD ["npm", "start"]