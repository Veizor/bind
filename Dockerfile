FROM veizor/base:latest

LABEL maintainer "Aurimas Niekis <aurimas@niekis.lt>"

RUN apk --no-cache add bind bind-tools

CMD ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-g", "-u", "named", "-4"]
