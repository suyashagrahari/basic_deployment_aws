# Use the Node.js LTS image as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run your application
CMD ["node", "server.js"]
