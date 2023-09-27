# tuxer
a hobby operating system

## kernel
this is a custom kernel a not a GNU/Linux distrubution. </br>

## bootloader
custom bootloader too. No GNU Grub or something like that

## components
file system: FAT12
kernel: Tuxer Kernel Version 0.1.1
bootloader: TuxLoad Version 0.0.2
(these names and versions are jsut domething that i made up)

## how to run
there is no download yet, but you can build it on your own!

### step 1: download
first download it: </br>
on GitHub download and extract the code
and open a terminal in the directory

### step 2: make it
in the terminal run:
```bash
$ make
``` 
after that there should be a build/ directory

### step 3: emulation
again in the terminal run:
```bash
$ qemu-system-i386 -fda build/main_floppy.img
```

## credits
nanobyte: Help and tutorial: [YouTube](https://www.youtube.com/@nanobyte-dev)

## other
license: Apache License Version 2.0