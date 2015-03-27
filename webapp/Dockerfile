FROM gliderlabs/alpine:3.1

RUN apk-install nodejs
RUN npm install pm2 -g
RUN pm2 dump

ADD . /app
RUN cd app/ && npm install

EXPOSE 9000

CMD ["pm2", "start", "app/index.js", "--no-daemon"]
