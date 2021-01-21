docker run -d --name nginx nginx
docker network create -d bridge nginx_network
docker network connect nginx_network nginx
docker run -it --rm --network="nginx_network" busybox ping -c 3 nginx
docker stop nginx
docker rm nginx
docker network rm nginx_network
