Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C680C18CBC6
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 11:37:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXdRTaqxwYuas26GGmOZuykBAhLyBwg+6ekfwmiQwMA=; b=IjijJE25l7cMVM
	GSFHQLwzh0sN+S1oEq+Ju6xqbMhIceFmLz65FTk2UCTZZb+enqKTMSbYiJ15hT6K2Nk9vECFHZG6T
	us/in5JBfxWv+vObn/MSqjK9wockDPKr6vABoWVLB5AQ84x1EL2S84HC3aAI7Lcs4OX/TImxD7w+c
	vhO3EVYx2TnoXY9i9Amgm13L+oppCILjoBxzfOa9k/S8w4Oo9ISXJB4u+rVsasm62ijcZ0PGPytT0
	0msuRacAUntJ995nvaIPUTK3eSR5k400o9EyQ6bEn53CYm5VmJLK08xgyqSd0vsV8IBYBuAoJDG2y
	SyhY7ez0HK3eECu/sncA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFF20-0003kF-Cu; Fri, 20 Mar 2020 10:37:36 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFF1W-0003KU-Nw
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 10:37:09 +0000
X-Originating-IP: 72.234.241.177
Received: from tb.lan (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 75022FF805;
 Fri, 20 Mar 2020 10:37:01 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Mar 2020 00:10:55 -1000
Message-Id: <20200320101059.19793-3-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320101059.19793-1-mail@aparcar.org>
References: <20200320101059.19793-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_033707_066316_D4F7D9D0 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/6] x86: switch image generation to new code
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Tomasz Maciej Nowak <tomek_n@o2.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This commit introduces few related changes which need to be done in
single commit to keep images buildable between git revisions. In result
it retains all previous image creation possibilities with slight name
change of generated images. Brief summary of the commit:

* Split up image generation recipe to smaller chunks to make it more
  generic and reusable.

* Make iso images x86 specific and drop their definition as root
  filesystem.

* Convert image creation process to generic code specified in image.mk.

* Make geode subtarget inherit features from the main target instead of
  redefining them.

* For subtargets create device definitions with basic packages set.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
[rebased]
Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 config/Config-images.in                       |  18 +-
 include/image.mk                              |   1 -
 target/linux/x86/Makefile                     |   4 +-
 target/linux/x86/geode/target.mk              |   2 +-
 target/linux/x86/image/64.mk                  |   5 +
 target/linux/x86/image/Makefile               | 179 ++++++++----------
 target/linux/x86/image/generic.mk             |   8 +
 target/linux/x86/image/geode.mk               |  16 ++
 target/linux/x86/image/grub-iso.cfg           |   2 +-
 .../linux/x86/image/{grub.cfg => grub-pc.cfg} |   4 +-
 target/linux/x86/image/legacy.mk              |   8 +
 11 files changed, 126 insertions(+), 121 deletions(-)
 create mode 100644 target/linux/x86/image/64.mk
 create mode 100644 target/linux/x86/image/generic.mk
 create mode 100644 target/linux/x86/image/geode.mk
 rename target/linux/x86/image/{grub.cfg => grub-pc.cfg} (57%)
 create mode 100644 target/linux/x86/image/legacy.mk

diff --git a/config/Config-images.in b/config/Config-images.in
index a32de19826..e4db0482ce 100644
--- a/config/Config-images.in
+++ b/config/Config-images.in
@@ -120,13 +120,6 @@ menu "Target Images"
 			help
 			  Create an ext4 filesystem with a journal.
 
-	config TARGET_ROOTFS_ISO
-		bool "iso"
-		default n
-		depends on TARGET_x86_generic
-		help
-		  Create a bootable ISO image.
-
 	config TARGET_ROOTFS_JFFS2
 		bool "jffs2"
 		depends on USES_JFFS2
@@ -191,7 +184,7 @@ menu "Target Images"
 	config GRUB_IMAGES
 		bool "Build GRUB images (Linux x86 or x86_64 host only)"
 		depends on TARGET_x86
-		depends on TARGET_ROOTFS_EXT4FS || TARGET_ROOTFS_ISO || TARGET_ROOTFS_JFFS2 || TARGET_ROOTFS_SQUASHFS
+		depends on TARGET_ROOTFS_EXT4FS || TARGET_ROOTFS_JFFS2 || TARGET_ROOTFS_SQUASHFS
 		select PACKAGE_grub2
 		default y
 
