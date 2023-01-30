FROM alpine:3.17

RUN apk update && \
    apk upgrade && \
    apk add nginx

# COPY tools/* /etc/nginx/ssl/

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 443 80
