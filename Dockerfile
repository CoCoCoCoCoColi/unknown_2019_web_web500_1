FROM ctftraining/base_image_nginx_php_56

LABEL Organization="CTFTraining" Author="CoColi <CoColizdf@gmail.com>"

MAINTAINER CoColi@CTFTraining <CoColizdf@gmail.com>


COPY src /var/www/html

RUN  cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini \
    && sed -i -e 's/display_errors.*/display_errors = Off/' /usr/local/etc/php/php.ini \
    && mv /var/www/html/flag.sh / \
    && chmod +x /flag.sh