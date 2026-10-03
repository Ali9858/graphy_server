FROM node:20.20.2-alpine3.23

COPY graphserver.js .
COPY package.json .
COPY UScities.json .

RUN apk update && \
    apk upgrade && \
    npm install && \
    rm -rf /var/cache/apk/*

EXPOSE 4000

CMD ["node", "graphserver.js"]
