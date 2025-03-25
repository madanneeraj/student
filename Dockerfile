# Use a base image (Node.js in this example)
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all project files
COPY . .

# Expose the port (if it's a web app)
EXPOSE 3000

# Define the default command
CMD ["npm", "start"]
