FROM liferay/jdk:8-openjdk
MAINTAINER Manuel de la Peña <manuel.delapenya@liferay.com>

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

ENV LIFERAY_HOME=/usr/local/liferay-ce-portal-7.0-ga3

RUN mkdir -p "$LIFERAY_HOME"

ENV CATALINA_HOME=$LIFERAY_HOME/tomcat-8.0.32

ENV PATH=$CATALINA_HOME/bin:$PATH

ENV LIFERAY_TOMCAT_URL=https://sourceforge.net/projects/lportal/files/Liferay%20Portal/7.0.2%20GA3/liferay-ce-portal-tomcat-7.0-ga3-20160804222206210.zip/download

WORKDIR /usr/local

RUN set -x \
			&& curl -fSL "$LIFERAY_TOMCAT_URL" -o liferay-ce-portal-tomcat-7.0-ga3-20160804222206210.zip \
			&& unzip liferay-ce-portal-tomcat-7.0-ga3-20160804222206210.zip \
			&& rm liferay-ce-portal-tomcat-7.0-ga3-20160804222206210.zip

EXPOSE 8080/tcp
EXPOSE 11311/tcp

ENTRYPOINT ["catalina.sh", "run"]