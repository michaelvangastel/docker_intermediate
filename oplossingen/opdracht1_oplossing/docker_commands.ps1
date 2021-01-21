docker build -t opdracht1 .
docker run -v opdracht1_volume:/volume_directory/ --name opdracht1 opdracht1
docker run -v opdracht1_volume:/volume_directory/ --name nginx_test -d nginx
docker exec -it nginx_test cat /volume_directory/some_text_file
docker stop nginx_test
docker rm nginx_test
docker rm opdracht1
docker volume rm opdracht1_volume
