#!/bin/bash


# BAsic list format is:
# [Thu Oct 26 07:30:35.385917 2017] [:error] [pid 3063] [client 86.181.32.194:53780] script '/var/www/html/dnsTestBarnabus.php' not found or unable to stat


dnsLine=`sudo grep dnsTestBarnabus /var/log/httpd/error_log | tail -1 | cut -d" " -f 10 | cut -d":" -f 1`


echo $dnsLine
