# 
# Copyright (C) 2006-2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=ka2000
MAINTAINER:=
BOARDNAME:=KeyAsic KA2000
FEATURES:=squashfs targz ext2
CFLAGS:=-Os -pipe -march=armv5te -mtune=arm926ej-s

LINUX_VERSION:=3.10.15

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES +=

$(eval $(call BuildTarget))
