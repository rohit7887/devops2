# Run Time Tomcat Env Image.
FROM tomcat:8.0

MAINTAINER rohitrathod <rohitrrr@gmail.com>

COPY target/petclinic.war   /usr/local/tomcat/webapps/
