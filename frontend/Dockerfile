# Use the official Node.js image as the base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY frontend/package*.json ./
RUN npm install

# Copy the frontend source code
COPY frontend/ .

# Build the React app
RUN npm run build

# Install serve to serve static files
RUN npm install -g serve

# Expose port 5000
EXPOSE 5000

# Serve the React app
CMD ["serve", "-s", "build", "-l", "5000"]

