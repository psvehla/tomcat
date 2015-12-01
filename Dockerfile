FROM ipricegroup/ubuntu-oracle-java-8
MAINTAINER Peter Svehla
RUN apt-get -y install tomcat7
RUN apt-get -y update
RUN echo "JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> /etc/default/tomcat7
ADD run.sh /root/run.sh
RUN chmod +x /root/run.sh
EXPOSE 8080
CMD ["/root/run.sh"]