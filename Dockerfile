# Use Node.js base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package files
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy rest of the application
COPY . .

# Expose port (if applicable)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
