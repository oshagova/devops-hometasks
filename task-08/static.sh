#!/bin/bash
docker build -t hometask-image .
docker run -d -p 8081:80 --name webs -it hometask-image
docker cp index.html webs:/var/www/html/