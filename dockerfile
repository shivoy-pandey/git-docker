FROM registry.access.redhat.com/ubi9/ubi
RUN yum -y update && yum -y install nginx && yum clean all
COPY index.html /usr/share/nginx/html
EXPOSE 8080/tcp
CMD ["nginx", "-g", "daemon off;"]