@@ -237,6 +230,11 @@ menu "Target Images"
 		  This is the title of the GRUB menu entry.
 		  If unspecified, it defaults to OpenWrt.
 
+	config ISO_IMAGES
+		bool "Build LiveCD image (ISO)"
+		depends on TARGET_x86
+		select GRUB_IMAGES
+
 	config VDI_IMAGES
 		bool "Build VirtualBox image files (VDI)"
 		depends on TARGET_x86
@@ -260,14 +258,14 @@ menu "Target Images"
 
 	config TARGET_KERNEL_PARTSIZE
 		int "Kernel partition size (in MB)"
-		depends on GRUB_IMAGES || USES_BOOT_PART
+		depends on USES_BOOT_PART
 		default 8 if TARGET_apm821xx_sata
 		default 64 if TARGET_bcm27xx
 		default 16
 
 	config TARGET_ROOTFS_PARTSIZE
 		int "Root filesystem partition size (in MB)"
-		depends on GRUB_IMAGES || USES_ROOTFS_PART || TARGET_ROOTFS_EXT4FS || TARGET_omap || TARGET_rb532 || TARGET_sunxi || TARGET_uml
+		depends on USES_ROOTFS_PART || TARGET_ROOTFS_EXT4FS || TARGET_omap || TARGET_rb532 || TARGET_sunxi || TARGET_uml
 		default 104
 		help
 		  Select the root filesystem partition size.
diff --git a/include/image.mk b/include/image.mk
index d1c63bba29..c72b8506f2 100644
--- a/include/image.mk
+++ b/include/image.mk
@@ -93,7 +93,6 @@ fs-types-$(CONFIG_TARGET_ROOTFS_SQUASHFS) += squashfs
 fs-types-$(CONFIG_TARGET_ROOTFS_JFFS2) += $(addprefix jffs2-,$(JFFS2_BLOCKSIZE))
 fs-types-$(CONFIG_TARGET_ROOTFS_JFFS2_NAND) += $(addprefix jffs2-nand-,$(NAND_BLOCKSIZE))
 fs-types-$(CONFIG_TARGET_ROOTFS_EXT4FS) += ext4
-fs-types-$(CONFIG_TARGET_ROOTFS_ISO) += iso
 fs-types-$(CONFIG_TARGET_ROOTFS_UBIFS) += ubifs
 fs-subtypes-$(CONFIG_TARGET_ROOTFS_JFFS2) += $(addsuffix -raw,$(addprefix jffs2-,$(JFFS2_BLOCKSIZE)))
 
diff --git a/target/linux/x86/Makefile b/target/linux/x86/Makefile
index a646e6e8a7..045d043e4d 100644
--- a/target/linux/x86/Makefile
+++ b/target/linux/x86/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 ARCH:=i386
 BOARD:=x86
 BOARDNAME:=x86
-FEATURES:=squashfs ext4 vdi vmdk pcmcia targz fpu
+FEATURES:=squashfs ext4 vdi vmdk pcmcia targz fpu boot-part rootfs-part
 SUBTARGETS:=generic legacy geode 64
 
 KERNEL_PATCHVER:=5.4
@@ -23,6 +23,6 @@ DEFAULT_PACKAGES += partx-utils mkf2fs e2fsprogs
 
 $(eval $(call BuildTarget))
 
