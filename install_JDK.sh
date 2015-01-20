#!/bin/sh
#author: isme
#time:   2015-1-20
#默认文件位置: /opt/jdk-7u60-linux-x64.tar.gz
echo "-------------------install JDK starting --------------"
chmod 750 /opt/jdk-7u60-linux-x64.tar.gz
tar -zxvf /opt/jdk-7u60-linux-x64.tar.gz -C /usr/local/ >>/dev/null
mv /usr/local/jdk1.7.0_60 /usr/local/java
echo "" >> /etc/profile
echo "#--------------------jdk 1.7---------------------------" >> /etc/profile
echo "export JAVA_HOME=\"/usr/local/java\"" >> /etc/profile
echo "export JAVA=\"\$JAVA_HOME/bin\"" >> /etc/profile
echo "export PATH=\"\$JAVA:\$JAVA_HOME:\$PATH\"" >> /etc/profile
echo "export CLASSPATH=\".:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar\"" >> /etc/profile
echo "#--------------------jdk 1.7---------------------------" >> /etc/profile
java -version
source /etc/profile
echo "--------------------java -version --------------------"
java -version
echo "------------------- install JDK SUCCESS :) -----------"
