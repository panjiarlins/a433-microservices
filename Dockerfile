# Set base image
FROM node:14-alpine

# Set working directory
WORKDIR /app

# Copy source files from local to container
COPY . .

# Set environment variables
ENV NODE_ENV=production DB_HOST=item-db

# Install dependencies and build
RUN npm install --production --unsafe-perm && npm run build

# Expose port
EXPOSE 8080

# Run app when the container starts
CMD ["npm", "start"]
