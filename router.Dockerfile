FROM alpine:latest

COPY start.sh /
RUN chmod +x /start.sh
RUN apk add -u iptables --no-cache > /dev/null
RUN apk add curl 
RUN apk add nano
#RUN sysctl -w net.ipv4.ip_forward=1
CMD /start.sh 

