#! /bin/bash

# become root user
sudo su

# update dependencies
yum -y update

# we'll install 'expect' to input keystrokes/y/n/passwords
yum -y install expect 

# install node
curl --silent --location https://rpm.nodesource.com/setup_14.x | bash -
sudo yum install -y nodejs

# install apache
yum install httpd -y
service httpd start
chkconfig httpd on

# install pm2
npm install pm2 -g
