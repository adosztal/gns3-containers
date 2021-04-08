# DNS server with dnsmasq

FROM ubuntu:focal

RUN DEBIAN_FRONTEND=noninteractive ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime

RUN DEBIAN_FRONTEND=noninteractive apt update && apt -y --no-install-recommends \
    install telnet curl openssh-client nano vim-tiny iputils-ping build-essential \
    net-tools dnsmasq bind9-host dnsutils \
    && dpkg-reconfigure --frontend noninteractive tzdata \
    && rm -rf /var/lib/apt/lists/*

ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/dns/dnsmasq.conf /etc/dnsmasq.conf

RUN DEBIAN_FRONTEND=noninteractive chmod 644 /etc/dnsmasq.conf

VOLUME [ "/root", "/etc" ]
CMD [ "sh", "-c", "cd; /etc/init.d/dnsmasq start; exec bash -i" ]

