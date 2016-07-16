FROM ttekun/centos:5
MAINTAINER tacksangkim@gmail.com

ENV JDK_VERSION jdk1.8.0_91
ENV JDK_LINK_VERSION 8u91-b14
ENV JDK_RPM jdk-8u91-linux-x64.rpm
ENV JDK_HOME /home/opt/jdk

RUN mkdir /home/opt && \
	wget -q \
	--no-check-certificate \
	--no-cookies \
	--header "Cookie: oraclelicense=accept-securebackup-cookie" \
	http://download.oracle.com/otn-pub/java/jdk/${JDK_LINK_VERSION}/${JDK_RPM} -O ${JDK_RPM} && \
	rpm -ivh ${JDK_RPM} 1> /dev/null && \
	rm -fr ${JDK_RPM} && \
	ln -s /usr/java/${JDK_VERSION} ${JDK_HOME}

ENV JAVA_HOME ${JDK_HOME}
ENV PATH ${JAVA_HOME}/bin:${PATH}

CMD ["bash"]
