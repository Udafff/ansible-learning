FROM ubuntu
RUN apt-get update && apt-get install wget gnupg2 curl openjdk-8-jre-headless -y 2>&1
RUN wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add -  2>&1
RUN sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN apt-get update && apt-get install jenkins -y 2>&1
