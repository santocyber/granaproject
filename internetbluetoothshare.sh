#!/bin/bash


## Internet connection shating script 
## For bluetooth share install blueman 
## add ip route gw on resolv.conf
## 


sysctl -w net.ipv4.ip_forward=1
sysctl -p
iptables -X
iptables -F
iptables -t nat -X
iptables -t nat -F
iptables -I INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -I FORWARD  -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -t nat -I POSTROUTING -o wlp2s0 -j MASQUERADE
iptables -A FORWARD -i pan1 -o wlp2s0 -j ACCEPT
iptables -A FORWARD -o pan1 -i wlp2s0 -j ACCEPT
