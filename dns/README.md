# DNS server

This appliance provides DNS using dnsmasq with the local domain set to "lab". You can add records by adding entries to the /etc/hosts file in the following format:
%IP_ADDRESS% %HOSTNAME%.lab %HOSTNAME%

Example:
192.168.123.10 router1.lab router1

