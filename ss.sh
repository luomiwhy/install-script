ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
timedatectl set-timezone Asia/Shanghai

yum install -y vim wget net-tools yum-utils gcc g++ 

wget --no-check-certificate -O shadowsocks-libev.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev.sh

chmod +x shadowsocks-libev.sh

./shadowsocks-libev.sh

sed -i 's/\#baseurl/baseurl/g' /etc/yum.repos.d/epel.repo
sed -i 's/metalink/\#metalink/g' /etc/yum.repos.d/epel.repo

firewall-cmd --zone=public --list-ports

wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh"
chmod +x tcp.sh
./tcp.sh

uname -r
sysctl net.ipv4.tcp_available_congestion_control
sysctl net.ipv4.tcp_congestion_control
sysctl net.core.default_qdisc
lsmod | grep bbr


# tcp加速 kcptun、bbrplus、锐速、dog-tunnel、rescue被抢vps
