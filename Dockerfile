FROM lsiobase/alpine.python3
MAINTAINER rix1337


# dependencies
RUN pip install --upgrade pip
RUN pip install myjd-api

# add local files
COPY root/ /

# volumes and ports
VOLUME /config
EXPOSE 9090
