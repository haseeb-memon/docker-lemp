#!/usr/bin/env bash
########################################################################################################################
set -e
########################################################################################################################
########################################################################################################################
[ ! -z "${PHP_HOST}" ]          && sed -i "s/PHP_HOST/${PHP_HOST}/"             /etc/nginx/conf.d/default.conf
[ ! -z "${PHP_PORT}" ]          && sed -i "s/PHP_PORT/${PHP_PORT}/"             /etc/nginx/conf.d/default.conf
[ ! -z "${NGINX_PORT}" ]        && sed -i "s/NGINX_PORT/${NGINX_PORT}/"         /etc/nginx/conf.d/default.conf
[ ! -z "${PROJECT_URL}" ]       && sed -i "s/PROJECT_URL/${PROJECT_URL}/"       /etc/nginx/conf.d/default.conf
[ ! -z "${PROJECT_DOMAIN}" ]    && sed -i "s/PROJECT_DOMAIN/${PROJECT_DOMAIN}/" /etc/nginx/conf.d/default.conf
[ ! -z "${PROJECT_ROOT}" ]      && sed -i "s~PROJECT_ROOT~${PROJECT_ROOT}~"     /etc/nginx/conf.d/default.conf
########################################################################################################################
#chown -R nginx:nginx /etc/nginx/ /etc/nginx/ssl/ /var/cache/nginx/ /var/log/nginx/ /var/www/html
nginx -t;
nginx -g 'daemon off;'
echo 'nginx is running';
########################################################################################################################