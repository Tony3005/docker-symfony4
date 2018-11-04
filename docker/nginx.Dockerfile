FROM nginx:1.15-alpine

RUN apk add --update openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=UK/ST=GB/L=London/O=Docker/CN=symfony4.local" -keyout /etc/ssl/nginx.key -out /etc/ssl/nginx.crt

COPY nginx.conf /etc/nginx/conf.d/default.conf
