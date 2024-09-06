# Use an official Node.js runtime as the base image
FROM node

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies for the backend
COPY package*.json ./
RUN npm install

# Copy the entire project
COPY . .

# Build the React app
WORKDIR /app/frontend
RUN npm install
RUN npm run build

# Move back to the root directory
WORKDIR /app

# Expose port 3000
EXPOSE 3000

# Start the Node.js server
CMD ["node", "index.js"]

