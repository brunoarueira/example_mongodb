FROM alpine:3.6

RUN apk --update add mongodb mongodb-tools

RUN mkdir -p /data/db

CMD ["mongod"]
