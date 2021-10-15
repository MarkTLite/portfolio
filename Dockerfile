FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
COPY index.php /var/www/html/
EXPOSE 80
#CMD ["nginx","-g","daemon off;"] faied
CMD ["/bin/bash", "-c", "sudo nginx -g 'daemon off;'"]
