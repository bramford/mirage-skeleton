/usr/bin/qemu-system-x86_64 \
 -enable-kvm \
 -name guest=hello,debug-threads=on \
 -machine pc-i440fx-2.1,usb=off \
 -m 16 \
 -smp 1,sockets=1,cores=1,threads=1 \
 -nographic \
 -rtc base=utc \
 -no-shutdown \
 -kernel /var/lib/libvirt/images/unikernels/hello.virtio \
 -chardev pty,id=charserial0 \
 -device isa-serial,chardev=charserial0,id=serial0 \
;
