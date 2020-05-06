FROM nginx
ADD docker/conf/vhost.conf /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
WORKDIR /var/www/laravel-docker
