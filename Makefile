myos.iso: kernel
	cp src/myos.bin isodir/boot/myos.bin
	cp src/grub.cfg isodir/boot/grub/grub.cfg
	grub2-mkrescue -o myos.iso isodir

.PHONY: kernel

kernel:
	$(MAKE) -C src

clean:
	rm -f myos.iso isodir/boot/myos.bin isodir/boot/grub/grub.cfg
	$(MAKE) -C src clean
