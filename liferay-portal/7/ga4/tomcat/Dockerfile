FROM liferay/jdk:8-openjdk
MAINTAINER Manuel de la Peña <manuel.delapenya@liferay.com>

ENV LIFERAY_HOME=/usr/local/liferay-ce-portal-7.0-ga4
ENV CATALINA_HOME=$LIFERAY_HOME/tomcat-8.0.32
ENV PATH=$CATALINA_HOME/bin:$PATH
ENV LIFERAY_TOMCAT_URL=https://sourceforge.net/projects/lportal/files/Liferay%20Portal/7.0.3%20GA4/liferay-ce-portal-tomcat-7.0-ga4-20170613175008905.zip/download

WORKDIR /usr/local

RUN apt-get update \
  && apt-get install -y curl telnet \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && groupadd -r liferay && useradd -r -g liferay liferay \
  && set -x \
  && mkdir -p "$LIFERAY_HOME" \
  && curl -fSL "$LIFERAY_TOMCAT_URL" -o liferay-ce-portal-tomcat-7.0-ga4-20170613175008905.zip \
  && unzip liferay-ce-portal-tomcat-7.0-ga4-20170613175008905.zip \
  && rm liferay-ce-portal-tomcat-7.0-ga4-20170613175008905.zip \
  && chown -R liferay:liferay $LIFERAY_HOME

USER liferay

EXPOSE 8080/tcp
EXPOSE 11311/tcp

ENTRYPOINT ["catalina.sh", "run"]
