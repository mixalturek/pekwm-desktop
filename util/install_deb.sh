#!/bin/bash -x

#
# Install various tools (Debian packages) used in the configuration.
#
# @author Michal Turek
#

apt-get update

apt-get install --yes acpi
apt-get install --yes alsa-utils
apt-get install --yes apt-file
apt-get install --yes arandr
apt-get install --yes autoconf
apt-get install --yes automake
apt-get install --yes bash-completion
apt-get install --yes brightnessctl
apt-get install --yes chromium
apt-get install --yes cmake
apt-get install --yes colorgcc
apt-get install --yes colormake
apt-get install --yes curl
apt-get install --yes detox
apt-get install --yes dnsutils # nslookup
apt-get install --yes droopy
apt-get install --yes exif
apt-get install --yes exiftran
apt-get install --yes featherpad
apt-get install --yes firefox
apt-get install --yes gddccontrol
apt-get install --yes gimp
apt-get install --yes gksu
apt-get install --yes gmrun
apt-get install --yes gpicview
apt-get install --yes hplip
apt-get install --yes hsetroot
apt-get install --yes htop
apt-get install --yes httpie
apt-get install --yes inkscape
apt-get install --yes iotop
apt-get install --yes jmtpfs
apt-get install --yes jq
apt-get install --yes kcalc
apt-get install --yes kcolorchooser
apt-get install --yes kde-spectacle
apt-get install --yes konqueror
apt-get install --yes kwrite
apt-get install --yes libreoffice-common
apt-get install --yes libssl-dev # rust development
apt-get install --yes lxrandr
apt-get install --yes maven
apt-get install --yes mc
apt-get install --yes meld
apt-get install --yes mplayer
apt-get install --yes mtp-tools
apt-get install --yes ncdu
apt-get install --yes net-tools # ifconfig, netstat
apt-get install --yes ngrep
apt-get install --yes numlockx
apt-get install --yes okular
apt-get install --yes pdsh
apt-get install --yes pekwm
apt-get install --yes pkg-config # rust development
apt-get install --yes pnmixer
apt-get install --yes policykit-1-gnome # synaptic
apt-get install --yes printer-driver-all
apt-get install --yes procps # watch
apt-get install --yes rsync
apt-get install --yes shellcheck
apt-get install --yes stalonetray
apt-get install --yes statgrab # xsysguard
apt-get install --yes strace
apt-get install --yes thunderbird
apt-get install --yes traceroute
apt-get install --yes ttf-mscorefonts-installer
apt-get install --yes unrar
apt-get install --yes vim
apt-get install --yes wireshark
apt-get install --yes x11-xserver-utils # xset, xrdb, xrandr
apt-get install --yes xosd-bin
apt-get install --yes xscreensaver
apt-get install --yes xserver-xorg-input-synaptics # synclient
apt-get install --yes xterm
apt-get install --yes xxkb
apt-get install --yes yeahconsole
