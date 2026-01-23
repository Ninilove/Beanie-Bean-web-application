FROM tomcat:9-jre9-slim
COPY target/*.war /usr/local/tomcat/webapps/docker-jenkins.war
RUN apt-get update && apt-get install -y vim-tiny && \
    rm -rf /var/lib/apt/lists/* && \ apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6ED0E7B82643E131 \
    78DBA3BC47EF2265
