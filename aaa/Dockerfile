# AAA server: RADIUS & TACACS+

FROM ubuntu:xenial

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends \
    install telnet curl openssh-client nano vim-tiny iputils-ping build-essential \
    net-tools freeradius freeradius-utils tacacs+ \
    && rm -rf /var/lib/apt/lists/*

ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/aaa/radiusd.conf /etc/freeradius/radiusd.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/aaa/clients.conf /etc/freeradius/clients.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/aaa/eap.conf /etc/freeradius/eap.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/aaa/mschap /etc/freeradius/modules/mschap
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/aaa/users /etc/freeradius/users
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/aaa/tac_plus.conf /etc/tacacs+/tac_plus.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/aaa/runonce.sh /sbin/runonce.sh
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/aaa/starter.sh /sbin/starter.sh


RUN DEBIAN_FRONTEND=noninteractive chmod 755 /sbin/runonce.sh; sleep 1; /sbin/runonce.sh

VOLUME [ "/root", "/etc/freeradius", "/etc/tacacs+" ]
CMD [ "sh", "-c", "/sbin/starter.sh" ]

