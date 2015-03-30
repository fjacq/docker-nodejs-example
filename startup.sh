#!/bin/bash

# start containers from .yml conf
docker-compose up -d

# inform about host to use
echo "Will be listening to http://$(boot2docker ip)"

# watch for file changes to restart containers
nodemon --watch webapp/ -x 'docker-compose restart'

# Kill containers on exit
trap 'docker-compose kill' EXIT
