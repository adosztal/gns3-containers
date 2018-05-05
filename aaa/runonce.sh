touch /var/log/tac_plus.acct
chown freerad:adm /var/log/tac_plus.acct
chmod 644 /var/log/tac_plus.acct
chown freerad:freerad /etc/freeradius/3.0/clients.conf
chmod 644 /etc/freeradius/3.0/clients.conf
chown freerad:freerad /etc/freeradius/3.0/mods-config/files/authorize
chmod 644 /etc/freeradius/3.0/mods-config/files/authorize
chown freerad:freerad /etc/tacacs+/tac_plus.conf
chmod 644 /etc/tacacs+/tac_plus.conf
chmod 755 /sbin/starter.sh

