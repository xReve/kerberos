#! /bin/bash

/opt/docker/install.sh && echo "OK install"
/usr/sbin/krb5kdc 
/usr/sbin/kadmind -nofork

