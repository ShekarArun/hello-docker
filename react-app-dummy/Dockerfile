# FROM node:20.10.0-alpine3.18
# FROM node:18.19.0-alpine3.19
FROM node:14.16.0-alpine3.13

# Add user with lower privileges than root
RUN addgroup app && adduser -S -G app app
# Switch to the newly created System user (-S option in the above command)
USER app

WORKDIR /app
# Create a data directory to persist data
RUN mkdir data

# Below line allows current user to update package json files, assuming role as user app and group node
COPY --chown=app:node package*.json ./
# COPY package*.json .

# Copy basic files for dependencies to be installed
RUN npm install

# Copy complete build context now after installing node modules
# COPY . .
COPY --chown=app:node . .

# Expose port 3000 for application to listen to events
EXPOSE 3000

# Set the starting command
CMD ["npm", "start"]