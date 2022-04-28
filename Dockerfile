FROM alpine:latest

COPY start.sh /
RUN chmod +x /start.sh
RUN apk add -u iptables --no-cache > /dev/null
CMD /start.sh
