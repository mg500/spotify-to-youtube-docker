#!/bin/bash

echo CLIENT_ID=$ID >> var/www/html/.env
echo CLIENT_SECRET=$SECRET >> var/www/html/.env
echo REDIRECT_URI=$DOMAIN >> var/www/html/.env

/etc/init.d/apache2 start
tail -f /var/log/apache2/*