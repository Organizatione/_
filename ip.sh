#!/bin/bash

ip link set ens33 down
ip addr flush dev ens33

ip link set ens33 up
ip addr add 192.168.1.200/24 broadcast 192.168.1.255 dev ens33
ip route add default via 192.168.1.1

echo "# Dynamic resolv.conf(5) file for glibc resolver(3) generated by resolvconf(8)" > /etc/resolv.conf
echo "# #     DO NOT EDIT THIS FILE BY HAND -- YOUR CHANGES WILL BE OVERWRITTEN" >> /etc/resolv.conf
#echo "nameserver 8.8.8.8" >> /etc/resolv.conf
#echo "nameserver 8.8.4.4" >> /etc/resolv.conf
#echo "nameserver 208.67.222.222" >> /etc/resolv.conf
#echo "nameserver 208.67.220.220" >> /etc/resolv.conf
#echo "nameserver 8.8.8.8" >> /etc/resolv.conf
#echo "nameserver 8.8.4.4" >> /etc/resolv.conf
echo "nameserver 192.168.1.1" >> /etc/resolv.conf
