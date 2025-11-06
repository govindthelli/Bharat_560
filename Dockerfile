FROM nginx:latest
WORKDIR /app
run rm -rf usr/share/nginx/html/*
COPY . .
copy index.html /usr/share/nginx/html/index.html
copy ./* /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"] 
