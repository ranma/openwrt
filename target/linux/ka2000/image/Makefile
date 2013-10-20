# 
# Copyright (C) 2006-2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

define Image/Prepare
	cp $(LINUX_DIR)/arch/arm/boot/zImage $(KDIR)/zImage
endef

define MkuImageDtb
	#cat $(KDIR)/zImage $(LINUX_DIR)/arch/arm/boot/dts/$(2).dtb > $(KDIR)/zImage-$(1)
	cat $(KDIR)/zImage > $(KDIR)/zImage-$(1)
	mkimage -A arm -T kernel -C none -a 0x00008000 -e 0x00008000 \
		-n "OpenWrt ARM $(LINUX_VERSION)" \
		-d $(KDIR)/zImage-$(1) $(BIN_DIR)/$(IMG_PREFIX)-$(1)-uImage
endef

# Default KeyAsic image
Image/Build/Kernel/KA2000-EVM=$(call MkuImageDtb,ka2000-evm,ka2000-evm)

define Image/Build/Kernel/Default
	$(call Image/Build/Kernel/KA2000-EVM)
endef

define Image/BuildKernel
	mkimage -A arm -T kernel -C none -a 0x00080000 -e 0x00080000 -n linux-2.6 \
		-d $(LINUX_DIR)/arch/arm/boot/Image $(BIN_DIR)/uImage
	$(call Image/Build/Kernel/$(PROFILE))
endef

define Image/Build
	$(call Image/Build/$(1))
	cp $(KDIR)/root.$(1) $(BIN_DIR)/$(IMG_PREFIX)-root.$(1)
endef

$(eval $(call BuildImage))
