#!/bin/bash
docker rm -f `basename $PWD` 2>/dev/null
sudo rm -Rf data
docker-compose -f docker-compose-init.yml up -d
sudo docker cp `basename $PWD`:/var/lib/jenkins data
docker rm -f `basename $PWD` 2>/dev/null
./run.sh
