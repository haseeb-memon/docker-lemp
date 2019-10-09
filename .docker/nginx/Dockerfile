########################################################################################################################
FROM nginx:latest
########################################################################################################################
#Copy custom configs to container
COPY .docker/nginx/config/nginx.conf /etc/nginx/nginx.conf
COPY .docker/nginx/config/conf.d/default.conf /etc/nginx/conf.d/default.conf
########################################################################################################################
#Copy shell executable script to container
COPY .docker/nginx/bin/startup.sh /usr/local/bin/startup.sh
RUN ["chmod", "+x", "/usr/local/bin/startup.sh"]
########################################################################################################################
# Expose Ports
EXPOSE 80 443
########################################################################################################################
VOLUME  /var/www/html
WORKDIR /var/www/html
########################################################################################################################
# Run script on conatiner loading
ENTRYPOINT ["/usr/local/bin/startup.sh"]