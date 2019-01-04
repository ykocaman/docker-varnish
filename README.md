# Alpine Based Varnish Docker Image
[![Docker Stars](https://img.shields.io/docker/stars/ykocaman/varnish.svg)](https://hub.docker.com/r/ykocaman/varnish/)
[![Docker Pulls](https://img.shields.io/docker/pulls/ykocaman/varnish.svg)](https://hub.docker.com/r/ykocaman/varnish/)

Example usage:

```sh
docker run -it -p 8888:80 -v default.vcl:/etc/varnish/default.vcl ykocaman/varnish
```
OR

```sh
docker run -it -p 8888:80 -e VARNISH_BACKEND=localhost ykocaman/varnish
```
## Environment variables
* `VARNISH_BACKEND` - Host of backend. If it is empty then use config file.
* `VARNISH_PORT` - Port of backend. Defaults to 80.
* `VARNISH_STORAGE` -  storage config which Varnish can use for caching. Defaults to 200M memory. If you want file storage, use this:
> VARNISH_STORAGE="file,/tmp/varnish_cache.bin,1G"
