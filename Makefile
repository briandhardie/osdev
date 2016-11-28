myos.iso: kernel isodir/boot/grub/grub.cfg
	cp src/myos.bin isodir/boot/myos.bin
	grub2-mkrescue -o myos.iso isodir

.PHONY: kernel

kernel:
	$(MAKE) -C src

clean:
	rm -f myos.iso isodir/boot/myos.bin isodir/boot/grub/grub.cfg
	$(MAKE) -C src clean
