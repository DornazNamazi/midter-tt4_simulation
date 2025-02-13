# Layer 1: Build the application
FROM node:latest AS builder
WORKDIR /app
COPY ./app/package*.json ./
RUN npm install
COPY ./app/ ./
RUN npm run build  # Generates /dist

# Layer 2: Serve the app with Nginx
FROM nginx

# Change the working directory to Nginx configuration
WORKDIR /etc/nginx

# Copy built files from the builder stage
COPY --from=builder /app/dist /usr/share/nginx/html

# Copy a custom Nginx config file to change the default port
COPY ./nginx.conf /etc/nginx/nginx.conf

# Expose the new port (e.g., 8080)
EXPOSE 8080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
