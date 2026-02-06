FROM nginx  
WORKDIR /home/
COPY nginx.conf /etc/nginx/nginx.conf
COPY server.c .
COPY build.sh .

RUN chmod +x ./build.sh

RUN apt-get update
RUN apt-get install -y gcc libfcgi-dev spawn-fcgi

ENTRYPOINT ["sh", "./build.sh"] 

