#!/bin/bash

#Description: Installing Docker and Running Containers 

#Author: Ian S

#Date: June 2020

yum update -y
yum install net-tools -y
yum install docker -y

 
if [ -f ${Dockerfile} ] 

then 

echo " FROM centos:7
       RUN yum install httpd curl finger git
       COPY /tmp /etc 
       EXPOSE 90
       CMD Apachectl -D FOREGROUND " >> Dockerfile 

systemctl start docker
systemctl enable docker
docker build -t centos7 .
exit 10

else 

touch Dockerfile

echo " FROM centos:7
       RUN yum install httpd curl finger git
       COPY /tmp /etc
       EXPOSE 90
       CMD Apachectl -D FOREGROUND " >> Dockerfile

systemctl start docker
systemctl enable docker
docker build -t centos7 .

fi

