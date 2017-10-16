FROM debian:8

MAINTAINER xdxd <http://xdxd.love>

RUN apt-get update && apt-get install -y git \
    && apt-get install -y --no-install-recommends apt-utils \
    && apt-get install -y python \
    && apt-get install -y sudo \
    && apt-get install -y wget \
    && git clone https://github.com/devttys0/binwalk /home/ctf/tools/binwalk \
    && cd /home/ctf/tools/binwalk \
    && python setup.py install \
    &&  sed -i "s/https:\/\/github.com\/devttys0\/sasquatch/https:\/\/github.com\/stayliv3\/sasquatch/g" deps.sh \
    && yes |./deps.sh
# COPY docker-entrypoint.sh /entrypoint.sh
# CMD [cd /root/dlink605 && chroot . ./qemu -g 1234 -E LD_PRELOAD="/apmib-ld.so" bin/boa -d]