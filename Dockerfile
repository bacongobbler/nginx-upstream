FROM nginx:1.11

RUN apt-get update \
	&& apt-get install -y \
		curl \
		--no-install-recommends \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man /usr/share/doc

COPY rootfs /

CMD ["/bin/boot"]
