FROM busybox:1-musl

RUN adduser -D static
USER static
WORKDIR /home/static

COPY . .

CMD ["busybox", "httpd", "-f", "-v", "-p", "8080"]