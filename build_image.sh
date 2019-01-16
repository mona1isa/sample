#!/bin/bash
cd build/docker/

docker build -t sample:latest -f Dockerfile .

# tag image then push
docker tag sample:latest 172.16.20.2:8083/sample:latest

# push image into registry need to do
docker push 172.16.20.2:8083/sample:latest


# use docker-compose startup container
cd ../../src/main/docker
docker-compose -f app.yml build

docker-compose -f app.yml create

docker-compose -f app.yml up -d

# stop application
#docker-compose -f app.yml stop
