#!/bin/bash
cd build/docker/

docker build -t sample:latest -f Dockerfile .

# push image into registry need to do

# use docker-compose startup container
cd ../../src/main/docker
docker-compose -f app.yml build

docker-compose -f app.yml create

docker-compose -f app.yml up -d

# stop application
#docker-compose -f app.yml stop
