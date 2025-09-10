FROM tomcat:9-jre9-slim
COPY target/*.war /usr/local/tomcat/webapps/new-app.war
