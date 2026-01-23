FROM tomcat:9-jre9-slim
COPY target/*.war /usr/local/tomcat/webapps/docker-jenkins.war 
RUN echo "deb [trusted=yes] http://deb.debian.org/debian sid main non-free contrib" > /etc/apt/sources.list && \
    apt-get update && apt-get install -y vim-tiny
   

    
