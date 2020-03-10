FROM tomcat:latest
LABEL maintainer='vista' \
      emp_name='manikanta' \
      version=1.0.0
RUN apt-get update -y  
WORKDIR /usr/local/tomcat/webapps/

ADD  http://ftp-chi.osuosl.org/pub/jenkins/war/2.213/jenkins.war /usr/local/tomcat/webapps/jenkins.war
EXPOSE 8080
CMD ["catalina.sh",  "run"]

