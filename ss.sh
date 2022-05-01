# os： Debian 8/9

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
#timedatectl set-timezone Asia/Shanghai
apt install -y vim mysql-server
vim /etc/ssh/sshd_config


https://github.com/ylx2016/Linux-NetSpeed
#wget -N --no-check-certificate "https://github.000060000.xyz/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
wget -N "https://github.000060000.xyz/tcpx.sh" && chmod +x tcpx.sh && ./tcpx.sh


uname -a
sysctl net.ipv4.tcp_available_congestion_control
sysctl net.ipv4.tcp_congestion_control
sysctl net.core.default_qdisc
lsmod | grep bbr


# tcp加速 kcptun、bbrplus、锐速、dog-tunnel、rescue被抢vps
# 转发 socat.sh


mysql -u root -p
GRANT ALL PRIVILEGES ON *.* TO 'll'@'localhost' IDENTIFIED BY '2wsx3edc' WITH GRANT OPTION;
FLUSH PRIVILEGES;
# https://github.com/Jrohy/trojan/
source <(curl -sL https://git.io/trojan-install)
# byl.mgdianzi.xyz

# https://tunnelbroker.net/   ipv6隧道
