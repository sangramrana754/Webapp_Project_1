# Use official Node.js image from the Docker Hub
FROM node:18-alpine

# Install http-server globally
RUN npm install -g http-server

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory to the container's /app directory
COPY . .

# Expose port 8080 to make the app accessible from outside the container
EXPOSE 8080

# Run http-server to serve the app on port 8080
CMD ["http-server", "-p", "8080"]
