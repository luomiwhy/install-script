yum install -y vim wget net-tools yum-utils gcc g++ 

wget --no-check-certificate -O shadowsocks-libev.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev.sh

chmod +x shadowsocks-libev.sh

./shadowsocks-libev.sh

firewall-cmd --zone=public --list-ports

wget -N --no-check-certificate "https://github.com/cx9208/bbrplus/raw/master/ok_bbrplus_centos.sh" 
chmod +x ok_bbrplus_centos.sh
./ok_bbrplus_centos.sh

uname -r
sysctl net.ipv4.tcp_available_congestion_control
sysctl net.ipv4.tcp_congestion_control
sysctl net.core.default_qdisc
lsmod | grep bbr
