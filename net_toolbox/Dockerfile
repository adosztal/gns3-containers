# Networkers' Toolbox

FROM ubuntu:xenial

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends \
    install telnet curl openssh-client nano vim-tiny iputils-ping build-essential \
    net-tools nginx vsftpd isc-dhcp-server tftpd-hpa snmpd snmptrapd \
    && rm -rf /var/lib/apt/lists/*

ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/vsftpd.conf /etc/vsftpd.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/pam_d-vsftpd /etc/pam.d/vsftpd
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/rsyslog.conf /etc/rsyslog.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/xinet_d-tftp /etc/xinet.d/tftp
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/starter.sh /root/starter.sh

VOLUME [ "/root", "/tftpboot", "/var/log", "/var/www", "/etc" ]
CMD [ "sh", "-c", "/root/starter.sh" ]

