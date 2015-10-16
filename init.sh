#!/bin/bash
docker rm -f jenkins 2>/dev/null
sudo rm -Rf data
docker-compose -f docker-compose-init.yml up -d
sudo docker cp jenkins:/var/lib/jenkins data
docker rm -f jenkins 2>/dev/null
./run.sh