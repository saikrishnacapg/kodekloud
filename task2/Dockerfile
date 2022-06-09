FROM docker:latest as docker

FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get full-upgrade -y && \
    apt-get install -y --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables \
    apparmor \
    apparmor-utils \
    supervisor \
    gnupg && \
    apt-get autoremove -y && \
    apt-get clean && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

COPY --from=docker /usr/local/bin/ /usr/local/bin/
COPY ./daemon.json /etc/docker/daemon.json
COPY start.sh /
RUN chmod 755 /start.sh
ADD bin.ping /etc/apparmor.d/

ADD aa-disable-write /etc/apparmor.d/

VOLUME /var/lib/docker

RUN mkdir -p /var/log/supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]
