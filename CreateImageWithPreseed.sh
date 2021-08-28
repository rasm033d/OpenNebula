#this is for zipping up the initrd with a new preseed. Before this, a new folder was created where initrd's files were extracted, and a preseed was placed into. This was done to make it easier to change any part of the preseed, as such, these steps have to be taken first to make useable.
cd /tmp/1 #goes to the directory containing the
find | cpio -o --format=newc | gzip -9c > ../initrd.gz
cp /tmp/initrd.gz /srv/tftp/debian/debian-installer/amd64/ #copies the newly zipped initrd
