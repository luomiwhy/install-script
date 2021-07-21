#! /usr/bin env python3
# -- coding:utf-8 --
# pip3 install pyyaml

from urllib.request import urlopen
import yaml

url="https://raw.githubusercontent.com/Loyalsoldier/clash-rules/release/direct.txt"
dic = yaml.safe_load(urlopen(url).read())

# print(type(dic), dir(dic))
# print(dic)

for d in dic["payload"]:
    

