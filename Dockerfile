FROM centos

MAINTAINER Julian Bäume <julian@svg4all.de>

RUN yum -y update && yum -y install epel-release && yum -y install pdns pdns-backend-postgresql && yum clean all

CMD ["/usr/sbin/pdns_server"]

