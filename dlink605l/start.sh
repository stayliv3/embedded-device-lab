cd /root/
tar xvf dlink605.tar
cd /root/squashfs-root-0/
cp $(which qemu-mips-static) /root/squashfs-root-0/qemu
cp /tmp/apmib-ld.so /root/squashfs-root-0/apmib-ld.so
cp /root/squashfs-root-0/lib/libc.so.0  /root/squashfs-root-0/lib/libc.so.6
chroot . ./qemu  -g 1234 -E LD_PRELOAD="/apmib-ld.so" bin/boa -d