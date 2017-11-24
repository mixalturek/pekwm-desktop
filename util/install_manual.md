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


## Autologin

vim /etc/lightdm/lightdm.conf
autologin-user = username
