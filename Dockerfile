# Set the base image
FROM node:18-alpine as base

# Set the working directory
WORKDIR /src

# Copy files to the working directory
COPY package*.json ./
COPY ./*.js ./

# Set the environment variables
ENV NODE_ENV=production
ENV PORT=3001
ENV AMQP_URL="amqp://localhost:5672"

# Install the dependencies
RUN npm ci

# Expose the port
EXPOSE ${PORT}

# Run the application
CMD ["node", "index.js"]
