# Use official Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files first (better caching)
COPY package*.json ./

# Install dependencies (if any)
RUN npm install

# Copy app source code
COPY . .

# Expose app port
EXPOSE 3000

# Start the Node server
CMD ["npm", "start"]
