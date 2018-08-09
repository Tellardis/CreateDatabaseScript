#!/bin/bash

mysql -uroot -proot <<MYSQL_SCRIPT
CREATE DATABASE $1;
CREATE USER '$1'@'localhost' IDENTIFIED BY '$2';
GRANT ALL PRIVILEGES ON $1.* TO '$1'@'localhost';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

echo "MySQL user created."
echo "Username:   $1"
echo "Password:   $2"
