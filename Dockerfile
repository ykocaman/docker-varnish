FROM alpine:3.8

RUN apk add --no-cache varnish

ENV VARNISH_PORT=80
ENV VARNISH_BACKEND=
ENV VARNISH_VCL_FILE=/etc/varnish/default.vcl
ENV VARNISH_STORAGE=malloc,200M

CMD /usr/sbin/varnishd -F \
	-j unix,user=varnish \
	-a :$VARNISH_PORT \
	-s $VARNISH_STORAGE \
	$(if [[ -z $VARNISH_BACKEND ]]; then \
		echo -f $VARNISH_VCL_FILE; \
	else \
		echo -b $VARNISH_BACKEND; \
	fi)