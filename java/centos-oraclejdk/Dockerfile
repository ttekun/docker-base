# https://docs.docker.com/engine/reference/builder/
# http://www.oracle.com/technetwork/java/javase/downloads/index.html

FROM ttekun/centos:7
MAINTAINER tacksangkim@gmail.com

RUN mkdir /home/opt && \
  wget -q \
  --no-check-certificate \
  --no-cookies \
  --header "Cookie: oraclelicense=accept-securebackup-cookie" \
  http://download.oracle.com/otn-pub/java/jdk/8u66-b17/jdk-8u66-linux-x64.rpm -O jdk-8u66-linux-x64.rpm && \
  rpm -ivh --prefix=/home/opt jdk-8u66-linux-x64.rpm && \
  ln -s /home/opt/jdk_1.8.0_66 ${JAVA_HOME}

ENV JAVA_HOME /home/opt/jdk
ENV PATH $JAVA_HOME/bin:$PATH

EXPOSE 22
ENTRYPOINT [ "/usr/sbin/sshd", "-D" ]
