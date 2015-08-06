swconfig binary packaged for archlinuxarm on BPI-R1
---------------------------------------------------

This repo contains the bare minimum needed to build
the swconfig binary. All code is taken from OpenWRT
project so their copyrights apply.

build on archlinuxarm:
---------------------

wget https://raw.githubusercontent.com/rains31/swconfig/master/PKGBUILD && makepkg
OR:
yaourt -S swconfig

USE:
----

Please read the upstream documentation on how to use this utility:
http://wiki.openwrt.org/doc/techref/swconfig

AUTHORS:
--------

The code is owned by OpenWRT Project and taken from here:
https://github.com/openwrt-mirror/openwrt/tree/master/package/network/config/swconfig/src
