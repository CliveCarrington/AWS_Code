#!/bin/bash


echo "This will become my main LAMP script"

echo "Updating the system"
sudo yum update -y
echo "Now to install the Lamp stand"
sudo yum install -y httpd24 php70 mysql56-server php70-mysqlnd
echo "Installed the basic Lamp stand."
sleep 5

echo "Now to start the apache web server"

sudo service httpd start

sudo chkconfig httpd on

echo "Now checking that the http is running"

chkconfig --list httpd

echo "Now follow the guidelines on security in the security.txt file"



