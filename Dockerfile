# Use an Nginx base image
FROM nginx:alpine
COPY index.html /usr/share/nginx/html
