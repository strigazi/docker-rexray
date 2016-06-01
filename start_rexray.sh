#!/bin/bash
#set -e

if [ -f /etc/rexray/rexray.conf ]
then
    echo "rexray already configured... skip configuration"
else
    cd /etc/rexray/
    echo "No rexray configuration found.... Creating it from template and container parameters"
    cp rexray-openstack.conf rexray.conf
    sed -i "s/OSTACK_AUTH_URL/$OSTACK_AUTH_URL/g" rexray.conf
    sed -i "s/OSTACK_USERNAME/$OSTACK_USERNAME/g" rexray.conf
    sed -i "s/OSTACK_PASSWORD/$OSTACK_PASSWORD/g" rexray.conf
    sed -i "s/OSTACK_TENANT/$OSTACK_TENANT/g" rexray.conf
    sed -i "s/OSTACK_REGION/$OSTACK_REGION/g" rexray.conf
fi

/usr/bin/rexray version
/usr/bin/rexray -f --logLevel=info --host=tcp://7979


