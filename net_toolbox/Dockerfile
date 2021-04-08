# Networkers' Toolbox

FROM ubuntu:focal

RUN DEBIAN_FRONTEND=noninteractive ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends \
    install telnet curl openssh-client nano vim-tiny iputils-ping build-essential \
    net-tools nginx vsftpd isc-dhcp-server tftpd-hpa snmpd snmptrapd rsyslog \
    && dpkg-reconfigure --frontend noninteractive tzdata \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/vsftpd.conf /etc/vsftpd.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/pam_d-vsftpd /etc/pam.d/vsftpd
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/rsyslog.conf /etc/rsyslog.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/starter.sh /sbin/starter.sh
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/default_tftpd-hpa /etc/default/tftpd-hpa
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/default_snmptrapd /etc/default/snmptrapd
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/snmpd.conf /etc/snmp/snmpd.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/snmptrapd.conf /etc/snmp/snmptrapd.conf
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/index.html /var/www/html/index.html
ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/net_toolbox/gns3.png /var/www/html/gns3.png

RUN DEBIAN_FRONTEND=noninteractive chmod 755 /sbin/starter.sh; mkdir /tftpboot; chmod 777 /tftpboot; echo root:gns3 | chpasswd; chmod 644 /var/www/html/*

VOLUME [ "/root", "/tftpboot", "/var/log", "/var/www", "/etc" ]
CMD [ "sh", "-c", "/sbin/starter.sh" ]

