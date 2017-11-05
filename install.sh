#!/bin/bash
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
forwarded_for off
#cache deny all' >> /etc/squid/squid.conf
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
forwarded_for off
#cache deny all' >> /etc/squid3/squid.conf
service squid3 restart

	https://raw.githubusercontent.com/matheuslarcher20/Painel_install/master/AlterarSenha.sh -O /bin/alterarsenha
	chmod 777 AlterarSenha.sh
	chmod +x /bin/alterarsenha
	wget https://raw.githubusercontent.com/matheuslarcher20/Painel_install/master/criarusuario.sh -O /bin/criarusuario
	chmod 777 criarusuario.sh
	chmod +x /bin/criarusuario
	wget https://raw.githubusercontent.com/matheuslarcher20/Painel_install/master/remover.sh -O /bin/remover
	chmod 777 remover.sh
	chmod +x /bin/remover
	wget https://raw.githubusercontent.com/matheuslarcher20/Painel_install/master/alterarlimite.sh -O /bin/alterarlimite
    chmod 777 alterarlimite.sh
	chmod +x /bin/alterarlimite
	wget https://raw.githubusercontent.com/matheuslarcher20/Painel_install/master/sshmonitor.sh -O /bin/sshmonitor
	chmod 777 sshmonitor.sh
	chmod +x /bin/sshmonitor
	wget https://raw.githubusercontent.com/matheuslarcher20/Painel_install/master/KillUser.sh -O /bin/KillUser
	chmod 777 KillUser.sh
	chmod +x /bin/KillUser
