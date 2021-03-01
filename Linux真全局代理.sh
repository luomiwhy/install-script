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
