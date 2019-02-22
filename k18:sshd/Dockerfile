FROM fedora:27
LABEL author="eescriba"
LABEL description="SSH SERVER"
RUN dnf -y install openssh-server openssh-clients krb5-workstation passwd vim procps tree
RUN mkdir /opt/docker
COPY * /opt/docker/
WORKDIR /opt/docker
RUN chmod +x /opt/docker/startup.sh /opt/docker/install.sh
CMD ["/opt/docker/startup.sh"]

