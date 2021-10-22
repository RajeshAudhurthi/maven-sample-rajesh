FROM tomcat:8-jdk8-openjdk-slim
COPY target/maven-web-application*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]