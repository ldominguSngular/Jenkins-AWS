#!/bin/bash
#This script automatically installs jenkins in a new ec2 instance
yum update -y	#update the instance
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo	#add the jenkins repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key	#add the jenkins repo key
yum install java-1.8.0-openjdk -y #install the java 8 dependency
alternatives --set java /usr/lib/jvm/jre-1.8.0-openjdk.x86_64/bin/java #better way of updating the alternative
yum install jenkins -y	#install jenkins
##echo 2| alternatives --config java	#update the java 8 alternative dependecy
service jenkins start	#start the jenkins server

