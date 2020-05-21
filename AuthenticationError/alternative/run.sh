#!/bin/bash

# Run MariaDB container
docker run -e MYSQL_ROOT_PASSWORD=admin -e MYSQL_DATABASE=wordpress --name ncswplikebuttondb -d mariadb:latest


# Run WordPress container
docker run -e WORDPRESS_DB_PASSWORD=admin --name ncswplikebutton --link ncswplikebuttondb:mysql -p 8080:80 -v "$PWD/../plugins":/var/www/html/wp-content/plugins:z -d  wordpress

