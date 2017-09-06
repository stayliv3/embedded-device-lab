cd /root/
cp $(which qemu-mipsel-static) /root/qemu
chroot . ./qemu  -g 1234 nc