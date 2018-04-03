# Adding root password
echo root:gns3 | chpasswd

# Starting services
/etc/init.d/nginx start >/dev/null 2>/dev/null
/etc/init.d/vsftpd start >/dev/null 2>/dev/null
/etc/init.d/xinetd start >/dev/null 2>/dev/null
/etc/init.d/snmpd start >/dev/null 2>/dev/null
/etc/init.d/rsyslog reload >/dev/null 2>/dev/null

# Launching shell
cd
exec bash -i

