set -x

#yum -y install tree pykickstart genisoimage

#ksvalidator ks/centos7.cfg

mkisofs     \
 -o centos7-x86_64_$(date +%F).iso     \
 -b isolinux/isolinux.bin     \
 -c isolinux/boot.cat     \
 -no-emul-boot \
 -boot-load-size 4 \
 -boot-info-table \
 -r \
 -J \
 -v ./
 
 

