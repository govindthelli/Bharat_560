FROM nginx:latest
WORKDIR /app
run rm -rf usr/share/nginx/html/*
COPY . .
copy index.html /usr/share/nginx/html/index.html
copy styles.css /usr/share/nginx/html/styles.css
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"] 
