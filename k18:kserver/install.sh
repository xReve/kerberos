#! /bin/bash

cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf
cp /opt/docker/kadm5.acl /var/kerberos/krb5kdc/kadm5.acl


/usr/sbin/kdb5_util create -s -P masterkey

kadmin.local addprinc -pw kisx47983457	isx47983457
kadmin.local addprinc -pw kpere pere
kadmin.local addprinc -pw kpau pau
kadmin.local addprinc -pw kanna anna
kadmin.local addprinc -pw kmarta marta/admin
kadmin.local addprinc -pw kjordi jordi
kadmin.local addprinc -pw superuser superuser
kadmin.local addprinc -pw kjulia julia 
