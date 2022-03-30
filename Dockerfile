FROM ghcr.io/linuxserver/baseimage-alpine:3.15
MAINTAINER rix1337

# build tools
RUN apk add --no-cache build-base python3-dev py3-pip

# add local files
COPY root/ /

# volumes and ports
VOLUME /config
EXPOSE 8080

# Install MyJD-API
RUN pip3 install --upgrade pip \
  && pip3 install myjd-api --no-cache-dir

# Remove build tools
RUN apk del build-base
