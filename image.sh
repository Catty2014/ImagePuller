#!/bin/bash

docker login -u github -p $1 docker.cattysteve.top
export a=$(cat pullargs.txt)
for i in $(cat images.txt)
do
    echo "Pulling $i using $a"
    docker pull $i $a
    docker tag $i docker.cattysteve.top/mirror_gh/$i
    docker push docker.cattysteve.top/mirror_gh/$i
done
