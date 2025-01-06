# Use the official Node.js image from the Docker Hub
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if it exists) into the container
COPY package*.json ./

# Install the project dependencies (this will install 'express' and other dependencies)
RUN npm install

# Copy the rest of the application code into the container
COPY SRC/ /app/

# Expose the port the app will run on
EXPOSE 3000

# Command to start the application
CMD ["node", "index.js"]
