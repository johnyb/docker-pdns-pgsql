FROM centos

MAINTAINER Julian Bäume <julian@svg4all.de>

RUN yum -y update && yum -y install epel-release && yum -y install postgresql pdns pdns-backend-postgresql && yum clean all

COPY ["setup.sql", "/setup.sql"]
COPY ["entrypoint.sh", "/entrypoint.sh"]
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

