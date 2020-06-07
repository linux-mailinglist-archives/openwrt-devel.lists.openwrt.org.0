Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F211B1F0AE8
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 13:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7upHAK5r/MP8TJKXsi/Pmob9YabITViwvTLXJysVblU=; b=FaQroT+eI0Ouq8
	XRvur9rheaMQHuj8zsuh4u0IoNm+xqffY063yLZeHMKNnjBRw+uJPehD15wUfMEoj83flGyl1Z/IY
	coIzAEDvuEjAKyYD951TK6D3HDPjiBsXgdaf2e1j//snuNEgkebOZPq0do9mDQFwEMKpR4/mFu4Du
	CZt/tcck+UMZclFVXg3Qf1ejitYgOVIZ7UcJZaSvesE611h3yEQSlzAtxW5ZqaRn43iG369tl7bwf
	RraBtx9sJ+/bqaKXfFDDyYMpec5rgMlthNZ6ckLIF05AuJ2h1118v+1BQXQss3bsaC5+uve5oWNZG
	yQOtUKdFpKbiTnDydXPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhtGG-0002Bt-PA; Sun, 07 Jun 2020 11:14:44 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhtG8-0002BR-EW
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 11:14:38 +0000
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MEFjJ-1jptcK2jxt-00AFtO; Sun, 07 Jun 2020 13:14:33 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  7 Jun 2020 13:13:46 +0200
Message-Id: <20200607111346.2164-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:f4AC6jv7mUvIthvCzJ9M8p1tD5d6ktkLhTEI+htFwfJ+hbFHe1J
 51sFSMMLxfheFl445ADiAu7/WEwiQHh93stzRsIReeedSjYqxMJPLkiFirqDmmgSKnqJQLZ
 EJZhY+hIDoKDou1EQGET/5ogNifecONMi+ghPnTyOcwNn2DSBnkhuI4bjylEhqeJjAUCIBp
 /pD7JHxjNT60YkxDoQ4XA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qV054tur6/c=:cofRFGT3IOQ7/cyIgTi7dQ
 Aejj3DkEj2sxN4cPlZ686MZAisiQROT7yRsKtANnBurST7fv1KuoN6pPcq+BaSb364+/EzpVD
 qqO05bACzH/QKW8SKrYrKcs9Ovdmumtl/2FNbh2FttKj2lFTq9vK500YlWK/qAy0lJQt2peVo
 hTGt669cpqkUgAlhOxXrcnBKn4Dy8160iMEsYFbNvT3kyCRaSjsYxK+kC4VnkTVloL153V6F+
 YL+PArGgqfzBSbtr5vzwr6XD6QTFfvgL2mPSEqXdhAIiq7HRYP8l8M058TipVzKjjtp39ktRa
 jqb2+7Gdceiv+d4UeRjLTXPvT67/3NAbQYhkwiB4087/BzIwCN0nZGXjihRW3Fdw0bnVsfNRq
 cnMQHJmz+7RJd6lNKZKS7UEbnzpkznJ5fwg8So/xv+8EOJkq96IMRo9YWVy6AfwEGSjvgU9A8
 hP0P1enKL7M2q+3PZRF1ki3pTWPqRxOQvxRPIpxV36vKT61aseaTfBpYuK6Um4xnY8i89JkA6
 vAmgQpyl3FyI/41N2se/UvdaDcM8wN5faqvAtzRyaBVAMOt6aRAIhK3KCssYgBTMtDXXK41Ea
 DtbHgawZESZOcbM58JGBfwhy2aVpi+9xmm2ES9fgCvp3RcsgtGb/8+PaS3zGXmrEGeBIuIYKg
 MhhYL4o36A5wLjP7NHEeQKlb1uEmHYEV54XaZ6ZUxlVBTVprZPavYHF8mwM8c5NQAYiZH4CfK
 N9Qvz1HwqLv8LY3WIwYs1NCygpaVLnpvyRkgkGA5fRKKnya7pV5aSgrGua2gsKDZVn9+2tbC8
 RwDO1EhQwcmrBx9n/DBtwyq6CEo54H7tMGfd5t+EYNu00eziZU5qb05NunUkAAXTvmn8KVr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_041436_779091_F5C9EB3F 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] apm821xx: move device definitions to
 subfiles
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
Cc: Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

With several subtargets, the image/Makefile becomes crowded after a
while. Many targets have moved their device definitions to $subtarget.mk
files to have them more organized, let's do this here as well.

