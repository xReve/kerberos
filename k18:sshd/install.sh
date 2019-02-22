#! /bin/bash

cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/sshd_config /etc/ssh/sshd_config
#cp /opt/docker/krb5.keytab /etc/krb5.keytab

groupadd local01
groupadd kusers

useradd -g users -G local01 local01
useradd -g users -G local01 local02
useradd -g users -G local01 local03
useradd -g users -G kusers user01
useradd -g users -G kusers user02
useradd -g users -G kusers user03


echo "local01" | passwd --stdin local01
echo "local02" | passwd --stdin local02
echo "local03" | passwd --stdin local03

ssh-keygen -A
kadmin -p marta/admin -w kmarta -q "ktadd -k /etc/krb5.keytab host/sshd.edt.org"

