FROM jenkins/jenkins:latest

USER root 

COPY ["entrypoint.sh", "/"]

RUN apt-get update && \
    apt-get install sudo && \
    chmod 755 /entrypoint.sh

RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

RUN curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

ENTRYPOINT ["/bin/bash","-c","./entrypoint.sh"]