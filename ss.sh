# os： Debian 8/9

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
#timedatectl set-timezone Asia/Shanghai
apt install -y vim mysql-server
vim /etc/ssh/sshd_config


#https://github.com/ylx2016/Linux-NetSpeed
wget -O tcpx.sh "https://github.com/ylx2016/Linux-NetSpeed/raw/master/tcpx.sh" && chmod +x tcpx.sh && ./tcpx.sh


uname -a
sysctl net.ipv4.tcp_available_congestion_control
sysctl net.ipv4.tcp_congestion_control
sysctl net.core.default_qdisc
lsmod | grep bbr

# go install
wget https://studygolang.com/dl/golang/go1.19.2.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.2.linux-amd64.tar.gz

vi /etc/profile
export PATH=$PATH:/usr/local/go/bin

source /etc/profile
go version
# go install


# tcp加速 kcptun、bbrplus、锐速、dog-tunnel、rescue被抢vps
# 转发 socat.sh


mysql -u root -p
GRANT ALL PRIVILEGES ON *.* TO 'll'@'localhost' IDENTIFIED BY '2wsx3edc' WITH GRANT OPTION;
FLUSH PRIVILEGES;
# https://github.com/Jrohy/trojan/
source <(curl -sL https://git.io/trojan-install)
# byl.mgdianzi.xyz

# https://tunnelbroker.net/   ipv6隧道   https://agou-ops.cn/post/%E8%A7%A3%E5%86%B3vps%E9%A2%91%E7%B9%81google%E4%BA%BA%E6%9C%BA%E9%AA%8C%E8%AF%81ip%E8%A2%AB%E5%A2%99/

# vps kms
