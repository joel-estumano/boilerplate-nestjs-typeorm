# Use Node.js for compatibility with NestJS 11
FROM node:22-slim

# Set the working directory
WORKDIR /app

# Install security updates
RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*

# Copy essential files first to optimize caching
COPY package.json package-lock.json ./

# Install all dependencies (including dev) to ensure Husky is available
RUN npm install

# Copy the rest of the application code
COPY . .

# Start the application
CMD ["npm", "run", "start:prod"]
