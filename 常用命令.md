### 文本替换
```bash
sed -i "" "s/w4#odQd2ttoDxHtR/****/g" `grep w4#odQd2ttoDxHtR -rl *`
```

### iptables ip 请求重定向
```bash
sudo iptables -t nat -A OUTPUT -d 10.244/16 -j DNAT --to-destination 192.168.121.128
```

### 解除全部uwp应用的网络隔离
```bash
FOR /F "tokens=11 delims=\" %p IN ('REG QUERY "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Mappings"') DO CheckNetIsolation.exe LoopbackExempt -a -p=%p

```
