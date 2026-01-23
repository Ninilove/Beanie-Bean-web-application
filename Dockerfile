FROM tomcat:9-jre9-slim
COPY target/*.war /usr/local/tomcat/webapps/docker-jenkins.war
RUN apt-get update && apt-get install -y vim-tiny && \
    rm -rf /var/lib/apt/lists/* && \ apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 605C66F00D6C9793 \
    0E98404D386FA1D9 648ACFD622F3D138
