# DNS server with dnsmasq

FROM ubuntu:bionic

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends \
    install telnet curl openssh-client nano vim-tiny iputils-ping build-essential \
    net-tools dnsmasq bind9-host dnsutils \
    && rm -rf /var/lib/apt/lists/*

VOLUME [ "/root" ]
CMD [ "sh", "-c", "cd; exec bash -i" ]

