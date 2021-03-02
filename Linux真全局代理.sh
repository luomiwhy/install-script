sudo apt install redsocks

# 修改配置文件
sudo vim /etc/redsocks.conf

#!/bin/bash 
# Create new chain 
sudo iptables -t nat -N REDSOCKS 
#请用你的shadowsocks服务器的地址替换$SERVER_IP
sudo iptables -t nat -A OUTPUT -d $SERVER_IP -j RETURN
#不重定向私有地址的流量
sudo iptables -t nat -A OUTPUT -d 10.0.0.0/8 -j RETURN
sudo iptables -t nat -A OUTPUT -d 172.16.0.0/16 -j RETURN
sudo iptables -t nat -A OUTPUT -d 192.168.0.0/16 -j RETURN
#不重定向保留地址的流量,这一步很重要
sudo iptables -t nat -A OUTPUT -d 127.0.0.0/8 -j RETURN

#重定向所有不满足以上条件的流量到redsocks监听的12345端口
#12345是你的redsocks运行的端口,请根据你的情况替换它
sudo iptables -t nat -A OUTPUT -p tcp -j REDIRECT --to-ports 12345


## -------------------------------------------


sudo apt install -y proxychains

find /usr/ -name libproxychains.so.3 -print
sudo vim /usr/bin/proxychains


mkdir -p  ~/.proxychains/
cat <<EOF | tee ~/.proxychains/proxychains.conf
strict_chain
proxy_dns 
remote_dns_subnet 224
tcp_read_time_out 15000
tcp_connect_time_out 8000
localnet 127.0.0.0/255.0.0.0
quiet_mode

[ProxyList]
http  10.147.19.82 7890
EOF
