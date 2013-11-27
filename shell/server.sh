#!/bin/sh

# Server-setup 

echo "\n ########----########  START SERVER-SETUP  ########----########"

# Before installation need to up-to-date
aptitude update


echo "\n Installing Apache............"
apt-get install -y apache2
# Configure apache
a2enmod rewrite
echo "\n ####----####  Installed Apache  ####----####"


echo "\n Installing PHP............ "
apt-get install -y php5 php5-curl php5-mcrypt php5-mysql php5-gd php5-xdebug
echo "\n ####----####  Installed PHP  ####----####"


echo "\n Installing MySql............"
## configure MySql Server
echo 'mysql-server- mysql-server/root_password password password' | debconf-set-selections
echo 'mysql-server- mysql-server/root_password_again password password' | debconf-set-selections

apt-get install -y mysql-server

echo "\n ####----####  Installed MySql  ####----####"


echo "\n ########----########  END SERVER-SETUP  ########----########"

