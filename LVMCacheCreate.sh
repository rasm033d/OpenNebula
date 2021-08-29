vgcreate storage /dev/sda1 /dev/sdb1 /dev/sdc1 /dev/sdd1 /dev/sde1 /dev/sdf1 /dev/sdg1 /dev/sdh1 
lvcreate --type cache-pool -l 100%FREE --name cache storage /dev/sda1 /dev/sdb1 /dev/sdc1 /dev/sdd1
lvcreate -n storage -l 100%FREE storage /dev/sde1 /dev/sdf1 /dev/sdg1 /dev/sdh1
lvconvert --type cache --cachepool cache storage/storage
