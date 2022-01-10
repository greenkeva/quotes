FROM jenkins/jenkins:2.319.1-jdk11
RUN apt-update
RUN apt install curl
RUN curl -sL https:deb.nodesource.com/setup_14.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt install nodejs
USER root
RUN jenkins-plugin-cli --plugins "blueocean:1.25.2 docker-workflow:1.26"