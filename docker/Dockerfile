FROM jenkins/jenkins:latest

# User root install libs for runnit docker-compose and docker 
USER root 

# Copy entrypoint.sh to container 
COPY ["entrypoint.sh", "/"]

# Install utils
RUN apt-get update && \
    apt-get install sudo && \
    chmod 755 /entrypoint.sh

RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Install docker-compose
RUN curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# Add user jenkins in group docker
ENTRYPOINT ["/bin/bash","-c","./entrypoint.sh"]

# User jenkins install plugins in jenkins system
USER jenkins

# Copy plugins.txt to share folder in container
COPY plugins.txt /usr/share/jenkins/plugins.txt
# Install plugins
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt