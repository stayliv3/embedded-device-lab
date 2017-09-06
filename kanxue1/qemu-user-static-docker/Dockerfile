FROM debian:8

MAINTAINER xdxd <http://xdxd.love>

RUN apt-get update && apt-get install -y qemu-user-static
# COPY docker-entrypoint.sh /entrypoint.sh
# CMD [cd /root/dlink605 && chroot . ./qemu -g 1234 -E LD_PRELOAD="/apmib-ld.so" bin/boa -d]