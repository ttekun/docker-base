FROM ttekun/centos5
MAINTAINER tacksangkim@gmail.com

RUN yum install -y libaio bc

#Download RPM file from oracle web site
#http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html
ADD assets/oracle-xe-11.2.0-1.0.x86_64.rpm.zip /tmp/oracle-xe-11.2.0-1.0.x86_64.rpm.zip
CMD unzip /tmp/oracle-xe-11.2.0-1.0.x86_64.rpm.zip

RUN unzip /tmp/oracle-xe-11.2.0-1.0.x86_64.rpm.zip && \
  rpm -ivh /tmp/oracle-xe-11.2.0-1.0.x86_64.rpm && \
  rm -f /tmp/oracle-xe-11.2.0-1.0.x86_64.rpm

RUN /etc/init.d/oracle-xe configure responseFile=/tmp/xe.rsp

CMD echo 'export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe' >> /etc/bash.bashrc
CMD echo 'export PATH=$ORACLE_HOME/bin:$PATH' >> /etc/bash.bashrc
CMD echo 'export ORACLE_SID=XE' >> /etc/bash.bashrc
