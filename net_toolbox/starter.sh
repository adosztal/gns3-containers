# Adding root password
echo root:gns3 | chpasswd

# Adding write permission to /tftpboot
chmod 777 /tftpboot/

# (Re)starting services
# snmpd hangs after stop, it needs to be killed manually
/etc/init.d/rsyslog start >/dev/null 2>/dev/null
/etc/init.d/nginx start >/dev/null 2>/dev/null
/etc/init.d/vsftpd start >/dev/null 2>/dev/null
/etc/init.d/tftpd-hpa start >/dev/null 2>/dev/null
SNMPD_PID=`cat /run/snmpd.pid`
/etc/init.d/snmpd stop >/dev/null 2>/dev/null
kill $SNMPD_PID
/etc/init.d/snmpd start >/dev/null 2>/dev/null
/etc/init.d/snmptrapd start >/dev/null 2>/dev/null

clear

# Launching shell
cd
exec bash -i

