# AAA server: RADIUS & TACACS+

FROM ubuntu:xenial

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends \
    install telnet curl openssh-client nano vim-tiny iputils-ping build-essential \
    net-tools freeradius tacacs+ \
    && rm -rf /var/lib/apt/lists/*

#ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/radiusd.conf /etc/freeradius/radiusd.conf

RUN DEBIAN_FRONTEND=noninteractive chmod 755 /sbin/starter.sh

VOLUME [ "/root", "/etc/freeradius" ]
CMD [ "sh", "-c", "/sbin/starter.sh" ]

