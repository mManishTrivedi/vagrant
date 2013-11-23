#!/bin/sh

# Server-setup 
APTITUDE_LAMP="apache2 php5 libapache2-mod-php5"

echo "\n ####----####  START UPDATING  ####----####"

# Before installation need to up-to-date
aptitude update

echo "\n ####----####  END UPDATING  ####----####"

echo "\n ####----####  START PACKAGE INSTALLATION  ####----####"

# Server Setup
apt-get install -y $APTITUDE_LAMP

echo "\n ####----####  END PACKAGE INSTALLATION  ####----####"
