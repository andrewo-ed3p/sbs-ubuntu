#! /bin/bash

mkdir -p /opt/project
cd /opt/project

git clone https://github.com/andrewo-ed3p/sbs-compose.git

cd sbs-compose

docker build -t docker-compose .

cd webapp

# with TTY
#docker run -i -t -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:`pwd` -w `pwd`  docker-compose up -d
# without TTY
docker run -i -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:`pwd` -w `pwd`  docker-compose up -d
