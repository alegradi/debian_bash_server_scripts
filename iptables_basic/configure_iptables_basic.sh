#!/bin/bash
# iptables configuration script for initial setup
# must be run as root

# script - start
# disable ufw
ufw disable

# flush all current rules
iptables -F

# allow ssh on tcp port 22
iptables -A INPUT -p tcp --dport 22 -j ACCEPT

# setting default policies
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

# loopback
iptables -A INPUT -i lo -j ACCEPT

# accept packets belonging to established connections
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

#
# save settings
#
iptables-save > /root/iptables_rules.txt

# print rules
iptables -L -v

