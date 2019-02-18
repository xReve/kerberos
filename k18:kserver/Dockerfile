FROM fedora:27
RUN mkdir /opt/docker
RUN dnf -y install krb5-server krb5-workstation krb5-libs vim procps tree
RUN mkdir /opt/docker
COPY * /opt/docker
COPY krb5.conf /etc/krb5.conf
COPY kdc.conf /var/kerberos/krb5kdc/kdc.conf
COPY kadm5.acl /var/kerberos/krb5kdc/kadm5.acl

