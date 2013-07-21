nasm boot.asm -f bin -o boot.bin

# Command for booting on qemu
# qemu-ystem-i386 -fda boot.bin -boot a -no-fd-bootchk                       

# Command for seeing raw object dump of bin file
# od -t x1 -A n boot.bin


