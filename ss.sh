ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
timedatectl set-timezone Asia/Shanghai

https://github.com/ylx2016/Linux-NetSpeed
wget -N --no-check-certificate "https://github.000060000.xyz/tcp.sh" && chmod +x tcp.sh && ./tcp.sh



#wget --no-check-certificate -O shadowsocks-libev.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev-debian.sh
wget --no-check-certificate -O shadowsocks.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh
chmod +x shadowsocks.sh
./shadowsocks.sh


uname -r
sysctl net.ipv4.tcp_available_congestion_control
sysctl net.ipv4.tcp_congestion_control
sysctl net.core.default_qdisc
lsmod | grep bbr


# tcp加速 kcptun、bbrplus、锐速、dog-tunnel、rescue被抢vps
# 转发 socat.sh

# https://github.com/Jrohy/trojan/
source <(curl -sL https://git.io/trojan-install)
# byl.mgdianzi.xyz

