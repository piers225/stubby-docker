FROM ubuntu:20.04

RUN \
  apt-get update && \
  apt-get -y install \
    stubby \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

COPY stubby.yml /usr/local/etc/stubby/stubby.yml

ENTRYPOINT [ "stubby" ]
