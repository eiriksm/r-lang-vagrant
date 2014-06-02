add-apt-repository ppa:marutter/rrutter
apt-get update
apt-get install r-base -y

# All that data-calculation... need more RAM. But in swap? Oh, well...

# Create swapfile of 4GB with block size 1MB
/bin/dd if=/dev/zero of=/swapfile bs=1024 count=4194304

# Set up the swap file
/sbin/mkswap /swapfile

# Enable swap file immediately
/sbin/swapon /swapfile

# Enable swap file on every boot
/bin/echo '/swapfile          swap            swap    defaults        0 0' >> /etc/fstab
