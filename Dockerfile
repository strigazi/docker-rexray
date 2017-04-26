FROM fedora:25
MAINTAINER  Spyros Trigazis <strigazi@gmail.com>

RUN dnf install -y dmidecode which sudo
COPY rexray-glibc /usr/bin/rexray
RUN /bin/chmod +x /usr/bin/rexray

EXPOSE 7979

CMD ["/usr/bin/rexray", "service", "start", "-f", "-l", "info"]
