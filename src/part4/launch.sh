#!/bin/bash

gcc -o server server.c -lfcgi
docker build -t server1 .
docker run -d -p 80:81 --name server1-container server1
