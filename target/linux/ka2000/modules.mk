#
# Copyright (C) 2010 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define KernelPackage/mmc-ka2000
  SUBMENU:=$(OTHER_MENU)
  TITLE:=MMC/SD Card Support on KA2000
  DEPENDS:=@TARGET_ka2000 +kmod-mmc
  KCONFIG:=CONFIG_MMC_KA2000
  FILES:=$(LINUX_DIR)/drivers/mmc/host/ka2000_mci.ko
  AUTOLOAD:=$(call AutoLoad,90,ka2000_mci,1)
endef

define KernelPackage/mmc-ka2000/description
 Kernel support for MMC/SD cards on the KA2000 target
endef

$(eval $(call KernelPackage,mmc-ka2000))
