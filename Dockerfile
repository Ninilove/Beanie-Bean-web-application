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
    
   

    
