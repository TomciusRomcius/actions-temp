# Base image
FROM node:20-alpine

# Set working directory
WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 3000

# Start the application in production mode
CMD ["npm", "start"]