#!/bin/bash


# Get the current date in the desired format (YYYYMMDD)
tag_today=$(date +'%Y%m%d')
docker build --platform="linux/amd64" -t wd-enterprise-16:$tag_today .

docker tag wd-enterprise-16:$tag_today warpdriven/wd-enterprise-16:latest
docker tag wd-enterprise-16:$tag_today warpdriven/wd-enterprise-16:$tag_today

# Log in to Docker Hub
docker login

#docker run --name wd-enterprise-test warpdriven/wd-erp:latest

# Push the Docker image to Docker Hub
docker push warpdriven/wd-enterprise-16:$tag_today
docker push warpdriven/wd-enterprise-16:latest