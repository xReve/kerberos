#! /bin/bash

cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf
cp /opt/docker/kadm5.acl /var/kerberos/krb5kdc/kadm5.acl


/usr/sbin/kdb5_util create -s -P masterkey

kadmin.local -q "addprinc -pw kisx47983457 isx47983457"
kadmin.local -q "addprinc -pw kpere pere"
kadmin.local -q "addprinc -pw kpau pau"
kadmin.local -q "addprinc -pw kanna anna"
kadmin.local -q "addprinc -pw kmarta marta/admin"
kadmin.local -q "addprinc -pw kjordi jordi"
kadmin.local -q "addprinc -pw superuser superuser"
kadmin.local -q "addprinc -pw kjulia julia"
kadmin.local -q "addprinc -pw kuser01 user01"
kadmin.local -q "addprinc -pw kuser02 user02"
kadmin.local -q "addprinc -pw kuser03 user03"
kadmin.local -q "addprinc -randkey sshd.edt.org" 

