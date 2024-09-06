# Use the official Node.js image as the base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY backend/package*.json ./
RUN npm install

# Copy the backend source code
COPY backend/ .

# Expose port 3000
EXPOSE 3000

# Start the Node.js server
CMD ["node", "index.js"]

