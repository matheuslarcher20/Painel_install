#!/bin/sh
IP=$(wget -qO- ipv4.icanhazip.com)

echo 'Port 22
Protocol 2
KeyRegenerationInterval 3600
ServerKeyBits 1024
SyslogFacility AUTH
LogLevel INFO
LoginGraceTime 120
PermitRootLogin yes
StrictModes yes
RSAAuthentication yes
PubkeyAuthentication yes
IgnoreRhosts yes
RhostsRSAAuthentication no
HostbasedAuthentication no
PermitEmptyPasswords no
ChallengeResponseAuthentication no
PasswordAuthentication yes
X11Forwarding yes
X11DisplayOffset 10
PrintMotd no
PrintLastLog yes
TCPKeepAlive yes
#UseLogin no
AcceptEnv LANG LC_*
Subsystem sftp /usr/lib/openssh/sftp-server
UsePAM yes
PermitTunnel yes
Compression yes
AllowTcpForwarding yes
#UseDNS yes
GatewayPorts yes' > /etc/ssh/sshd_config

service ssh restart
echo "minhaclaro.claro.com.br
recargafacil.claro.com.br
frontend.claro.com.br
appfb.claro.com.sv
empresas.claro.com.br
d1n212ccp6ldpw.cloudfront.net
claro-gestoronline.claro.com.br
forms.claro.com.br
golpf.claro.com.br
logtiscap.claro.com.br
www.recargafacil.claro.com.br
.vivo.com.br
.bradescocelular.com.br" > /etc/payloads

apt-get update -y 1> /bin/null
#apt-get upgrade -y 1> /bin/null
apt-get install git wget squid3 -y
echo 'SQUID UBUNTU'
rm -rf /etc/squid/squid.conf
touch /etc/squid/squid.conf
echo 'acl ip dstdomain '$IP > /etc/squid/squid.conf
echo 'acl payload dstdomain -i "/etc/payloads"
acl local dstdomain localhost
acl iplocal dstdomain 127.0.0.1
acl netflix dstdomain .netflix.
acl redelocal src 192.168.0.1-192.168.0.254
acl vpn src 10.8.0.1-10.8.0.254
acl videoprime dstdomain .videoprime.
acl ip4 dstdomain 127.0.0.2
acl oi dstdomain 200.222.108.241
http_access allow ip
http_access allow payload
http_access allow local
http_access allow iplocal
http_access allow redelocal
http_access allow vpn
http_access allow ip4
http_access allow oi
http_access allow netflix
http_access allow videoprime
#http_port 80
http_port 8080
http_port 8799
http_port 3128
visible_hostname RNEOXBRASIL
http_access deny all
via off
forwarded_for off' >> /etc/squid/squid.conf
service squid restart

echo 'SQUID DEBIAN'
rm -rf /etc/squid3/squid.conf
touch /etc/squid3/squid.conf
echo 'acl ip dstdomain '$IP > /etc/squid3/squid.conf
echo 'acl payload dstdomain -i "/etc/payloads"
acl local dstdomain localhost
acl iplocal dstdomain 127.0.0.1
acl netflix dstdomain .netflix.
acl redelocal src 192.168.0.1-192.168.0.254
acl vpn src 10.8.0.1-10.8.0.254
acl videoprime dstdomain .videoprime.
acl ip4 dstdomain 127.0.0.2
acl oi dstdomain 200.222.108.241
http_access allow ip
http_access allow payload
http_access allow local
http_access allow iplocal
http_access allow redelocal
http_access allow vpn
http_access allow ip4
http_access allow oi
http_access allow netflix
http_access allow videoprime
#http_port 80
http_port 8080
http_port 8799
http_port 3128
visible_hostname RNEOXBRASIL
http_access deny all
via off
forwarded_for off' >> /etc/squid3/squid.conf
service squid3 restart

	wget http://$IP/scripts/vpsmanager/scripts/addhost.sh -O /bin/addhost
	chmod +x /bin/addhost
	wget http://$IP/scripts/vpsmanager/scripts/alterarsenha.sh -O /bin/alterarsenha
	wget http://$IP/scripts/update/AlterarSenha.sh
	chmod 777 AlterarSenha.sh
	chmod +x /bin/alterarsenha
	wget http://$IP/scripts/vpsmanager/scripts/criarusuario2.sh -O /bin/criarusuario
	wget http://$IP/scripts/update/criarusuario.sh
	chmod 777 criarusuario.sh
	chmod +x /bin/criarusuario
	wget http://$IP/scripts/vpsmanager/scripts/delhost.sh -O /bin/delhost
	chmod +x /bin/delhost
	wget http://$IP/scripts/vpsmanager/scripts/expcleaner2.sh -O /bin/expcleaner
	chmod +x /bin/expcleaner
	wget http://$IP/scripts/vpsmanager/scripts/mudardata.sh -O /bin/mudardata
	chmod +x /bin/mudardata
	wget http://$IP/scripts/vpsmanager/scripts/remover.sh -O /bin/remover
	wget http://$IP/scripts/update/remover.sh
	chmod 777 remover.sh
	chmod +x /bin/remover
	wget http://$IP/scripts/vpsmanager/scripts/sshlimiter2.sh -O /bin/sshlimiter
	chmod +x /bin/sshlimiter
	wget http://$IP/scripts/vpsmanager/scripts/alterarlimite.sh -O /bin/alterarlimite
	wget http://$IP/scripts/update/alterarlimite.sh
    chmod 777 alterarlimite.sh
	chmod +x /bin/alterarlimite
	wget http://$IP/scripts/vpsmanager/scripts/ajuda.sh -O /bin/ajuda
	chmod +x /bin/ajuda
	wget http://$IP/scripts/vpsmanager/scripts/sshmonitor2.sh -O /bin/sshmonitor
	wget http://$IP/scripts/update/sshmonitor.sh
	chmod 777 sshmonitor.sh
	chmod +x /bin/sshmonitor
	wget http://$IP/scripts/update/KillUser.sh
	chmod 777 KillUser.sh
