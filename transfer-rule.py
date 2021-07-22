#! /usr/bin env python3
# -- coding:utf-8 --
# pip3 install pyyaml

from urllib.request import urlopen

source = [
    {
        "url": "https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/reject.txt",
        "diversion": "REJECT"
    },
    {
        "url": "https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/direct.txt",
        "diversion": "DIRECT"
    },
    {
        "url": "https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/apple.txt",
        "diversion": "DIRECT"
    },
    {
        "url": "https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/icloud.txt",
        "diversion": "DIRECT"
    },
    {
        "url": "https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/google.txt",
        "diversion": "DIRECT"
    },
    {
        "url": "https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/cncidr.txt",
        "diversion": "DIRECT"
    },
    {
        "url": "https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/proxy.txt",
        "diversion": "PROXY"
    },
    {
        "url": "https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/gfw.txt",
        "diversion": "PROXY"
    },
    {
        "url": "https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/greatfire.txt",
        "diversion": "PROXY"
    },
    {
        "url": "https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/tld-not-cn.txt",
        "diversion": "PROXY"
    },
    {
        "url": "https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/ruleset/telegramcidr.txt",
        "diversion": "PROXY"
    }
]


def generateRules(url, diversion) :
    dic = urlopen(url).read()
    dic = dic.decode()
    # print(type(dic), dir(dic))
    # print(dic)
    rule = []
    for d in dic.splitlines():
        rule.append(d+","+diversion)
    return rule


ruleAll = []
for m in source:
    ruleAll.extend(generateRules(m["url"], m["diversion"]))

with open("spectre.rules", "w") as f:
    f.writelines("[Rule]",)
    f.write("\n")
    f.writelines("DOMAIN-SUFFIX,cn,DIRECT")
    f.write("\n")
    for r in ruleAll:
        f.writelines(r)
        f.write("\n")
    f.writelines("GEOIP,CN,DIRECT")
    f.write("\n")
    f.writelines("FINAL,PROXY")
    f.write("\n")
