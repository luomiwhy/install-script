```
mwd.indimmgg.xyz
johncmclean@protonmail.com

ppp.indimmgg.xyz

<!-- https://github.com/trojanpanel/install-script -->

docker pull p4gefau1t/trojan-go &&
    docker run -d --name trojan-go --restart=always \
      --network=host \
      -v /root/config-38443.json:"/etc/trojan-go/config.json" \
      -v /root/.local/share/caddy/certificates/acme-v02.api.letsencrypt.org-directory/ppp.indimmgg.buzz/:/tpdata/caddy/cert/ \
      p4gefau1t/trojan-go
```
