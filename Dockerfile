FROM tomcat:9-jre9-slim
COPY target/*.war /usr/local/tomcat/webapps/new-app.war
RUN apt-get update && apt-get install -y vim-tiny && \
    rm -rf /var/lib/apt/lists/*
