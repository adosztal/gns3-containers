# Docker base image for Netmiko, NAPALM, Pyntc, Terraform, and Ansible

FROM ubuntu:focal

RUN DEBIAN_FRONTEND=noninteractive apt update \
    && apt install -y --no-install-recommends software-properties-common curl gpg-agent \
    && curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - \
    && apt-add-repository -y ppa:ansible/ansible \
    && apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com focal main" \
    && apt update && apt upgrade -y \
    && apt -y --no-install-recommends install python3.8 telnet curl openssh-client nano vim-tiny \
    iputils-ping build-essential libssl-dev libffi-dev python3-pip \
    python3-setuptools python3-wheel python3-netmiko net-tools ansible terraform \
    && apt clean \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install pyntc \
    && pip3 install napalm \
    && mkdir /root/.ssh/ \
    && echo "KexAlgorithms diffie-hellman-group1-sha1,curve25519-sha256@libssh.org,ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group14-sha1" > /root/.ssh/config \
    && echo "Ciphers 3des-cbc,aes128-cbc,aes128-ctr,aes256-ctr" >> /root/.ssh/config \
    && chown -R root /root/.ssh/ \
    && ln -sf /usr/bin/python3.8 /usr/bin/python3

VOLUME [ "/root","/usr", "/scripts" ]
CMD [ "sh", "-c", "cd; exec bash -i" ]
