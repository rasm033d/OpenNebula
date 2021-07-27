sudo sync; echo 3 > sudo /proc/sys/vm/drop_caches #drops caches, should be put before every command because I am very paranoid.
sudo dd if=/dev/Storage/faststorage of=tempfile bs=1M count=1024 #write for SSD
sudo dd if=/dev/Storage/slowstorage of=tempfile bs=1M count=1024 #write for HDD
sudo dd if=tempfile of=/dev/Storage/faststorage bs=1M count=1024
sudo dd if=tempfile of=/dev/Storage/slowstorage bs=1M count=1024
