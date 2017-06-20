#!/bin/bash

docker build -t liferay/portal:7.0.3-ga4-tomcat .

docker tag liferay/portal:7.0.3-ga4-tomcat liferay/portal:latest