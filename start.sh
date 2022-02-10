#!/bin/bash
app="flaskex"
docker build -t ${app} .
docker run --name=${app} \
--restart=always \
--detach \
--publish 56733:80 \
${app} 
