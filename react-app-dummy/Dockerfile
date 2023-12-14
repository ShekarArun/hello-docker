FROM node:20.10.0-alpine3.18
WORKDIR /app
COPY . .
RUN npm install
# Expose port 3000 for application to listen to events
EXPOSE 3000

# Add user with lower privileges than root
RUN addgroup app && adduser -S -G app app
# Switch to the newly created System user (-S option in the above command)
USER app