# Use the official Node.js 16 image as base
FROM node:16

# Install Truffle globally
RUN npm install -g truffle

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose port (if needed)
# EXPOSE 3000

# Command to start your application
CMD [ "npm", "start" ]
