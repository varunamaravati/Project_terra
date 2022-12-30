FROM ubuntu:latest
MAINTAINER varunamaravati
LABEL "Task"="AmazonProject"
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install default-jdk
RUN apt-get -y install wget
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.70/bin/apache-tomcat-9.0.70.tar.gz
RUN tar xvzf apache-tomcat-9.0.70.tar.gz
RUN mv apache-tomcat-9.0.70 tomcat
COPY Amazon.war /tomcat/webapps/
RUN cd tomcat/bin/
WORKDIR tomcat/bin/
EXPOSE 8080
CMD ["sh", "catalina.sh", "run"]
