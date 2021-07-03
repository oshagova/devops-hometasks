#!/bin/bash
docker build -t hometask-image .
docker run -d -p 8080:80 --name web -it hometask-image