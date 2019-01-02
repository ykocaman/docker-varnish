Alpine Based Varnish Docker Image
-----

Example usage:

```sh
docker run -it -p 8888:80 ykocaman/varnish -b backend:8080 -a :80
```
