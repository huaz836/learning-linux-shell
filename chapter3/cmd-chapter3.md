```shell

dd if=/dev/zero of=junk.data bs=1M count=1


comm A.txt B.txt
comm A.txt B.txt -1 -2
comm A.txt B.txt -2 -3
comm A.txt B.txt -1 -3


mkdir -p /path/to/create


chmod u=rwx g=rw o=r filename

chmod a+x filename 
chmod a-x filename


chattr +i filename
chattr +a /var/log/somelog.log

lsattr


touch filename
touch -a existfile
touch -m existfile
touch -d "Tue Apr 29 15:01:02 CST 2014" existfile


ln -s /var/www ~/web

ls -l | grep "^l" | awk '{print $9}'
find . -type l -print

ls -l web | awk '{print $11}'
readlink web


dd if=/dev/zero of=loopbackfile.img bs=1G count=1
mkfs.ext4 loopbackfile.img
file loopbackfile.img
mkdir /mnt/loopback
mount -o loop loopbackfile.img /mnt/loopback

losetup /dev/loop1 loopbackfile.img
mount /dev/loop1 /mnt/loopvback


losetup /dev/loop1 loopbackfile.img
fdisk /dev/loop1
losetup -o 32256 /dev/loop2 loopback.img

umount /mnt/sda1
umount /dev/sda1

mkdir /mnt/iso
mount -o loop linux.iso /mnt/iso

sync


cat /dev/cdrom > image.iso
dd if=/dev/cdrom of=image.iso

mkisofs -V "Label" -o image.iso source_dir/

isohybrid image.iso
dd if=image.iso of=/dev/sdb1

cdrecord -v dev=/dev/cdrom image.iso
cdrecord -v dev=/dev/cdrom image.iso -speed 8

eject
eject -t


diff version1.txt version2.txt
diff version1.txt version2.txt -u

diff version1.txt version2.txt -u > version.patch
patch -p1 version1.txt < version.patch
patch -p1 -R version1.txt < version.patch

diff -Naur dir1 dir2


head file
cat text | head
head -n 4 file
seq 11 | head -n -5

tail -n 5 file
seq 100 | tail -n +6

tail -f /var/some.log
dmesg | tail -f








```
