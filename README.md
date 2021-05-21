### 文本替换
```bash
sed -i "" "s/w4#odQd2ttoDxHtR/****/g" `grep w4#odQd2ttoDxHtR -rl *`
```

### 获取git模块修改
```bash
git diff origin/xxx  origin/master --name-only | cut -d "/" -f 1 | sort | uniq
```

### iptables ip 请求重定向
```bash
sudo iptables -t nat -A OUTPUT -d 10.244/16 -j DNAT --to-destination 192.168.121.128
```

### 解除全部uwp应用的网络隔离
```bash
FOR /F "tokens=11 delims=\" %p IN ('REG QUERY "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Mappings"') DO CheckNetIsolation.exe LoopbackExempt -a -p=%p

```

### Git设置代理
1. http || https协议
```bash
//设置全局代理
//http
git config --global https.proxy http://127.0.0.1:1080
//https
git config --global https.proxy https://127.0.0.1:1080
//使用socks5代理的 例如ss，ssr 1080是windows下ss的默认代理端口,mac下不同，或者有自定义的，根据自己的改
git config --global http.proxy socks5://127.0.0.1:1080
git config --global https.proxy socks5://127.0.0.1:1080
//取消全局代理
git config --global --unset http.proxy
git config --global --unset https.proxy

//只对github.com使用代理，其他仓库不走代理
git config --global http.https://github.com.proxy socks5://127.0.0.1:1080
git config --global https.https://github.com.proxy socks5://127.0.0.1:1080
//取消github代理
git config --global --unset http.https://github.com.proxy
git config --global --unset https.https://github.com.proxy
```

2. SSH协议
```bash
//对于使用git@协议的，可以配置socks5代理
//在~/.ssh/config 文件后面添加几行，没有可以新建一个
//socks5
Host github.com
User git
ProxyCommand connect -S 127.0.0.1:1080 %h %p

//http || https
Host github.com
User git
ProxyCommand connect -H 127.0.0.1:1080 %h %p
```
