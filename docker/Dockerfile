#Source: https://hub.docker.com/r/corux/centos7-salt/~/dockerfile/
FROM centos:7
RUN yum -y update
RUN yum -y install sudo openssh-server openssh-clients

RUN yum -y install https://repo.saltstack.com/yum/redhat/salt-repo-latest-1.el7.noarch.rpm
RUN yum -y install salt-minion
RUN systemctl enable salt-minion.service;

#VOLUME /srv/salt-source
#VOLUME /srv/scripts

#CMD "sudo /usr/bin/salt-minion"
CMD ["/usr/sbin/init"]
