FROM ttekun/centos5-oraclejdk:8
MAINTAINER tacksangkim@gmail.com

ENV TOMCAT_MAJOR 8
ENV TOMCAT_VERSION 8.0.36
ENV CATALINA_HOME /home/opt/tomcat
ENV JAVA_OPTS ""

RUN wget -q \
	http://www-us.apache.org/dist/tomcat/tomcat-${TOMCAT_MAJOR}/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
	tar xvzf apache-tomcat-${TOMCAT_VERSION}.tar.gz -C /home/opt 1> /dev/null && \  
	rm -fr apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
	ln -s /home/opt/apache-tomcat-${TOMCAT_VERSION} ${CATALINA_HOME} && \
    rm -fr ${CATALINA_HOME}/webapps/examples && \
    rm -fr ${CATALINA_HOME}/webapps/docs && \
	chmod -R +x ${CATALINA_HOME}/bin/*.sh

ADD create_tomcat_admin_user.sh /create_tomcat_admin_user.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh

EXPOSE 8080
CMD ["/run.sh"]
