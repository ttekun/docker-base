FROM centos:5
MAINTAINER tacksangkim@gmail.com

RUN yum -y install sudo zip unzip passwd chpasswd wget curl 1> /dev/null && \
	yum clean all 1> /dev/null

# root:root
# dev:dev
RUN echo 'root:root' | chpasswd && \
	useradd dev && \
	echo 'dev:dev' | chpasswd dev && \
	chmod 755 /etc/sudoers && \
	echo "#includedir /etc/sudoers.d" >> /etc/sudoers && \
	chmod 440 /etc/sudoers && \
	test -d /etc/sudoers.d || mkdir /etc/sudoers.d && \
	chmod 755 /etc/sudoers.d && \
	echo "dev    ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/dev && \
	chmod 440 /etc/sudoers.d/dev

ENV JAVA_HOME /home/opt/jdk
ENV PATH $JAVA_HOME/bin:$PATH

CMD ["bash"]
