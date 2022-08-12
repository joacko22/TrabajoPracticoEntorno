FROM ubuntu:latest
WORKDIR /
COPY . .
ENTRYPOINT ["./menu.sh"]

