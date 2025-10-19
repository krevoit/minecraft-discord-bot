# Use official Node.js LTS image
FROM node:20-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files first for caching
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the source code
COPY src ./src
COPY LICENSE README.md ./

# Expose the port if your bot uses any (optional)
# EXPOSE 3000

# Start command (uses npm start or node .)
CMD ["npm", "start"]
