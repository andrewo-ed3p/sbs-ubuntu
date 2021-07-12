#! /bin/bash

echo "Begin" > /var/log/start.log echo

mkdir /opt/project
cd /opt/project


git clone https://github.com/andrewo-ed3p/sbs-compose.git

cd sbs-compose

docker build -t docker-compose .

cd webapp

docker run -i -t -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:`pwd` -w `pwd`  docker-compose up -d
