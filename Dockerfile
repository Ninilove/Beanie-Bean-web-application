//FROM tomcat:9-jre9-slim
//COPY target/*.war /usr/local/tomcat/webapps/docker-jenkins.war 
//RUN echo "deb [trusted=yes] http://deb.debian.org/debian sid main non-free contrib" > /etc/apt/sources.list && \
    //apt-get update && apt-get install -y vim-tiny

FROM tomcat:9-jre11-alpine
COPY target/*.war /usr/local/tomcat/webapps/docker-jenkins.war
# Install vim (Alpine uses apk package manager)
RUN apk update && \
    apk add --no-cache \
        vim \
        curl \
        wget \
        net-tools \
        busybox-extras

EXPOSE 8080
CMD ["catalina.sh", "run"] 
    
   

    
