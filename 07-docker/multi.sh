#!/bin/bash

docker build -t word-cloud-image -f Dockerfile.multi .
docker run -d -p 8888:8888 --name wcg word-cloud-image