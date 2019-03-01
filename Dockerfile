FROM ubuntu:latest

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

# Install Golang
RUN apt-get update && apt-get install -y wget curl git gcc
RUN wget -P /tmp https://dl.google.com/go/go1.11.4.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf /tmp/go1.11.4.linux-amd64.tar.gz
RUN rm /tmp/go1.11.4.linux-amd64.tar.gz
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"

WORKDIR $GOPATH
