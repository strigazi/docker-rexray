FROM ubuntu
MAINTAINER  Bertrand Retif <bertrand@sudokeys.com>

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get install -yq curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN /usr/bin/curl -sSL https://dl.bintray.com/emccode/rexray/install | sh -s stable

ENTRYPOINT ["/bin/bash"]
