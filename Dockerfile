FROM tomcat:latest
COPY target/*.war /usr/local/tomcat/webapps/docker-jenkins.war
# Switch to root to install packages
USER root

# Update package list and install vi/vim and gpg
RUN apt-get update && apt-get install -y \
    vim \
    gnupg \
    && rm -rf /var/lib/apt/lists/*

# Optionally create symbolic link for vi if needed
# RUN ln -s /usr/bin/vim /usr/bin/vi

# Switch back to the default Tomcat user (usually 'tomcat' or 'root' depending on the base image)
# Check what user the base image uses
# USER tomcat

# Expose Tomcat's default port
EXPOSE 8080

# Keep the default CMD from the base Tomcat image
CMD ["catalina.sh", "run"]

    
