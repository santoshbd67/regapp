# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install
# Install bcrypt module
RUN npm install bcrypt
# Copy the backend files
COPY backend/ ./backend

# Copy the frontend files
COPY frontend/ ./frontend

# Expose the application port
EXPOSE 3000

# Define the command to run the application
CMD ["node", "backend/app.js"]

