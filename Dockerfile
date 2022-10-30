FROM ubuntu:20.04

RUN \
  apt-get update && \
  apt-get -y install \
    openssl \
    ca-certificates \
    stubby \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

COPY stubby.yml /etc/stubby/stubby.yml

EXPOSE 5355/udp
EXPOSE 5355/tcp

ENTRYPOINT [ "stubby" ]
