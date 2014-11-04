FROM centos:latest
MAINTAINER Raja <me@raja.io>

RUN yum -y install yum-fastestmirror
RUN yum update -y
RUN yum install -y wget && wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/6u24-b07/jdk-6u24-linux-x64-rpm.bin
RUN rpm -ivh jdk-6u24-linux-x64-rpm.bin && rm jdk-6u24-linux-x64-rpm.bin

