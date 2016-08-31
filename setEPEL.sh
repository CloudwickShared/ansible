#!/bin/bash

# download in /opt folder
if [cat /etc/issue | grep 'Cent' | grep '6' | wc -l > 0]
then
   cd /opt/
   wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
   # unpack it
   rpm -ivh epel-release-latest-6.noarch.rpm

elif [cat /etc/issue | grep 'Cent' | grep '7' | wc -l > 0]
then 
   cd /opt/
   wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
   # unpack it
   rpm -ivh epel-release-latest-7-8.noarch.rpm
fi

# Install ansible
yum install ansible -y