While at it, also move subtarget-specific build recipes.

Cc: Christian Lamparter <chunkeey@gmail.com>
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/apm821xx/image/Makefile | 159 +--------------------------
 target/linux/apm821xx/image/nand.mk  | 126 +++++++++++++++++++++
 target/linux/apm821xx/image/sata.mk  |  25 +++++
 3 files changed, 152 insertions(+), 158 deletions(-)
 create mode 100644 target/linux/apm821xx/image/nand.mk
 create mode 100644 target/linux/apm821xx/image/sata.mk

diff --git a/target/linux/apm821xx/image/Makefile b/target/linux/apm821xx/image/Makefile
index c26c015751..1b7c466a44 100644
--- a/target/linux/apm821xx/image/Makefile
+++ b/target/linux/apm821xx/image/Makefile
@@ -34,14 +34,6 @@ define Build/copy-file
 	cat "$(1)" > "$@"
 endef
 
-define Build/create-uImage-dtb
-	# flat_dt target expect FIT image - which WNDR4700's uboot doesn't support
-	-$(STAGING_DIR_HOST)/bin/mkimage -A $(LINUX_KARCH) \
-		-O linux -T kernel -C none \
-		-n '$(call toupper,$(LINUX_KARCH)) $(VERSION_DIST) Linux-$(LINUX_VERSION)' \
-		-d "$@.dtb" "$@.dtb.uimage"
-endef
-
 define Build/dtb
 	$(call Image/BuildDTB,../dts/$(DEVICE_DTS).dts,$@.dtb,,--space $(DTB_SIZE))
 endef
@@ -50,27 +42,6 @@ define Build/export-dtb
 	cp $(IMAGE_KERNEL).dtb $@
 endef
 
-define Build/hdd-img
-	./mbl_gen_hdd_img.sh $@ $@.boot $(IMAGE_ROOTFS) $(CONFIG_TARGET_KERNEL_PARTSIZE) $(CONFIG_TARGET_ROOTFS_PARTSIZE)
-endef
-
-define Build/MerakiAdd-dtb
-	$(call Image/BuildDTB,../dts/$(DEVICE_DTS).dts,$@.dtb)
-	( \
-		dd if=$@.dtb bs=$(DTB_SIZE) conv=sync; \
-		cat $@ ; \
-	) > $@.new
-	@mv $@.new $@
-endef
-
-define Build/MerakiNAND
-	-$(STAGING_DIR_HOST)/bin/mkmerakifw \
-		-B $(BOARD_NAME) -s \
-		-i $@ \
-		-o $@.new
-	@cp $@.new $@
-endef
-
 define Build/MuImage-initramfs
 	rm -rf $@.fakerd $@.new
 
@@ -119,134 +90,6 @@ define Device/Default
   SUPPORTED_DEVICES = $(subst _,$(comma),$(1))
 endef
 
