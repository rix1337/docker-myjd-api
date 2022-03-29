FROM ghcr.io/linuxserver/baseimage-alpine:3.15
MAINTAINER rix1337

# build tools
RUN apk add --no-cache build-base python3-dev py3-pip

# add local files
COPY root/ /

# volumes and ports
VOLUME /config
EXPOSE 8080

# invalidate build cache on repo commit
ADD "https://api.github.com/repos/rix1337/MyJD-API/commits?per_page=1" latest_commit

# Install MyJD-API
RUN pip3 install myjd-api --no-cache-dir
