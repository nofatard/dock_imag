#!/bin/bash

#Description: creating a docker image from Dockerfile.
#Author Abdou

BASE=ubuntu:18.04
APA=apache2ctl
NAME=web.httpd
REPO=nofatard
TAG=httpd
RUN=apt
CONT=cat

touch Dockerfile
echo "Dockerfile successful touch"
echo "FROM  ${BASE}" > Dockerfile
echo "RUN   ${RUN} update && ${RUN} install vim apache2 -y" >> Dockerfile
echo "COPY  ${CONT} /var/www/html/index.html" >> Dockerfile
echo "EXPOSE  80" >> Dockerfile
echo "CMD ${APA} -DFOREGROUND" >> Dockerfile

if
 [ ${?} -eq 0 ]
then
echo "contents successful added in Dockerfile"
else
echo "Unable to add contents to Dockerfile"
exit 3
fi

docker build -t ${NAME} .
docker images 
echo "image builds successful"
docker tag ${NAME} ${REPO}/${TAG}
docker push ${REPO}/${TAG}

 if
 [ ${?} -eq 0 ]
then
echo "Image push successful"
else
echo " Unable to push docker image"
exit 1
fi

 
