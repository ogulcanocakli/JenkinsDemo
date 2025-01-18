# Base image
FROM node:18-alpine

# Working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY app/package*.json ./
RUN npm install

# Copy application code
COPY app/ .

# Expose port and define start command
EXPOSE 3000
CMD ["npm", "start"]
