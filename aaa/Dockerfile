# AAA server: RADIUS & TACACS+

FROM ubuntu:bionic

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends \
    install telnet curl openssh-client nano vim-tiny iputils-ping build-essential \
    net-tools freeradius freeradius-utils tacacs+ \
    && rm -rf /var/lib/apt/lists/*

ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/aaa/clients.conf /etc/freeradius/3.0/clients.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/aaa/users /etc/freeradius/3.0/mods-config/files/authorize
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/aaa/tac_plus.conf /etc/tacacs+/tac_plus.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/aaa/runonce.sh /sbin/runonce.sh
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/aaa/starter.sh /sbin/starter.sh


RUN DEBIAN_FRONTEND=noninteractive chmod 755 /sbin/runonce.sh; sleep 1; /sbin/runonce.sh

VOLUME [ "/root", "/etc/freeradius", "/etc/tacacs+" ]
CMD [ "sh", "-c", "/sbin/starter.sh" ]

