#!/bin/bash
#Description: webserver for centos7
#Author: Guru's group 
#Date: June 2020

RUN=yum

echo "intallation of httpd"
$RUN install httpd wget -y

systemctl enable httpd

firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --reload

systemctl start httpd

if
  [ $? -eq 0 ]
then
echo "Successufully installed"
else
echo "unable to install apache"

exit 2
fi
sleep 5

echo "installation of php"
$RUN install php php-mysql -y
if
  [ $? -eq 0 ]
then
echo " PHP installed successfully"
else
echo "unable to install PHP"
exit 3
fi
echo "<?php phpinfo(); ?>" > /var/www/html/info.php
systemctl restart httpd

sleep 5

echo "php-gd installation"
$RUN install php-gd -y

echo "wordpress installation"

cd /tmp


wget https://wordpress.org/wordpress-5.1.1.tar.gz
 
tar -xzvf wordpress-5.1.1.tar.gz
cp -r wordpress/* /var/www/html/
mkdir /var/www/html/wp-content/uploads
cd /var/www/html/
cp wp-config-sample.php wp-config.php

#echo "what is your database name?"
#read DB
sed -i '23s/database_name_here/webguru/' wp-config.php
#echo "what is your username for the database"
#read user
sed -i '26s/username_here/guru/' wp-config.php
#echo "what is the password for database?"
#read pw
sed -i '29s/password_here/school1/' wp-config.php

chown -R apache:apache /var/www/html/*
systemctl restart httpd

