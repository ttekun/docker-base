# https://docs.docker.com/engine/reference/builder/
# https://hub.docker.com/_/centos/

# centos:7
# if you want another centos version, you can change centos:5 or centos:6.
FROM centos:7
MAINTAINER tacksangkim@gmail.com

RUN yum -y update && yum clean all && \
	yum -y install sudo zip unzip passwd chpasswd wget curl openssh openssh-server openssh-clients && \
	yum clean all

# root:root
# dev:dev
RUN echo 'root:root' | chpasswd && \
	useradd dev && \
	echo 'dev:dev' | chpasswd dev && \
	test -d /etc/sudoers.d || mkdir /etc/sudoers.d && \
	chmod 755 /etc/sudoers.d && \
	echo "dev    ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/dev && \
	chmod 440 /etc/sudoers.d/dev

RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config && \
	sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config

CMD ["bash"]
