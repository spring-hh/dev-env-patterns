FROM tomcat:9.0.68-jdk17

RUN mv /usr/local/tomcat/webapps /usr/local/tomcat/webapps_bak
RUN mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps
ADD tomcat-users.xml /usr/local/tomcat/conf/
ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

RUN apt-get update && apt-get install -y git
RUN mkdir /code
WORKDIR /code
COPY . /code/