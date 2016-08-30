FROM fedora:23
MAINTAINER  Spyros Trigazis <strigazi@gmail.com>

ADD rexray-0.4-trustee-matmaul /usr/bin/

EXPOSE 7979

CMD ["/usr/bin/rexray-0.4-trustee-matmaul", "service", "start", "-f", "-l", "debug"]
