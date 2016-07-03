# docker-rexray
Run rexray service in docker

    docker run -d --name=rexray --privileged -p 7979:7979 \
    -v /run/docker/plugins:/run/docker/plugins \
    -v /var/lib/rexray:/var/lib/rexray:z \
    -v /var/run/rexray:/var/run/rexray \
    -v /dev:/dev \
    -v /tmp/rexray/config.yml:/etc/rexray/config.yml \
    strigazi/docker-rexray:fedora
