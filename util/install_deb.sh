#!/bin/bash -x

#
# Install various tools (Debian packages) used in the configuration.
#
# @author Michal Turek
#

apt-get update

apt-get install --yes pekwm
apt-get install --yes x11-xserver-utils # xset, xrdb, xrandr
apt-get install --yes xterm
apt-get install --yes yeahconsole
apt-get install --yes mc
apt-get install --yes vim
apt-get install --yes colorgcc colormake
apt-get install --yes mplayer
apt-get install --yes unrar
apt-get install --yes bash-completion
apt-get install --yes xxkb
apt-get install --yes hsetroot
apt-get install --yes xserver-xorg-input-synaptics # synclient
apt-get install --yes ksnapshot
apt-get install --yes gmrun
apt-get install --yes alsa-utils
apt-get install --yes xosd-bin
apt-get install --yes htop
apt-get install --yes procps # watch
apt-get install --yes acpi
apt-get install --yes kwrite
apt-get install --yes libreoffice-common
apt-get install --yes gimp
apt-get install --yes chromium
apt-get install --yes firefox
apt-get install --yes thunderbird
apt-get install --yes konqueror
apt-get install --yes xscreensaver
apt-get install --yes stalonetray
apt-get install --yes lxrandr
apt-get install --yes arandr
apt-get install --yes droopy
apt-get install --yes gksu
apt-get install --yes meld
apt-get install --yes numlockx
apt-get install --yes ttf-mscorefonts-installer
apt-get install --yes statgrab # xsysguard
apt-get install --yes net-tools # ifconfig, netstat
apt-get install --yes wireshark
apt-get install --yes httpie
apt-get install --yes okular
apt-get install --yes pdsh
apt-get install --yes pnmixer
apt-get install --yes gpicview
