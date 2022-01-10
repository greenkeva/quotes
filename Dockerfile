FROM jenkins/jenkins:2.319.1-jdk11
USER root
RUN jenkins-plugin-cli --plugins "blueocean:1.25.2 docker-workflow:1.26"