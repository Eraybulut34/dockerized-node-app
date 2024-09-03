FROM node:18 
# Use the official Node.js 18 image as the base image
WORKDIR /usr/src/app
# Set the working directory in the container to /usr/src/app

COPY package*.json ./
# Copy the package.json and package-lock.json files to the working directory

RUN npm install
# Run npm install to install the dependencies of the application

COPY . .
# Copy the source code of the application to the working directory

EXPOSE 3001
# Expose port 3000 of the container

# Run the application
CMD npm run start

