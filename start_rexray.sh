#!/bin/bash
#set -e

if [ -f /etc/rexray/config.yml ]
then
    echo "rexray already configured... skip configuration"
else
    cd /etc/rexray/
    echo "No config.yml configuration found.... Creating it from template and container parameters"
    cp /etc/rexray/rexray-openstack.conf /etc/rexray/config.yml
    sed -i "s|OSTACK_AUTH_URL|$OSTACK_AUTH_URL|g" /etc/rexray/config.yml
    sed -i "s/OSTACK_USERNAME/$OSTACK_USERNAME/g" /etc/rexray/config.yml
    sed -i "s/OSTACK_PASSWORD/$OSTACK_PASSWORD/g" /etc/rexray/config.yml
    sed -i "s/OSTACK_TENANT/$OSTACK_TENANT/g" /etc/rexray/config.yml
    sed -i "s/OSTACK_REGION/$OSTACK_REGION/g" /etc/rexray/config.yml
fi

/usr/bin/rexray version
/usr/bin/rexray start -f --logLevel=info --host=tcp://7979


