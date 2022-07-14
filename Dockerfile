FROM islamicnetwork/php:8.0-apache-dev

WORKDIR /var/www

RUN rm -rf /var/www/html
COPY . /var/www/
COPY ./build/startup.sh /usr/local/bin/startup

RUN composer install --no-dev --prefer-dist -a -n --no-progress \
  && chown -R www-data:www-data /var/www \
  && chmod -R ug+rwX /var/www \
  && chmod 775 /usr/local/bin/startup

CMD ["startup"]