-ifeq ($(SUBTARGET),nand)
-
-define Device/meraki_mr24
-  DEVICE_VENDOR := Cisco Meraki
-  DEVICE_MODEL := MR24
-  DEVICE_PACKAGES := kmod-spi-gpio -swconfig
-  BOARD_NAME := mr24
-  DEVICE_DTS := meraki-mr24
-  IMAGES := sysupgrade.bin
-  DTB_SIZE := 64512
-  IMAGE_SIZE := 8191k
-  KERNEL := kernel-bin | lzma | uImage lzma | MerakiAdd-dtb | MerakiNAND
-  KERNEL_INITRAMFS := kernel-bin | lzma | dtb | MuImage-initramfs lzma
-  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
-  UBINIZE_OPTS := -E 5
-  SUPPORTED_DEVICES += mr24
-endef
-TARGET_DEVICES += meraki_mr24
-
-define Device/meraki_mx60
-  DEVICE_VENDOR := Cisco Meraki
-  DEVICE_MODEL := MX60/MX60W
-  DEVICE_PACKAGES := kmod-spi-gpio kmod-usb-ledtrig-usbport kmod-usb-dwc2 \
-		     kmod-usb-storage block-mount
-  BOARD_NAME := mx60
-  DEVICE_DTS := meraki-mx60
-  BLOCKSIZE := 63k
-  IMAGES := sysupgrade.bin
-  DTB_SIZE := 64512
-  IMAGE_SIZE := 1021m
-  KERNEL_SIZE := 4031k
-  KERNEL := kernel-bin | gzip | uImage gzip | MerakiAdd-dtb | MerakiNAND
-  KERNEL_INITRAMFS := kernel-bin | gzip | dtb | MuImage-initramfs gzip
-  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
-  UBINIZE_OPTS := -E 5
-  SUPPORTED_DEVICES += mx60
-endef
-TARGET_DEVICES += meraki_mx60
-
-define Device/netgear_wndap6x0
-  DEVICE_VENDOR := NETGEAR
-  DEVICE_PACKAGES := kmod-eeprom-at24
-  SUBPAGESIZE := 256
-  PAGESIZE := 512
-  BLOCKSIZE := 16k
-  DTB_SIZE := 32768
-  IMAGE_SIZE := 27392k
-  IMAGES := sysupgrade.bin factory.img
-  KERNEL_SIZE := 4032k
-  KERNEL := dtb | kernel-bin | gzip | MuImage-initramfs gzip
-  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
-  IMAGE/factory.img := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
-  UBINIZE_OPTS := -E 5
-endef
-
-define Device/netgear_wndap620
-  $(Device/netgear_wndap6x0)
-  DEVICE_MODEL := WNDAP620 (Premium Wireless-N)
-  DEVICE_DTS := netgear-wndap620
-endef
-TARGET_DEVICES += netgear_wndap620
-
-define Device/netgear_wndap660
-  $(Device/netgear_wndap6x0)
-  DEVICE_MODEL := WNDAP660 (Dual Radio Dual Band Wireless-N)
-  DEVICE_DTS := netgear-wndap660
-endef
-TARGET_DEVICES += netgear_wndap660
-
-define Device/netgear_wndr4700
-  DEVICE_VENDOR := NETGEAR
-  DEVICE_MODEL := Centria N900 WNDR4700/WNDR4720
-  DEVICE_PACKAGES := badblocks block-mount e2fsprogs kmod-hwmon-drivetemp \
-	kmod-dm kmod-fs-ext4 kmod-fs-vfat kmod-usb-ledtrig-usbport \
-	kmod-md-mod kmod-nls-cp437 kmod-nls-iso8859-1 kmod-nls-iso8859-15 \
-	kmod-nls-utf8 kmod-usb3 kmod-usb-dwc2 kmod-usb-storage \
-	partx-utils
-  BOARD_NAME := wndr4700
-  DEVICE_DTS := netgear-wndr4700
-  PAGESIZE := 2048
-  SUBPAGESIZE := 512
-  BLOCKSIZE := 128k
-  DTB_SIZE := 131008
-  IMAGE_SIZE := 24960k
-  IMAGES := factory.img sysupgrade.bin
-  ARTIFACTS := device-tree.dtb
-  KERNEL_SIZE := 3584k
-  # append a fake/empty rootfs to fool netgear's uboot
-  # CHECK_DNI_FIRMWARE_ROOTFS_INTEGRITY in do_chk_dniimg()
-  KERNEL := kernel-bin | lzma | uImage lzma | pad-offset $$(BLOCKSIZE) 64 | \
-	    append-uImage-fakehdr filesystem | dtb | create-uImage-dtb | prepend-dtb
-  KERNEL_INITRAMFS := kernel-bin | gzip | dtb | MuImage-initramfs gzip
-  IMAGE/factory.img := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi | \
-		       netgear-dni | check-size
-  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
-  ARTIFACT/device-tree.dtb := export-dtb | uImage none
-  NETGEAR_BOARD_ID := WNDR4700
-  NETGEAR_HW_ID := 29763875+128+256
-  UBINIZE_OPTS := -E 5
-  SUPPORTED_DEVICES += wndr4700
-endef
-TARGET_DEVICES += netgear_wndr4700
-
-endif
-
-ifeq ($(SUBTARGET),sata)
-
-define Device/wd_mybooklive
-  DEVICE_VENDOR := Western Digital
-  DEVICE_MODEL := My Book Live Series (Single + Duo)
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport kmod-usb-storage kmod-fs-vfat wpad-basic
-  DEVICE_DTS := wd-mybooklive
-  SUPPORTED_DEVICES += mbl wd,mybooklive-duo
-  BLOCKSIZE := 1k
-  DTB_SIZE := 16384
-  KERNEL := kernel-bin | dtb | gzip | uImage gzip
-  KERNEL_INITRAMFS := kernel-bin | gzip | dtb | MuImage-initramfs gzip
-  IMAGES := factory.img.gz sysupgrade.img.gz
-  ARTIFACTS := apollo3g.dtb
-  DEVICE_DTB := apollo3g.dtb
-  FILESYSTEMS := ext4 squashfs
-  IMAGE/factory.img.gz := boot-script | boot-img | hdd-img | gzip
-  IMAGE/sysupgrade.img.gz := boot-script | boot-img | hdd-img | gzip | append-metadata
-  ARTIFACT/apollo3g.dtb := export-dtb
-endef
-
-TARGET_DEVICES += wd_mybooklive
-
-endif
+include $(SUBTARGET).mk
 
 $(eval $(call BuildImage))
