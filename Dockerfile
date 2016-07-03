FROM fedora:23
MAINTAINER  Spyros Trigazis <strigazi@gmail.com>

RUN dnf install -y dmidecode which sudo
RUN /usr/bin/curl -sSL https://dl.bintray.com/emccode/rexray/install | sh -s stable 0.3.3

EXPOSE 7979

CMD ["/usr/bin/rexray", "service", "start", "-f", "-l", "debug", "--host=tcp://:7979"]
