FROM tomcat:8.5.99
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY  /target/*.war /usr/local/tomcat/webapps
