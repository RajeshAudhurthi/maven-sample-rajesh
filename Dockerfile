FROM tomcat
COPY target/maven-web-application*.war /usr/local/tomcat/webapps/
