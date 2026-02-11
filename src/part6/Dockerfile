FROM nginx  
WORKDIR /home/

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./ server.c ./build.sh .

USER root

RUN mkdir -p /var/lib/apt/lists/partial && \
    apt-get update && \
    apt-get install -y gcc libfcgi-dev spawn-fcgi && \
    rm -rf /var/lib/apt/lists && \
    useradd -m -s /bin/bash etsyhone && \
    chown -R etsyhone /etc/nginx/nginx.conf && \
    chown -R etsyhone /var/cache/nginx && \
    chown -R etsyhone /home && \
    touch /var/run/nginx.pid && \
    chown -R etsyhone /var/run/nginx.pid

USER etsyhone

ENTRYPOINT ["sh", "./build.sh"]
