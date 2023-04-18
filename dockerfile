FROM ubuntu:latest
RUN apt-get update && apt-get install -y nginx && apt-get clean
COPY index.html /usr/share/nginx/html
EXPOSE 8080/tcp
CMD ["nginx", "-g", "daemon off;"]
