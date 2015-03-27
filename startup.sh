#!/bin/bash

# stop existing containers
docker stop webapp reverse_proxy

# remove existing containers
docker rm webapp reverse_proxy

# setup containers with exposed ports
docker run -d -p 9000:9000 --name webapp slyg/node-app
docker run -d -p 80:80 --name reverse_proxy --link webapp:webapp slyg/nginx

echo "Listening on http://$(boot2docker ip)"
