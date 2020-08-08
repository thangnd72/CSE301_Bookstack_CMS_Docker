# kéo image sol.. về build với version: 0.29.3
FROM solidnerd/bookstack:0.29.3


COPY bookstack.conf /etc/apache2/sites-available/000-default.conf
COPY php.ini /usr/local/etc/php/php.ini
COPY docker-entrypoint.sh /bin/docker-entrypoint.sh


WORKDIR /var/www/bookstack
#www-data
USER 33
EXPOSE 8080

ENTRYPOINT ["/bin/docker-entrypoint.sh"]