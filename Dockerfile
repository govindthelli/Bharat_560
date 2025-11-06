# Use official Nginx image
FROM nginx:latest

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy all project files (HTML, CSS, JS, images)
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
