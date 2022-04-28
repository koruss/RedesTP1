#!/bin/sh

# iptables -t nat -A POSTROUTING -o $WAN_IFACE -j MASQUERADE
# iptables -A FORWARD -i $WAN_IFACE -o $paru  -m state --state RELATED,ESTABLISHED -j ACCEPT
# iptables -A FORWARD -i $LAN_IFACE -o $WAN_IFACE -j ACCEPT

#iptables -A OUTPUT -p udp -j ACCEPT
iptables --append INPUT  --jump ACCEPT #acepta todo el trafico de entrada
iptables --append FORWARD --jump ACCEPT # acepta todo el trafico de forwardeo
iptables --append OUTPUT --jump ACCEPT # permite sacar cualquier trafico



while true; do sleep 3600; done