#!/bin/bash


# Get the current date in the desired format (YYYYMMDD)
tag_today=$(date +'%Y%m%d')
docker build -t wd-isc-16:$tag_today .

docker tag wd-isc-16:$tag_today warpdriven/wd-isc-16:latest
docker tag wd-isc-16:$tag_today warpdriven/wd-isc-16:$tag_today

# Log in to Docker Hub
docker login

#docker run --name wd-erp-test warpdriven/wd-erp:latest

# Push the Docker image to Docker Hub
docker push warpdriven/wd-isc-16:$tag_today
docker push warpdriven/wd-isc-16:latest