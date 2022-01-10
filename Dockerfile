FROM jenkins/jenkins:2.319.1-jdk11 as base
WORKDIR /app
COPY package*.json ./
COPY package*.json ./

FROM base as build
COPY . .
CMD ["npm", "start"]

FROM base as test
RUN npm ci
COPY . .
CMD ["npm", "run", "test"]

ENV PORT=8080
EXPOSE 8080

USER root
RUN jenkins-plugin-cli --plugins "blueocean:1.25.2 docker-workflow:1.26"