#! /usr/bin env python3
# -- coding:utf-8 --
# pip3 install pyyaml

from urllib.request import urlopen

source = [
    {
        "url": "https://cdn.jsdelivr.net/gh/Loyalsoldier/surge-rules@release/direct.txt",
        "diversion": "DIRECT"
    }
]


def generateRules(url, diversion) :
    dic = urlopen(url).read()
    dic = dic.decode()
    # print(type(dic), dir(dic))
    # print(dic)
    rule = []
    for d in dic.splitlines():
        if d.startswith("."):
            rule.append("DOMAIN-SUFFIX,"+d[1:]+","+diversion)
        else:
            rule.append("DOMAIN,"+d+","+diversion)
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

