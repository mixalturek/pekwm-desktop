# Manual install

This software is not packaged for Debian at the moment.


## netwmpager

https://github.com/mixalturek/netwmpager


## xsysguard

http://xsysguard.sourceforge.net/

https://github.com/mixalturek/xsysguard


## Special repositories

```shell
apt-get install google-chrome-stable
apt-get install opera
apt-get install esmska
apt-get install subdownloader
```


## Shutdown

Allow user "username" to shutdown and reboot in sudo.

```shell
su -
visudo

username       ALL= NOPASSWD: /sbin/halt
username       ALL= NOPASSWD: /sbin/reboot
```
