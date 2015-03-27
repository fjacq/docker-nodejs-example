FROM gliderlabs/alpine:latest

RUN apk-install nginx
RUN rm -v /etc/nginx/nginx.conf
RUN mkdir -p /tmp/nginx/client-body
ADD . /etc/nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx"]
