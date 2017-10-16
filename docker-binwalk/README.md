# docker-binwalk

docker pull xdxd/docker-binwalk

docker run -it -v /the/directory/your/firmware/at/local/machine/:/firmware  xdxd/docker-binwalk  bash

cd /firmware
binwalk -Me myfireware.img