# Use the official Node.js image as the base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm i

# Copy the rest of the application code
COPY . .
EXPOSE 80

# Specify the command to run when the container starts
CMD ["npm", "start"]
