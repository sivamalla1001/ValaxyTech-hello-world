# Pull base image 
#From tomcat:8-jre8 

# Maintainer 
#MAINTAINER "valaxytech@gmail.com" 
#COPY ./webapp.war /usr/local/tomcat/webapps
FROM openjdk
COPY target/*.jar /
EXPOSE 8080
ENTRYPOINT ["java","-jar","/my-app-1.0-SNAPSHOT.jar"]
