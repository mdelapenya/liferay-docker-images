FROM openjdk:8
MAINTAINER Manuel de la Peña <manuel.delapenya@liferay.com>

RUN apt-get update \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/usr/bin/java", "-version"]
