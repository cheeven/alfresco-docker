#/bin/sh

export JAVA_OPTS="-XX:MaxPermSize=4g -XX:PermSize=4g -Xms512m -XX:-DisableExplicitGC -Djava.awt.headless=true -Dalfresco.home=/opt/alfresco -Dcom.sun.management.jmxremote -Dsun.security.ssl.allowUnsafeRenegotiation=true"

export JAVA_HOME=/opt/alfresco/java

export CATALINA_OPTS="$CATALINA_OPTS
  -Ddb.driver=$DB_DRIVER \
  -Ddb.url=$DB_JDBC_URL \
  -Ddb.name=$DB_NAME \
  -Ddb.username=$DB_USERNAME \
  -Ddb.password=$DB_PASSWORD "

/opt/alfresco/tomcat/bin/catalina.sh run
