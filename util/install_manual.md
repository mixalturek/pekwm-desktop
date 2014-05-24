# Manual install

This software is not packaged for Debian at the moment.


## netwmpager

I'm using netwmpager-1.6, but it looks like it disappeared from internet. Links to newer versions are below, but they can be incompatible (not tested).

http://sourceforge.net/projects/sf-xpaint/files/netwmpager/


## xsysguard

http://xsysguard.sourceforge.net/


## Special repositories

```
apt-get install google-chrome-stable
apt-get install opera
apt-get install esmska
apt-get install subdownloader
```


## Shutdown

Allow user "username" to shutdown and reboot in sudo.

```
su -
visudo

username       ALL= NOPASSWD: /sbin/shutdown
```
