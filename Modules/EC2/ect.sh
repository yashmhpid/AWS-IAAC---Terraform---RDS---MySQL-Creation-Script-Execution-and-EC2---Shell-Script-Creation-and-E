#!/bin/bash
sudo su
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
echo "<html><h1> This is webserver <i>$HOSTNAME</i></h1></html>"/var/www/html/index.html