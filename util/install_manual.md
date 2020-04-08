# Manual install

This software is not packaged for Debian at the moment.


## netwmpager

https://github.com/mixalturek/netwmpager


## xsysguard

http://xsysguard.sourceforge.net/

https://github.com/mixalturek/xsysguard


## Shutdown

Allow user "username" to shutdown and reboot in sudo.

```shell
su -
visudo

username       ALL= NOPASSWD: /sbin/poweroff
username       ALL= NOPASSWD: /sbin/halt
username       ALL= NOPASSWD: /sbin/reboot
```


## Mount

```
# /etc/fstab
/dev/sda1 /mnt/usb auto defaults,user,noauto 0 0
/dev/sda2 /mnt/ext auto defaults,user,noauto 0 0
```

```
mkdir -p /mnt/usb /mnt/ext /mnt/mobil
chmod 777 /mnt/usb /mnt/ext /mnt/mobil
touch /mnt/usb/__unmounted__
touch /mnt/ext/__unmounted__
touch /mnt/mobil/__unmounted__
```


## Autologin

vim /etc/lightdm/lightdm.conf
autologin-user = username
