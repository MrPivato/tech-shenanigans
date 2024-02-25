sudo mkdir /mnt/shared-drive-name-here

sudo blkid

sudo nano /etc/fstab
  UUID=uuid-from-blkid-here   /mnt/SharedDrive    ntfs    defaults   0   2

sudo mount -a
