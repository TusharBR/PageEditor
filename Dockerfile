# Use Node.js image for building
FROM node:23-alpine

# Set working directory in container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .


# Expose port 80
EXPOSE 5173

# Start Nginx
CMD ["npm", "run", "dev"]
