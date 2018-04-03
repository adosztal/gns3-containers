# Docker image for a basic web/ftp server

FROM ubuntu:xenial

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends \
    install telnet curl openssh-client nano vim-tiny iputils-ping build-essential \
    net-tools nginx vsftpd \
    && rm -rf /var/lib/apt/lists/*

ADD https://raw.githubusercontent.com/adosztal/gns3-containers/master/webserver/vsftpd.conf /etc/vsftpd.conf

VOLUME [ "/root" ]
CMD [ "sh", "-c", "/etc/init.d/nginx start; /etc/init.d/vsftpd start; cd; exec bash -i" ]

