#!/bin/bash
# copied https://github.com/ClouDesire/docker-tomcat/blob/master/8.0-jre8/run.sh

if [ ! -f /.tomcat_admin_created ]; then
    /create_tomcat_admin_user.sh
fi

export CATALINA_OPTS="$CATALINA_OPTS ${JAVA_OPTS}"

exec ${CATALINA_HOME}/bin/catalina.sh run