# Networkers' Toolbox

FROM ubuntu:xenial

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends \
    install telnet curl openssh-client nano vim-tiny iputils-ping build-essential \
    net-tools nginx vsftpd isc-dhcp-server tftpd-hpa snmpd snmptrapd rsyslog \
    && rm -rf /var/lib/apt/lists/*

ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/vsftpd.conf /etc/vsftpd.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/pam_d-vsftpd /etc/pam.d/vsftpd
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/rsyslog.conf /etc/rsyslog.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/xinet_d-tftp /etc/xinet.d/tftp
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/starter.sh /sbin/starter.sh
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/tftpd-hpa /etc/default/tftpd-hpa
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/default_snmptrapd /etc/default/snmptrapd
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/snmpd.conf /etc/snmp/snmpd.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/snmptrapd.conf /etc/snmp/snmptrapd.con

RUN DEBIAN_FRONTEND=noninteractive chmod 755 /sbin/starter.sh

VOLUME [ "/root", "/tftpboot", "/var/log", "/var/www", "/etc" ]
CMD [ "sh", "-c", "/sbin/starter.sh" ]

