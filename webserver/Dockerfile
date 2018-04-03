# Docker image for a basic web/ftp server

FROM ubuntu:xenial

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends \
    install telnet curl openssh-client nano vim-tiny iputils-ping python build-essential \
    net-tools nginx vsftpd \
    && rm -rf /var/lib/apt/lists/* \
    && curl VSFTP_URL --output /etc/vsftpd/vsftpd.conf --silent 

VOLUME [ "/root" ]
CMD [ "sh", "-c", "systemctl start nginx; systemctl start vsftpd; cd; exec bash -i" ]

