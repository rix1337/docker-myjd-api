FROM lsiobase/alpine.python3
MAINTAINER rix1337

# build tools
RUN apk add --no-cache gcc build-base libc-dev python3-dev

# dependencies
RUN pip install --upgrade pip

# add local files
COPY root/ /

# volumes and ports
VOLUME /config
EXPOSE 8080

# invalidate build cache on repo commit
ADD "https://api.github.com/repos/rix1337/MyJD-API/commits?per_page=1" latest_commit

# Install MyJD-API
RUN pip install myjd-api --no-cache-dir
