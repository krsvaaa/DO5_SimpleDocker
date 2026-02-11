FROM nginx:stable

COPY server .
COPY nginx.conf /etc/nginx/nginx.conf

RUN apt update && \
    apt install -y libfcgi-dev spawn-fcgi && \
    chmod +x ./server

EXPOSE 81

CMD ["sh", "-c", "spawn-fcgi -p 8080 ./server && nginx -g 'daemon off;'"]