diff --git a/target/linux/apm821xx/image/nand.mk b/target/linux/apm821xx/image/nand.mk
new file mode 100644
index 0000000000..a7338e79a0
--- /dev/null
+++ b/target/linux/apm821xx/image/nand.mk
@@ -0,0 +1,126 @@
+define Build/create-uImage-dtb
+	# flat_dt target expect FIT image - which WNDR4700's uboot doesn't support
+	-$(STAGING_DIR_HOST)/bin/mkimage -A $(LINUX_KARCH) \
+		-O linux -T kernel -C none \
+		-n '$(call toupper,$(LINUX_KARCH)) $(VERSION_DIST) Linux-$(LINUX_VERSION)' \
+		-d "$@.dtb" "$@.dtb.uimage"
+endef
+
+define Build/MerakiAdd-dtb
+	$(call Image/BuildDTB,../dts/$(DEVICE_DTS).dts,$@.dtb)
+	( \
+		dd if=$@.dtb bs=$(DTB_SIZE) conv=sync; \
+		cat $@ ; \
+	) > $@.new
+	@mv $@.new $@
+endef
+
+define Build/MerakiNAND
+	-$(STAGING_DIR_HOST)/bin/mkmerakifw \
+		-B $(BOARD_NAME) -s \
+		-i $@ \
+		-o $@.new
+	@cp $@.new $@
+endef
+
+
+define Device/meraki_mr24
+  DEVICE_VENDOR := Cisco Meraki
+  DEVICE_MODEL := MR24
+  DEVICE_PACKAGES := kmod-spi-gpio -swconfig
+  BOARD_NAME := mr24
+  DEVICE_DTS := meraki-mr24
+  IMAGES := sysupgrade.bin
+  DTB_SIZE := 64512
+  IMAGE_SIZE := 8191k
+  KERNEL := kernel-bin | lzma | uImage lzma | MerakiAdd-dtb | MerakiNAND
+  KERNEL_INITRAMFS := kernel-bin | lzma | dtb | MuImage-initramfs lzma
+  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
+  UBINIZE_OPTS := -E 5
+  SUPPORTED_DEVICES += mr24
+endef
+TARGET_DEVICES += meraki_mr24
+
+define Device/meraki_mx60
+  DEVICE_VENDOR := Cisco Meraki
+  DEVICE_MODEL := MX60/MX60W
+  DEVICE_PACKAGES := kmod-spi-gpio kmod-usb-ledtrig-usbport kmod-usb-dwc2 \
+		     kmod-usb-storage block-mount
+  BOARD_NAME := mx60
+  DEVICE_DTS := meraki-mx60
+  BLOCKSIZE := 63k
+  IMAGES := sysupgrade.bin
+  DTB_SIZE := 64512
+  IMAGE_SIZE := 1021m
+  KERNEL_SIZE := 4031k
+  KERNEL := kernel-bin | gzip | uImage gzip | MerakiAdd-dtb | MerakiNAND
+  KERNEL_INITRAMFS := kernel-bin | gzip | dtb | MuImage-initramfs gzip
+  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
+  UBINIZE_OPTS := -E 5
+  SUPPORTED_DEVICES += mx60
+endef
+TARGET_DEVICES += meraki_mx60
+
+define Device/netgear_wndap6x0
+  DEVICE_VENDOR := NETGEAR
+  DEVICE_PACKAGES := kmod-eeprom-at24
+  SUBPAGESIZE := 256
+  PAGESIZE := 512
+  BLOCKSIZE := 16k
+  DTB_SIZE := 32768
+  IMAGE_SIZE := 27392k
+  IMAGES := sysupgrade.bin factory.img
+  KERNEL_SIZE := 4032k
+  KERNEL := dtb | kernel-bin | gzip | MuImage-initramfs gzip
+  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
+  IMAGE/factory.img := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
+  UBINIZE_OPTS := -E 5
+endef
+
+define Device/netgear_wndap620
+  $(Device/netgear_wndap6x0)
+  DEVICE_MODEL := WNDAP620 (Premium Wireless-N)
+  DEVICE_DTS := netgear-wndap620
+endef
+TARGET_DEVICES += netgear_wndap620
+
+define Device/netgear_wndap660
+  $(Device/netgear_wndap6x0)
+  DEVICE_MODEL := WNDAP660 (Dual Radio Dual Band Wireless-N)
+  DEVICE_DTS := netgear-wndap660
+endef
+TARGET_DEVICES += netgear_wndap660
+
+define Device/netgear_wndr4700
+  DEVICE_VENDOR := NETGEAR
+  DEVICE_MODEL := Centria N900 WNDR4700/WNDR4720
+  DEVICE_PACKAGES := badblocks block-mount e2fsprogs kmod-hwmon-drivetemp \
+	kmod-dm kmod-fs-ext4 kmod-fs-vfat kmod-usb-ledtrig-usbport \
+	kmod-md-mod kmod-nls-cp437 kmod-nls-iso8859-1 kmod-nls-iso8859-15 \
+	kmod-nls-utf8 kmod-usb3 kmod-usb-dwc2 kmod-usb-storage \
+	partx-utils
+  BOARD_NAME := wndr4700
+  DEVICE_DTS := netgear-wndr4700
+  PAGESIZE := 2048
+  SUBPAGESIZE := 512
+  BLOCKSIZE := 128k
+  DTB_SIZE := 131008
+  IMAGE_SIZE := 24960k
+  IMAGES := factory.img sysupgrade.bin
+  ARTIFACTS := device-tree.dtb
+  KERNEL_SIZE := 3584k
+  # append a fake/empty rootfs to fool netgear's uboot
+  # CHECK_DNI_FIRMWARE_ROOTFS_INTEGRITY in do_chk_dniimg()
+  KERNEL := kernel-bin | lzma | uImage lzma | pad-offset $$(BLOCKSIZE) 64 | \
+	    append-uImage-fakehdr filesystem | dtb | create-uImage-dtb | prepend-dtb
+  KERNEL_INITRAMFS := kernel-bin | gzip | dtb | MuImage-initramfs gzip
+  IMAGE/factory.img := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi | \
+		       netgear-dni | check-size
+  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
+  ARTIFACT/device-tree.dtb := export-dtb | uImage none
+  NETGEAR_BOARD_ID := WNDR4700
+  NETGEAR_HW_ID := 29763875+128+256
+  UBINIZE_OPTS := -E 5
+  SUPPORTED_DEVICES += wndr4700
+endef
+TARGET_DEVICES += netgear_wndr4700
diff --git a/target/linux/apm821xx/image/sata.mk b/target/linux/apm821xx/image/sata.mk
new file mode 100644
index 0000000000..444b2441f0
--- /dev/null
+++ b/target/linux/apm821xx/image/sata.mk
@@ -0,0 +1,25 @@
+define Build/hdd-img
+	./mbl_gen_hdd_img.sh $@ $@.boot $(IMAGE_ROOTFS) $(CONFIG_TARGET_KERNEL_PARTSIZE) $(CONFIG_TARGET_ROOTFS_PARTSIZE)
+endef
+
+
+define Device/wd_mybooklive
+  DEVICE_VENDOR := Western Digital
+  DEVICE_MODEL := My Book Live Series (Single + Duo)
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport kmod-usb-storage kmod-fs-vfat wpad-basic
+  DEVICE_DTS := wd-mybooklive
+  SUPPORTED_DEVICES += mbl wd,mybooklive-duo
+  BLOCKSIZE := 1k
+  DTB_SIZE := 16384
+  KERNEL := kernel-bin | dtb | gzip | uImage gzip
+  KERNEL_INITRAMFS := kernel-bin | gzip | dtb | MuImage-initramfs gzip
+  IMAGES := factory.img.gz sysupgrade.img.gz
+  ARTIFACTS := apollo3g.dtb
+  DEVICE_DTB := apollo3g.dtb
+  FILESYSTEMS := ext4 squashfs
+  IMAGE/factory.img.gz := boot-script | boot-img | hdd-img | gzip
+  IMAGE/sysupgrade.img.gz := boot-script | boot-img | hdd-img | gzip | append-metadata
+  ARTIFACT/apollo3g.dtb := export-dtb
+endef
+
+TARGET_DEVICES += wd_mybooklive
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
