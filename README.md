# docker-myjd-api

[![PyPI version](https://badge.fury.io/py/myjd-api.svg)](https://badge.fury.io/py/myjd-api)

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/J3J4Y2R6)

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

`--jd-device` is optional if only one device is present

### JDownloader is expected to be running and connected to my.jdownloader.org - the script will otherwise fail to launch.

## Credits

* [mmarquezs](https://github.com/mmarquezs/)
