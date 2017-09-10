#!/bin/bash


echo "This will set up permissions for the smooth running of the website"

echo "Verify that you are in the Apacha group, as shown by the following...."

groups

echo "Now need to change ownerships:"

sudo chown -R ec2-user:apache /var/www

sudo chmod 2775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} \;

find /var/www -type f -exec sudo chmod 0664 {} \;

echo "All permissions should be set up now."

echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php

echo "Created a phpinfo file. Now you can test that it shows that PHP is working"

echo "This is the full list of installed components"

sudo yum list installed httpd24 php70 mysql56-server php70-mysqlnd

