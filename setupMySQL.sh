#!/bin/bash


echo "This will set up permissions for the MySQL instance"

sudo service mysqld start

echo "Set a secure root password, remove anonymous accounts, disable remote root login"
echo "remove test database and reload priviledges"

sudo mysql_secure_installation

echo "Setting it to run automatically at bootup"
sudo chkconfig mysqld on

echo "About to setup phpMyAdmin"
sleep 5

sudo yum install php70-mbstring.x86_64 php70-zip.x86_64 -y
sudo service httpd restart

echo "Still to do is downloading phpMyAdmin"

echo "Current version is:"
echo "  https://files.phpmyadmin.net/phpMyAdmin/4.7.4/phpMyAdmin-4.7.4-all-languages.zip"

cd /var/www/html
wget https://www.phpmyadmin.net/downloads/phpMyAdmin-4.7.4-all-languages.tar.gz
tar -xvzf phpMyAdmin-4.7.4-all-languages.tar.gz
mv phpMyAdmin-4.7.4-all-languages phpMyAdmin





