RIPASM := ~/.stuff/rip.asm

%: %.o
	x86_64-elf-ld --eh-frame-hdr -s -m elf_x86_64 -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o $@ -L/usr/lib -N $< 

%.o: %.asm
	nasm -f elf64 rip.asm -dSRC='"$<"' -o $@

rip.asm: $(RIPASM)
	cp $(RIPASM) .

%.asm: %.bf rip.asm
	bfobf < $< > $@

%.bf: %.bfa
	bfa < $< > $@

%.bfa: %.bfc
	bfc < $< > $@

clean:
	rm *.o *.asm

