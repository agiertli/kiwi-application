FROM nginx
ADD cert/localhost.crt /etc/nginx/localhost.crt
ADD cert/localhost.key /etc/nginx/localhost.key
COPY html /usr/share/nginx/html
ADD conf/ssl-config.conf /etc/nginx/conf.d/default.conf
ADD html /usr/share/nginx/html
EXPOSE 80
EXPOSE 443