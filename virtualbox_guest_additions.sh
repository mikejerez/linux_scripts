mount /dev/cdrom /media/cdrom.

cd /media/cdrom.

apt-get install -y dkms build-essential linux-headers-generic linux-headers-$(uname -r).

./VBoxLinuxAdditions.run.
