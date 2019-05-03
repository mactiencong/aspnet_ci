FROM alpine:latest
RUN apk add --update curl && rm -rf /var/cache/apk/*
WORKDIR /home
CMD ["curl"]