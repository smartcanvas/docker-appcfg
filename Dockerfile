FROM python:2.7-slim

MAINTAINER Gabriel Garcia Bim <gabrielgbim@gmail.com>

RUN apt-get update && apt-get install -y wget unzip \
&& wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.26.zip \
&& unzip google_appengine_1.9.26.zip \
&& rm google_appengine_1.9.23.zip

ENV PATH /google_appengine:$PATH