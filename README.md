# KERBEROS @edt ASIX M11

## ERIC ESCRIBA BERENGUE
## CURS 2018-2019

**REPOSITORI GENERL DE KERBEROS AMB DIRECTORIS PER CONFIGURAR UN SERVER,CLIENT DE KERBEROS**

**k18:khost**
CONFIG CLIENT KERBEROS

**k18:kserver** 	
CONFIG SERVER KERBEROS

**k18:sshd**
CONFIG SSH KERBEROS

**NOTA**

Primer engegar el kerberos abans que el sshd

docker run --rm --name kserver.edt.org -h kserver.edt.org --network mynet -d k18:kserver

docker run --rm --name sshd.edt.org -h sshd.edt.org --network mynet -d k18:sshd

docker run --rm --name khost -h khost --network mynet -it k18:hostpam


docker run --rm --name ldap.edt.org -h ldap.edt.org --network mynet -d edtasixm06/ldapserver:18group


 docker run --rm --name khost.edt.org -h khost.edt.org --network mynet -it eescriba/k18:khostpl 

