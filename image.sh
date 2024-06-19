#!/bin/bash

docker login -u github -p $1 docker.cattysteve.top
for i in $(cat images.txt)
do
    docker pull $i
    docker tag $i docker.cattysteve.top/mirror_gh/$i
    docker push docker.cattysteve.top/mirror_gh/$i
done
