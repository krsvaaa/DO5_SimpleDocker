#!/bin/bash

gcc -o server server.c -lfcgi
docker build -t server .
docker run -d -p 81:81 --name server-container server

