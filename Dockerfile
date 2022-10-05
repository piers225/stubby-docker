FROM ubuntu:20.04

RUN groupadd -r myuser && useradd -r -g myuser myuser

RUN \
  apt-get update && \
  apt-get -y --no-install-recommends install \
    stubby \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

COPY stubby.yml /usr/local/etc/stubby/stubby.yml

USER myuser

ENTRYPOINT [ "stubby" ]
