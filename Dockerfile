FROM ghcr.io/linuxserver/baseimage-alpine:3.18
MAINTAINER rix1337

# build tools
RUN apk add --no-cache build-base python3-dev py3-pip

# setup
RUN pip3 install --upgrade pip \
  && pip3 install wheel \
  && pip3 install myjd-api --no-cache-dir
  
# add local files
COPY root/ /

# volumes and ports
VOLUME /config
EXPOSE 8080
ENV PYTHONUNBUFFERED=1
