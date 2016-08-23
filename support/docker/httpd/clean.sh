#!/bin/bash

docker stop share-oc-tools
docker rm share-oc-tools
docker build -t jmarley/oc-tools -f support/docker/httpd/Dockerfile .
docker run -dit --name share-oc-tools -p 80:80  jmarley/oc-tools
