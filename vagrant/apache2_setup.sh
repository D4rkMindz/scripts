#!/bin/bash
# RUN AS SUDO
#
# Name:         Vagrant Requirements Setup
# Call:         $ sudo ./apache2_setup.sh
#               $ sudo wget -O https://github.com/D4rkMindz/scripts/blob/master/vagrant/apache2_setup.sh | bash
# Description:  This script is to install all requirements 
#               via Linux bash to properly use Vagrant
#               To see "Call" to run this script to setup vagrant like described on 
#               https://lernjournal.d4rkmindz.ch/doku.php/installationen:vagrant (german) 
# Autor:        Björn Pfoster
# Version:      1.0.1
# Datum:        2018.06.11

# Update
sudo apt-get update && sudo apt-get -y dist-upgrade

# Install system tools
sudo apt-get -y install htop ncdu lynx ntp unzip #ccze

# Install Apache
sudo apt-get -y install apache2
sudo a2enmod rewrite ssl headers
sudo service apache2 restart

# Install MySQL, set MySQL root password
sudo apt-get -y install mysql-server mysql-client

# Install PHP 7.2
sudo apt-get -y install php7.2 libapache2-mod-php7.2 php7.2-mysql php7.2-curl php7.2-gd php7.2-intl php7.2-mcrypt php7.2-sqlite3 php7.2-mbstring php-gettext

# Symlink public folder to vagrant
sudo rm -rf /var/www/html
sudo ln -s /vagrant /var/www/html
