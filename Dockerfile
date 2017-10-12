FROM ubuntu:xenial
MAINTAINER matthew@kickbox.io

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y -q install libreoffice
RUN mkdir /export
VOLUME ["/export"]

ENTRYPOINT ["/usr/bin/soffice", "--headless", "--invisible", "--norestore", "--nologo"]
