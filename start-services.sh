#!/bin/bash

echo $ID > /var/www/ID.txt
echo $SECRET > /var/www/SECRET.txt
echo $DOMAIN > /var/www/DOMAIN.txt

/etc/init.d/apache2 start
tail -f /var/log/apache2/*
