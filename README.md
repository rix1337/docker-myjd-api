# docker-myjd-api

#  MyJD-API

[![PyPI version](https://badge.fury.io/py/myjd-api.svg)](https://badge.fury.io/py/myjd-api)

This is a standalone version of [RSScrawler](https://github.com/rix1337/RSScrawler)'s MyJDownloader API for use with projects like [Organizr](https://github.com/causefx/Organizr).

# Run
```
docker run -d \
  --name="MyJD-API" \
  -p port:8080 \
  -v /path/to/config/:/config:rw \
  -e PARAMETER=[--jd-user=<USERNAME> --jd-pass=<PASSWORD> --jd-device=DEVICENAME] \
  rix1337/docker-myjd-api
  ```

`--jd-device` is optional

## Credits

* [mmarquezs](https://github.com/mmarquezs/)