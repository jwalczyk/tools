#!/bin/bash

docker_name=$1
docker images | grep $docker_name | awk '{print $3}' | xargs docker rmi -f 
