# docker-myjd-api

[![PyPI version](https://badge.fury.io/py/myjd-api.svg)](https://badge.fury.io/py/myjd-api)
[![ko-fi](https://img.shields.io/badge/support-me-red.svg)](https://ko-fi.com/J3J4Y2R6)

This is a standalone version of [RSScrawler](https://github.com/rix1337/RSScrawler)'s MyJDownloader API for use with projects like [Organizr](https://github.com/causefx/Organizr).

# Run
```
docker run -d \
  --name="MyJD-API" \
  -p port:8080 \
  -v /path/to/config/:/config:rw \
  -e USER=USERNAME \ 
  -e PASS=PASSWORD \
  -e DEVICE=DEVICENAME \
  rix1337/docker-myjd-api
  ```
  
# Optional Parameters
 - `-e USER` (after first run, if unchanged)
 - `-e PASS` (after first run, if unchanged)
 - `-e DEVICE` (always, is optional if only one device is present in MyJD, otherwise after first run, if unchanged)

#### JDownloader is expected to be running and connected to my.jdownloader.org - the script will otherwise fail to launch.

#### Wrap complex passwords in quotes `"`

## Credits

* [mmarquezs](https://github.com/mmarquezs/)
