# Networkers' Toolbox

This appliance contains server side software for secondary management of network devices:
- www (nginx): Files located at /var/www/html
- ftp (vsftpd): You get to /root after logging in but you're not chrooted
- tftp (tftpd): You can place your files in /tftpboot; upload is permitted
- dhcp (isc-dhcpd): The DHCP server is installed but not configured to avoid any possible conflict
- syslog (rsyslog), snmp server (snmpd + snmptrapd): They both log to /var/log/syslog

