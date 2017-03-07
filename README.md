# Quick start
Launch the container by passing an aappropriate config.yml file with your
openstack credential:

config.yml:
    libstorage:
      logging:
        level: info
      service: openstack
      integration:
        volume:
          operations:
            mount:
              preempt: $REXRAY_PREEMPT
    openstack:
      authUrl:  $AUTH_URL
      userID:   $TRUSTEE_USER_ID
      password: $TRUSTEE_PASSWORD
      trustID:  $TRUST_ID

Run the container:
    docker run -d --name=rexray --privileged -p 7979:7979 \
    -v /run/docker/plugins:/run/docker/plugins \
    -v /var/lib/rexray:/var/lib/rexray:z \
    -v /var/log/rexray:/var/log/rexray \
    -v /var/run/rexray:/var/run/rexray \
    -v /dev:/dev \
    -v config.yml:/etc/rexray/config.yml \
    strigazi/rexray:alpine
