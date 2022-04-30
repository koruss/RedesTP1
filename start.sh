#!/bin/sh

# iptables -t nat -A POSTROUTING -o $WAN_IFACE -j MASQUERADE
# iptables -A FORWARD -i $WAN_IFACE -o $paru  -m state --state RELATED,ESTABLISHED -j ACCEPT
# iptables -A FORWARD -i $LAN_IFACE -o $WAN_IFACE -j ACCEPT

#iptables -A OUTPUT -p udp -j ACCEPT
iptables --append INPUT  --jump ACCEPT #acepta todo el trafico de entrada
iptables --append FORWARD --jump ACCEPT # acepta todo el trafico de forwardeo
iptables --append OUTPUT --jump ACCEPT # permite sacar cualquier trafico
iptables -t nat -L -n #lista todo el flujo 


# Los comandos nuevos
#iptables --append INPUT --protocol tcp --dport 443 --jump ACCEPT # permite todo el flujo por el puerto 443
#iptables --append OUTPUT --protocol tcp --dport 80 --jump ACCEPT
#iptables --append OUTPUT --protocol udp --jump ACCEPT # salida por udp
iptables --append INPUT --protocol -p tcp --dport 443 --jump DROP -i eth0 #  no deja entrar nada en tcp en la red eno1
#iptables --append INPUT --protocol tcp --src 10.0.0.0/24 --sport 80 --dst 10.0.0.20 --dport 80 --jump ACCEPT # envia el flujo del puerto 80 al proxy
#iptables --append INPUT --protocol tcp --src 10.0.0.0/24 --sport 443 --dst 10.0.0.20 --dport 80 --jump ACCEPT # envia el flujo del puerto 443 al proxy
#iptables --append INPUT --protocol tcp --src 10.0.0.0/24 --sport 3128 --dst 10.0.0.7 --dport 80 --jump ACCEPT # evia del 3128 al web cache
#iptables --append INPUT --protocol tcp --src 10.0.0.0/24 --sport 8443 --dst 10.0.0.7 --dport 80 --jump ACCEPT # evia del 3128 al web cache

while true; do sleep 3600; done