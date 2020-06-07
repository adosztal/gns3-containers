# Docker base image for Netmiko, NAPALM, Pyntc, and Ansible

FROM ubuntu:bionic

RUN DEBIAN_FRONTEND=noninteractive apt update \
    && apt install -y --no-install-recommends software-properties-common \
    && apt-add-repository -y ppa:ansible/ansible \
    && apt-add-repository -y ppa:deadsnakes/ppa \
    && apt update && apt upgrade -y \
    && apt -y --no-install-recommends install python3.8 telnet curl openssh-client nano vim-tiny \
    iputils-ping python build-essential libssl-dev libffi-dev python-pip python3-pip \
    python-setuptools python3-setuptools python-dev python-wheel python3-wheel net-tools ansible \
    && apt clean \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install cffi \
    && pip3 install cryptography netmiko napalm pyntc \
    && pip3 install --upgrade paramiko && mkdir /scripts \
    && mkdir /root/.ssh/ \
    && echo "KexAlgorithms diffie-hellman-group1-sha1,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group14-sha1" > /root/.ssh/config \
    && echo "Ciphers 3des-cbc,aes128-cbc,aes128-ctr,aes256-ctr" >> /root/.ssh/config \
    && chown -R root /root/.ssh/ \
    && ln -sf /usr/bin/python3.8 /usr/bin/python3

VOLUME [ "/root","/usr", "/scripts" ]
CMD [ "sh", "-c", "cd; pip3 install netmiko; exec bash -i" ]

