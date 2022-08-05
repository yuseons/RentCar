#!/bin/bash

# Jenkins 에서 체크가 끝나면 해당 파일을 실행

container_name="evrent";
repository="baugh248730/isosim";

echo "docker logins try"
docker login

# 기존 컨테이너 정지 후 이미지 제거
echo "Container stop and remove";

# shellcheck disable=SC1007
container_id=$(docker ps -aqf "name= ${container_name}");
echo "Docker : container_id = ${container_id}";

echo "Container stop"
docker stop ${container_id}
docker rm ${container_id}

echo "Docker image remove"
docker rmi ${container_name}

# gradle build
echo "DockerFile start... and"

docker build -t isosim:latest .

echo "DockerFile clear !!!"
echo "image push to docker hub"
docker tag isosim baugh248730/isosim:latest
docker push ${repository}

echo "Docker compose up start ... "
docker-compose up -d
