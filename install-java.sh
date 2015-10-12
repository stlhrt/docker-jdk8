# Information Of Package
#!/bin/sh
JDK_VERSION=jdk1.8.0_60
JDK_PACKAGE=jdk-8u60-linux-x64.tar.gz
JDK_LINK=http://download.oracle.com/otn-pub/java/jdk/8u60-b27/$JDK_PACKAGE

# Java
echo $JDK_LINK
cd /tmp && \
curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k $JDK_LINK && \
tar -zxf /tmp/$JDK_PACKAGE -C /usr/local && \
ln -s /usr/local/$JDK_VERSION /usr/local/java && \
rm -rf /tmp/* /var/tmp/*
