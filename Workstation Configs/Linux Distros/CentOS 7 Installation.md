## Installing VirtualBox Guest Additions on CentOS 7
---

### Change to root user
`# su -`

### Update to latest kernel and reboot with the latest kernel loaded.
```
# yum update kernel*
# reboot
```

### Mount VirtualBox Guest Additions device
```
# mkdir /media/VirtualBoxGuestAdditions
# mount -r /dev/cdrom /media/VirtualBoxGuestAdditions
```

### Install Extra Packages for Enterprise Linux (EPEL)
```
# rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
```

### Install Yum Packages
```
# yum install gcc kernel-devel kernel-headers dkms make bzip2 perl
```

### Create and Export KERN Env Variable
```
# KERN_DIR=/usr/src/kernels/`uname -r` && export KERN_DIR
```

### Install Guest Additions
```
# cd /media/VirtualBoxGuestAdditions
# ./VBoxLinuxAdditions.run
# reboot
```

source: [if-not-true-then-false.com](https://www.if-not-true-then-false.com/2010/install-virtualbox-guest-additions-on-fedora-centos-red-hat-rhel/)