-$(eval $(call $(if $(CONFIG_TARGET_ROOTFS_ISO),RequireCommand,Ignore),mkisofs, \
+$(eval $(call $(if $(CONFIG_ISO_IMAGES),RequireCommand,Ignore),mkisofs, \
    	Please install mkisofs. \
 ))
diff --git a/target/linux/x86/geode/target.mk b/target/linux/x86/geode/target.mk
index f1d7b9fe14..f4c7b9564e 100644
--- a/target/linux/x86/geode/target.mk
+++ b/target/linux/x86/geode/target.mk
@@ -1,5 +1,5 @@
 BOARDNAME:=AMD Geode based systems
-FEATURES:=squashfs ext4 pci usb gpio
+FEATURES:=pci usb gpio
 DEFAULT_PACKAGES += \
 			kmod-crypto-hw-geode kmod-crypto-cbc \
 			kmod-ath5k kmod-ath9k \
diff --git a/target/linux/x86/image/64.mk b/target/linux/x86/image/64.mk
new file mode 100644
index 0000000000..bde76ceba5
--- /dev/null
+++ b/target/linux/x86/image/64.mk
@@ -0,0 +1,5 @@
+define Device/generic
+  DEVICE_TITLE := Generic x86/64
+  GRUB2_VARIANT := generic
+endef
+TARGET_DEVICES += generic
diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index 4e090bcf07..494a190b86 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -1,5 +1,5 @@
-# 
-# Copyright (C) 2006-2012 OpenWrt.org
+#
+# Copyright (C) 2006-2020 OpenWrt.org
 #
 # This is free software, licensed under the GNU General Public License v2.
 # See /LICENSE for more information.
@@ -7,16 +7,12 @@
 include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/image.mk
 
-export PATH=$(TARGET_PATH):/sbin
-
 GRUB2_VARIANT =
 GRUB_TERMINALS =
 GRUB_SERIAL_CONFIG =
 GRUB_TERMINAL_CONFIG =
 GRUB_CONSOLE_CMDLINE =
 
-USE_ATKBD = generic 64
-
 ifneq ($(strip $(foreach subtarget,$(USE_ATKBD),$(CONFIG_TARGET_x86_$(subtarget)))),)
   GRUB2_VARIANT := generic
 else
@@ -46,125 +42,100 @@ ROOTPART:=$(if $(ROOTPART),$(ROOTPART),PARTUUID=$(IMG_PART_SIGNATURE)-02)
 GRUB_TIMEOUT:=$(call qstrip,$(CONFIG_GRUB_TIMEOUT))
 GRUB_TITLE:=$(call qstrip,$(CONFIG_GRUB_TITLE))
 
-ifneq ($(CONFIG_GRUB_IMAGES),)
-
-  BOOTOPTS:=$(call qstrip,$(CONFIG_GRUB_BOOTOPTS))
-
-  define Image/cmdline/ext4
-    root=$(ROOTPART) rootfstype=ext4 rootwait
-  endef
+BOOTOPTS:=$(call qstrip,$(CONFIG_GRUB_BOOTOPTS))
 
-  define Image/cmdline/squashfs
-    root=$(ROOTPART) rootfstype=squashfs rootwait
-  endef
+define Build/combined
+	$(CP) $(KDIR)/$(KERNEL_NAME) $@.boot/boot/vmlinuz
+	-$(CP) $(STAGING_DIR_ROOT)/boot/. $@.boot/boot/
+	PADDING="$(CONFIG_TARGET_IMAGES_PAD)" SIGNATURE="$(IMG_PART_SIGNATURE)" $(SCRIPT_DIR)/gen_image_generic.sh \
+		$@ \
+		$(CONFIG_TARGET_KERNEL_PARTSIZE) $@.boot \
+		$(CONFIG_TARGET_ROOTFS_PARTSIZE) $(IMAGE_ROOTFS) \
+		256
+endef
 
-  define Image/Build/grub2
-	# left here because the image builder doesnt need these
-	rm -fR $(KDIR)/root.grub $(KDIR)/grub2
-	$(INSTALL_DIR) $(KDIR)/root.grub/boot/grub $(KDIR)/grub2
-	$(CP) $(KDIR)/bzImage $(KDIR)/root.grub/boot/vmlinuz
-	$(CP) $(STAGING_DIR_HOST)/lib/grub/i386-pc/*.img \
-		$(STAGING_DIR_HOST)/lib/grub/grub2-$(strip $(GRUB2_VARIANT))/core.img \
-		$(KDIR)/grub2/
-	echo '(hd0) $(BIN_DIR)/$(IMG_COMBINED)-$(1).img' > $(KDIR)/grub2/device.map
+define Build/grub-config
+	rm -fR $@.boot
+	$(INSTALL_DIR) $@.boot/boot/grub
 	sed \
 		-e 's#@SERIAL_CONFIG@#$(strip $(GRUB_SERIAL_CONFIG))#g' \
 		-e 's#@TERMINAL_CONFIG@#$(strip $(GRUB_TERMINAL_CONFIG))#g' \
-		-e 's#@CMDLINE@#$(strip $(call Image/cmdline/$(1)) $(BOOTOPTS) $(GRUB_CONSOLE_CMDLINE))#g' \
+		-e 's#@ROOTPART@#root=$(ROOTPART) rootwait#g' \
+		-e 's#@CMDLINE@#$(BOOTOPTS) $(GRUB_CONSOLE_CMDLINE)#g' \
 		-e 's#@TIMEOUT@#$(GRUB_TIMEOUT)#g' \
 		-e 's#@TITLE@#$(GRUB_TITLE)#g' \
-		./grub.cfg > $(KDIR)/root.grub/boot/grub/grub.cfg
-	-$(CP) $(STAGING_DIR_ROOT)/boot/. $(KDIR)/root.grub/boot/
-	grub-bios-setup -V | cut -d' ' -f3 > $(KDIR)/root.grub/boot/grub/version
-	PADDING="1" SIGNATURE="$(IMG_PART_SIGNATURE)" PATH="$(TARGET_PATH)" $(SCRIPT_DIR)/gen_image_generic.sh \
-		$(BIN_DIR)/$(IMG_COMBINED)-$(1).img \
-		$(CONFIG_TARGET_KERNEL_PARTSIZE) $(KDIR)/root.grub \
-		$(CONFIG_TARGET_ROOTFS_PARTSIZE) $(KDIR)/root.$(1) \
-		256
-	grub-bios-setup \
-		--device-map="$(KDIR)/grub2/device.map" \
-		-d "$(KDIR)/root.grub/boot/grub" \
+		./grub-$(1).cfg > $@.boot/boot/grub/grub.cfg
+endef
+
+define Build/grub-install
+	rm -fR $@.grub2
+	$(INSTALL_DIR) $@.grub2
+	$(CP) $(STAGING_DIR_HOST)/lib/grub/i386-pc/*.img \
+		$(STAGING_DIR_HOST)/lib/grub/grub2-$(GRUB2_VARIANT)/core.img \
+		$@.grub2/
+	echo '(hd0) $@' > $@.grub2/device.map
+	$(STAGING_DIR_HOST)/bin/grub-bios-setup \
+		-m "$@.grub2/device.map" \
+		-d "$@.grub2" \
 		-r "hd0,msdos1" \
-		"$(BIN_DIR)/$(IMG_COMBINED)-$(1).img"
-  endef
-endif
+		$@
+endef
 
-define Image/Build/iso
-	rm -fR $(KDIR)/root.grub $(KDIR)/grub2
-	$(INSTALL_DIR) $(KDIR)/root.grub/boot/grub $(KDIR)/grub2
-	$(CP) $(KDIR)/bzImage $(KDIR)/root.grub/boot/vmlinuz
+define Build/iso
+	$(CP) $(KDIR)/$(KERNEL_NAME) $@.boot/boot/vmlinuz
+	cat \
+		$(STAGING_DIR_HOST)/lib/grub/i386-pc/cdboot.img \
 		$(STAGING_DIR_HOST)/lib/grub/grub2-iso/eltorito.img \
-		> $(KDIR)/root.grub/boot/grub/eltorito.img
-	sed \
-		-e 's#@SERIAL_CONFIG@#$(strip $(GRUB_SERIAL_CONFIG))#g' \
-		-e 's#@TERMINAL_CONFIG@#$(strip $(GRUB_TERMINAL_CONFIG))#g' \
-		-e 's#@CMDLINE@#root=/dev/sr0 rootfstype=iso9660 rootwait $(strip $(call Image/cmdline/$(1)) $(BOOTOPTS) $(GRUB_CONSOLE_CMDLINE))#g' \
-		-e 's#@TIMEOUT@#$(GRUB_TIMEOUT)#g' \
-		-e 's#@TITLE@#$(GRUB_TITLE)#g' \
-		./grub-iso.cfg > $(KDIR)/root.grub/boot/grub/grub.cfg
-	-$(CP) $(STAGING_DIR_ROOT)/boot/. $(KDIR)/root.grub/boot/
+		> $@.boot/boot/grub/eltorito.img
+	-$(CP) $(STAGING_DIR_ROOT)/boot/. $@.boot/boot/
 	mkisofs -R -b boot/grub/eltorito.img -no-emul-boot -boot-info-table \
-		-o $(KDIR)/root.iso $(KDIR)/root.grub $(TARGET_DIR)
+		-o $@ $@.boot $(TARGET_DIR)
 endef
 
-ifneq ($(CONFIG_VDI_IMAGES),)
-  define Image/Build/vdi
-	rm $(BIN_DIR)/$(IMG_COMBINED)-$(1).vdi || true
-	$(STAGING_DIR_HOST)/bin/qemu-img convert -f raw -O vdi \
-		$(BIN_DIR)/$(IMG_COMBINED)-$(1).img \
-		$(BIN_DIR)/$(IMG_COMBINED)-$(1).vdi
-  endef
-endif
+define Build/vdi
+	qemu-img convert -f raw -O vdi $@ $@.new
+	@mv $@.new $@
+endef
 
-ifneq ($(CONFIG_VMDK_IMAGES),)
-  define Image/Build/vmdk
-	rm $(BIN_DIR)/$(IMG_COMBINED)-$(1).vmdk || true
-	$(STAGING_DIR_HOST)/bin/qemu-img convert -f raw -O vmdk \
-		$(BIN_DIR)/$(IMG_COMBINED)-$(1).img \
-		$(BIN_DIR)/$(IMG_COMBINED)-$(1).vmdk
-	#build the ESXI VMDK with 
-	rm $(BIN_DIR)/$(IMG_COMBINED)-$(1)-esxi.vmdk || true
-	rm $(BIN_DIR)/$(IMG_COMBINED)-$(1)-esxi-flat.vmdk || true
-	$(STAGING_DIR_HOST)/bin/qemu-img convert -f raw -O vmdk -o adapter_type=lsilogic,subformat=monolithicFlat \
-		$(BIN_DIR)/$(IMG_COMBINED)-$(1).img \
-		$(BIN_DIR)/$(IMG_COMBINED)-$(1)-esxi.vmdk
-  endef
-endif
+define Build/vmdk
+	qemu-img convert -f raw -O vmdk $@ $@.new
+	@mv $@.new $@
+endef
 
-define Image/Build/gzip
-	gzip -f9n $(BIN_DIR)/$(IMG_COMBINED)-$(1).img
-	gzip -f9n $(BIN_DIR)/$(IMG_ROOTFS)-$(1).img
+DEVICE_VARS += GRUB2_VARIANT
+define Device/Default
+  ARTIFACT/image.iso := grub-config iso | iso
+  IMAGES := combined.img.gz
+  IMAGE/combined.img.gz := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install | gzip
+  IMAGE/combined.vdi := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install | vdi
+  IMAGE/combined.vmdk := append-rootfs | pad-extra 128k | grub-config pc | combined | grub-install | vmdk
+  KERNEL := kernel-bin
+  KERNEL_INSTALL := 1
+  KERNEL_NAME := bzImage
+  ifeq ($(CONFIG_ISO_IMAGES),y)
+    ARTIFACTS := image.iso
+  endif
+  ifeq ($(CONFIG_VDI_IMAGES),y)
+    IMAGES += combined.vdi
+  endif
+  ifeq ($(CONFIG_VMDK_IMAGES),y)
+    IMAGES += combined.vmdk
+  endif
 endef
 
 $(eval $(call Image/gzip-ext4-padded-squashfs))
 
-define Image/BuildKernel
-	$(CP) $(KDIR)/bzImage $(BIN_DIR)/$(IMG_PREFIX)-vmlinuz
-endef
-
-define Image/Prepare
-	$(call Image/Prepare/grub2)
-endef
+ifeq ($(SUBTARGET),64)
+  include 64.mk
+endif
 
-define Image/Build/Initramfs
-	$(CP) $(KDIR)/bzImage-initramfs $(BIN_DIR)/$(IMG_PREFIX)-ramfs.bzImage
-endef
+ifeq ($(SUBTARGET),generic)
+  include generic.mk
+endif
 
-define Image/Build
-	$(call Image/Build/$(1))
-  ifneq ($(1),iso)
-	$(call Image/Build/grub2,$(1))
-	$(call Image/Build/vdi,$(1))
-	$(call Image/Build/vmdk,$(1))
-	$(CP) $(KDIR)/root.$(1) $(BIN_DIR)/$(IMG_ROOTFS)-$(1).img
-  else
-	$(CP) $(KDIR)/root.iso $(BIN_DIR)/$(IMG_PREFIX).iso
-  endif
-	$(CP) $(KDIR)/bzImage $(BIN_DIR)/$(IMG_PREFIX)-vmlinuz
-	$(call Image/Build/gzip/$(1))
-ifeq ($(CONFIG_TARGET_ROOTFS_INITRAMFS),y)
-	$(call Image/Build/Initramfs)
+ifeq ($(SUBTARGET),legacy)
+  include legacy.mk
 endif
-endef
 
 $(eval $(call BuildImage))
+
diff --git a/target/linux/x86/image/generic.mk b/target/linux/x86/image/generic.mk
new file mode 100644
index 0000000000..65f7361184
--- /dev/null
+++ b/target/linux/x86/image/generic.mk
@@ -0,0 +1,8 @@
+define Device/generic
+  DEVICE_TITLE := Generic x86
+  DEVICE_PACKAGES += kmod-3c59x kmod-8139too kmod-e100 kmod-e1000 kmod-natsemi \
+	kmod-ne2k-pci kmod-pcnet32 kmod-r8169 kmod-sis900 kmod-tg3 \
+	kmod-via-rhine kmod-via-velocity
+  GRUB2_VARIANT := generic
+endef
+TARGET_DEVICES += generic
diff --git a/target/linux/x86/image/geode.mk b/target/linux/x86/image/geode.mk
new file mode 100644
index 0000000000..0b463e36ed
--- /dev/null
+++ b/target/linux/x86/image/geode.mk
@@ -0,0 +1,16 @@
+define Device/generic
+  DEVICE_TITLE := Generic x86/Geode
+  DEVICE_PACKAGES += kmod-crypto-cbc kmod-crypto-hw-geode kmod-ledtrig-gpio \
+	kmod-ledtrig-heartbeat kmod-ledtrig-netdev kmod-via-rhine
+  GRUB2_VARIANT := legacy
+endef
+TARGET_DEVICES += generic
+
+define Device/geos
+  $(call Device/generic)
+  DEVICE_TITLE := Traverse Technologies Geos
+  DEVICE_PACKAGES += br2684ctl flashrom kmod-8139cp kmod-hwmon-lm90 kmod-mppe \
+	kmod-pppoa kmod-usb-ohci-pci linux-atm ppp-mod-pppoa pppdump pppstats \
+	soloscli tc
+endef
+TARGET_DEVICES += geos
diff --git a/target/linux/x86/image/grub-iso.cfg b/target/linux/x86/image/grub-iso.cfg
index 9c59bdf6d4..f5848b3853 100644
--- a/target/linux/x86/image/grub-iso.cfg
+++ b/target/linux/x86/image/grub-iso.cfg
@@ -6,5 +6,5 @@ set timeout="@TIMEOUT@"
 set root='(cd)'
 
 menuentry "@TITLE@" {
-	linux /boot/vmlinuz @CMDLINE@ noinitrd
+	linux /boot/vmlinuz root=/dev/sr0 rootfstype=iso9660 rootwait @CMDLINE@ noinitrd
 }
diff --git a/target/linux/x86/image/grub.cfg b/target/linux/x86/image/grub-pc.cfg
similarity index 57%
rename from target/linux/x86/image/grub.cfg
rename to target/linux/x86/image/grub-pc.cfg
index 76a9885544..75605bcabf 100644
--- a/target/linux/x86/image/grub.cfg
+++ b/target/linux/x86/image/grub-pc.cfg
@@ -6,8 +6,8 @@ set timeout="@TIMEOUT@"
 set root='(hd0,msdos1)'
 
 menuentry "@TITLE@" {
-	linux /boot/vmlinuz @CMDLINE@ noinitrd
+	linux /boot/vmlinuz @ROOTPART@ @CMDLINE@ noinitrd
 }
 menuentry "@TITLE@ (failsafe)" {
-	linux /boot/vmlinuz failsafe=true @CMDLINE@ noinitrd
+	linux /boot/vmlinuz failsafe=true @ROOTPART@ @CMDLINE@ noinitrd
 }
diff --git a/target/linux/x86/image/legacy.mk b/target/linux/x86/image/legacy.mk
new file mode 100644
index 0000000000..9909341729
--- /dev/null
+++ b/target/linux/x86/image/legacy.mk
@@ -0,0 +1,8 @@
+define Device/generic
+  DEVICE_TITLE := Generic x86/legacy
+  DEVICE_PACKAGES += kmod-3c59x kmod-8139too kmod-e100 kmod-e1000 \
+	kmod-natsemi kmod-ne2k-pci kmod-pcnet32 kmod-r8169 kmod-sis900 \
+	kmod-tg3 kmod-via-rhine kmod-via-velocity
+  GRUB2_VARIANT := legacy
+endef
+TARGET_DEVICES += generic
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
