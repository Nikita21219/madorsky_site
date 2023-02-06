#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --ansi never"
DOCKER="/usr/bin/docker"

cd /home/nikita/madorsky_site/
$COMPOSE run certbot renew --dry-run && $COMPOSE kill -s SIGHUP nginx

