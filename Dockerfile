FROM ubuntu:16.04
MAINTAINER Jeison Pereira

RUN apt-get update -y && \
    apt-get install -y software-properties-common && \
    apt-get install python-software-properties -y && \
    add-apt-repository ppa:webupd8team/java && \
    apt-get update -y
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer

RUN JAVA_HOME=`(readlink -f /usr/bin/java | sed "s:jre/bin/java::")` && \
    echo "JAVA_HOME=$JAVA_HOME" >> /etc/environment

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

CMD ["bash"]
