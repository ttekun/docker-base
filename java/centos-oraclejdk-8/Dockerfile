#
# Oracle Java 8 Dockerfile
#

# Pull base image.
FROM ttekun/centos5

# Define JDK variables
ENV JDK_VERSION 8u65
ENV JDK_BUILD_NO b17
ENV JDK_RPM jdk-${JDK_VERSION}-linux-x64.rpm
ENV JDK_PREFIX /home/opt
END JDK_HOME /home/opt/jdk_1.8.0_65

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /home/opt/jdk

# Install Java.
RUN mkdir ${JDK_PREFIX} && \
  wget -q \
  --no-check-certificate \
  --no-cookies \
  --header "Cookie: oraclelicense=accept-securebackup-cookie" \
  http://download.oracle.com/otn-pub/java/jdk/${JDK_VERSION}-${JDK_BUILD_NO}/${JDK_RPM} -O ${JDK_RPM} && \
  rpm -ivh --prefix=${JDK_PREFIX} ${JDK_RPM} && \
  ln -s ${JDK_HOME} ${JAVA_HOME}

# Define default command.
CMD ["bash"]
