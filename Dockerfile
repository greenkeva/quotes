FROM jenkins/jenkins:2.319.1-jdk11
WORKDIR /app
COPY package*.json ./
COPY . .
ENV PORT=8080
EXPOSE 8080
CMD ["npm", "start", "npm", "test"]
USER root
RUN jenkins-plugin-cli --plugins "blueocean:1.25.2 docker-workflow:1.26"