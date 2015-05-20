FROM ubuntu:14.04
MAINTAINER Tyler Blair <hidendra@mcstats.org>

RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update

RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

RUN apt-get install -y oracle-java8-installer

RUN rm -rf /var/cache/oracle-jdk8-installer && apt-get clean
