#!bin/bash
# Run jenkins in docker-container.
# Pings the host docker into the container. 
# Allows you to control the docker from the container.
#
DOCKER_COMPOSE=./docker/docker-compose.yml
if [ $(whoami) != "root" ]; then
    echo "*** Please run this shell script with SUDO ***"
    exit
fi

# Call command docker-compose
docker-compose -f ${DOCKER_COMPOSE} up -d
