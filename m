Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE6F12DA75
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 18:06:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KDZYMR+1vpYyeBW2re4PpxOrEMEpXe8bZFAEm5p2M4o=; b=ZiFFEGth5AVAPR
	6s1O9K/9pY9BdjtLdHpGKVyG3FEHVEndDQkjeQJs51UqJd8Wz5ew9mbwJu0h5bhBN1Yj6hSPRILMn
	ZqrXX8vrKWPcBM9V4qmHs9MjrJDYrKIo3bL46mWLtdvBIWvw2nxoDwJG4y4m/qktcVcCaKxf9PbDH
	61xmF9vcjbakkbWo8ka7uQ6MvbvA2dDv4gpYA7hPW/6VBPVFDryjD+Yk/VOoVR2IXOTMLsWUkMViu
	87/rr/BpaEAJnlW9UoQjP+TyTI8mtPrGzXXVjLZ0YeF3eUhwfCjhOv2zck2Um8S2L9Mvn9UokjpYE
	136FytaD09hBXOZV37rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imKy9-0003IQ-7c; Tue, 31 Dec 2019 17:06:09 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imKxq-00039d-6R
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 17:05:52 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MZkxj-1jHHXq46Mh-00WjlC for <openwrt-devel@lists.openwrt.org>; Tue, 31
 Dec 2019 18:05:46 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 18:04:53 +0100
Message-Id: <20191231170454.31452-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:LoG/1r+r7uc+ivQXQiMYZrhrBws1WihGGcgfNagzXYtL8C8gD7q
 E09+fHaEzY+4qYfcy56rO5uWFSVv18mmG+bBs25x2tnRByAvtqeVntq/aMPXzFbfJ9KFrk1
 nzHkgn4A9mXTxlcHJ02hUSODn05oelqAJcofnPSSv38vmyTAAVRP/eWBnPU9ILdfLqtLNhs
 bdoNeNPzNcI99pB5PiQjA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cx+q8hWcJRw=:0IURcWKLKItR4N84g25jtG
 Rld1l627ZnBxGmzpp+zPTfK0p6oh9P3xMDrW+Nwk6OK1c0BNVblbAN9c3t3Q+82Zlw/0iNggl
 yGT9AMq8l6c5G9TMPyROVzKHU/Iwl/ufNeCCYNKo22fiaQeO9pBsY5SW36TrzZBpRwJ18SRKK
 O/MH2w63t2YVntuXkN7+mFMknJDo5ZMbpfxCbVo7VolNuTfQHAo1XmZVG537mE9Fjzsbp1m0j
 eVVUM5QISxH8QsYWJ3/jXQWKsKIWxGeZO2wjUN83HU1WGeykubRZxMMJjtINAB2ELf3bX/fD+
 KhlSKNIxkl2bWuR9fKfTFm6Q3rUy1h+sd+WO/V9H95srY1OVu/SNrKV9Os+gz8RVM8kj9AZV9
 D9Mv0FJopxdAOrsqJxe3VVB9UO4qhfj24Y9ZHi6Jnyq1RBT/JpwtjrOmxPUFXgYdMqcIhMLGv
 nUTcvTyxIqYlyveBoHKsV7Yn7TJCcPZdPHpxJoTcngFBbRIkdepo9GxAiFzHYikaF8742twye
 pCAnJ97syhYz01poYHwTLNI0tKL84jCP6UyiBjCMe8Vra/3PnDxP/Gou+oE29gm8XzbEJo8HF
 hpQkJ5w8SiDcDnVm+FBgLn/bIpqI1TgbJXch3ab9k8oc0+fpPekzapOw1Kux0ElEXIN0vsmyJ
 FvUeUOel6GpW1AlpUJUkpYQ0l3qW9AFPEQg4FhObvF7B03Al5ZhjSArDNUX1ah4MC+HzmwHFq
 5o4GWh80XZIw/erTmBczxdmuBHSuvnA28VtnCU7j7ggRGcHGBqtoYq3+seWGvb1Gn73UBJx85
 eZB8TLIOjikE0rZ3kjFxekhxOyHSAOLjvBwNmHKpzplkedE4GqrCBEeYlwevh7F3rEgs2Bfub
 xrqViVUDOZLg/429sJ1XizRUKHvvPT7c2/7yFpKBk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_090550_527078_8EAB6306 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] treewide: move mktplinkfw to
 tplink-v1-image in image-commands.mk
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This move the slightly different target-specific implementations of
mktplinkfw from the targets to include/image-commands.mk and renames
it to tplink-v1-image. Having a common version will increase
consistency between implementation and will complete the
tplink build command already present in the new location.

Due to the slight differences of the original implementations, this
also does some adjustments to the device build commands/variables.

Tested on:
- TL-WDR4300 v1 (ath79, factory)
- TL-WDR4900 v1 (mpc85xx, sysupgrade)

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 include/image-commands.mk                   | 18 ++++++++++++++
 target/linux/ath79/image/common-tp-link.mk  | 23 ++----------------
 target/linux/ath79/image/generic-tp-link.mk |  8 +++---
 target/linux/ath79/image/tiny-tp-link.mk    | 14 +++++------
 target/linux/mpc85xx/image/Makefile         | 27 +++------------------
 target/linux/ramips/image/mt7620.mk         | 21 ++--------------
 6 files changed, 37 insertions(+), 74 deletions(-)

diff --git a/include/image-commands.mk b/include/image-commands.mk
index 5dfd6a2c2f..5c2126e7f7 100644
--- a/include/image-commands.mk
+++ b/include/image-commands.mk
@@ -335,6 +335,24 @@ define Build/tplink-v1-header
 	@mv $@.new $@
 endef
 
+# combine kernel and rootfs into one image
+# mktplinkfw <type> <optional extra arguments to mktplinkfw binary>
+# <type> is "sysupgrade" or "factory"
+#
+# -a align the rootfs start on an <align> bytes boundary
+# -j add jffs2 end-of-filesystem markers
+# -s strip padding from end of the image
+# -X reserve <size> bytes in the firmware image (hexval prefixed with 0x)
+define Build/tplink-v1-image
+	-$(STAGING_DIR_HOST)/bin/mktplinkfw \
+		-H $(TPLINK_HWID) -W $(TPLINK_HWREV) -F $(TPLINK_FLASHLAYOUT) \
+		-N "$(VERSION_DIST)" -V $(REVISION) -m $(TPLINK_HEADER_VERSION) \
+		-k $(IMAGE_KERNEL) -r $(IMAGE_ROOTFS) -o $@.new -j -X 0x40000 \
+		-a $(call rootfs_align,$(FILESYSTEM)) \
+		$(wordlist 2,$(words $(1)),$(1)) \
+		$(if $(findstring sysupgrade,$(word 1,$(1))),-s) && mv $@.new $@ || rm -f $@
+endef
+
 define Build/tplink-v2-header
 	$(STAGING_DIR_HOST)/bin/mktplinkfw2 \
 		-c -H $(TPLINK_HWID) -W $(TPLINK_HWREV) -L $(KERNEL_LOADADDR) \
diff --git a/target/linux/ath79/image/common-tp-link.mk b/target/linux/ath79/image/common-tp-link.mk
index 0dc58191a8..87fc922b3b 100644
--- a/target/linux/ath79/image/common-tp-link.mk
+++ b/target/linux/ath79/image/common-tp-link.mk
@@ -5,24 +5,6 @@ define rootfs_align
 $(patsubst %-256k,0x40000,$(patsubst %-128k,0x20000,$(patsubst %-64k,0x10000,$(patsubst squashfs%,0x4,$(patsubst root.%,%,$(1))))))
 endef
 
-# combine kernel and rootfs into one image
-# mktplinkfw <type> <optional extra arguments to mktplinkfw binary>
-# <type> is "sysupgrade" or "factory"
-#
-# -a align the rootfs start on an <align> bytes boundary
-# -j add jffs2 end-of-filesystem markers
-# -s strip padding from end of the image
-# -X reserve <size> bytes in the firmware image (hexval prefixed with 0x)
-define Build/mktplinkfw
-	-$(STAGING_DIR_HOST)/bin/mktplinkfw \
-		-H $(TPLINK_HWID) -W $(TPLINK_HWREV) -F $(TPLINK_FLASHLAYOUT) \
-		-N OpenWrt -V $(REVISION) -m $(TPLINK_HEADER_VERSION) \
-		-k $(IMAGE_KERNEL) -r $@ -o $@.new -j -X 0x40000 \
-		-a $(call rootfs_align,$(FILESYSTEM)) \
-		$(wordlist 2,$(words $(1)),$(1)) \
-		$(if $(findstring sysupgrade,$(word 1,$(1))),-s) && mv $@.new $@ || rm -f $@
-endef
-
 # mktplinkfw-combined
 #
 # -c combined image
@@ -50,9 +32,8 @@ define Device/tplink
   KERNEL := kernel-bin | append-dtb | lzma
   KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | tplink-v1-header
   IMAGES += factory.bin
-  IMAGE/sysupgrade.bin := append-rootfs | mktplinkfw sysupgrade | \
-	append-metadata
-  IMAGE/factory.bin := append-rootfs | mktplinkfw factory
+  IMAGE/sysupgrade.bin := tplink-v1-image sysupgrade | append-metadata
+  IMAGE/factory.bin := tplink-v1-image factory
 endef
 
 define Device/tplink-nolzma
diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index 97c4bb9441..3d37b4105b 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -157,8 +157,8 @@ define Device/tplink_archer-c7-v2
   TPLINK_HWID := 0xc7000002
   SUPPORTED_DEVICES += archer-c7
   IMAGES += factory-us.bin factory-eu.bin
-  IMAGE/factory-us.bin := append-rootfs | mktplinkfw factory -C US
-  IMAGE/factory-eu.bin := append-rootfs | mktplinkfw factory -C EU
+  IMAGE/factory-us.bin := tplink-v1-image factory -C US
+  IMAGE/factory-eu.bin := tplink-v1-image factory -C EU
 endef
 TARGET_DEVICES += tplink_archer-c7-v2
 
@@ -502,9 +502,9 @@ define Device/tplink_tl-wr2543-v1
   DEVICE_VARIANT := v1
   DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
   TPLINK_HWID := 0x25430001
-  IMAGE/sysupgrade.bin := append-rootfs | mktplinkfw sysupgrade -v 3.13.99 | \
+  IMAGE/sysupgrade.bin := tplink-v1-image sysupgrade -v 3.13.99 | \
 	append-metadata | check-size $$$$(IMAGE_SIZE)
-  IMAGE/factory.bin := append-rootfs | mktplinkfw factory -v 3.13.99
+  IMAGE/factory.bin := tplink-v1-image factory -v 3.13.99
   SUPPORTED_DEVICES += tl-wr2543-v1
 endef
 TARGET_DEVICES += tplink_tl-wr2543-v1
diff --git a/target/linux/ath79/image/tiny-tp-link.mk b/target/linux/ath79/image/tiny-tp-link.mk
index 172f22f320..070ede9721 100644
--- a/target/linux/ath79/image/tiny-tp-link.mk
+++ b/target/linux/ath79/image/tiny-tp-link.mk
@@ -198,8 +198,8 @@ define Device/tplink_tl-wr841-v11
   TPLINK_HWID := 0x08410011
   SUPPORTED_DEVICES += tl-wr841n-v11
   IMAGES += factory-us.bin factory-eu.bin
-  IMAGE/factory-us.bin := append-rootfs | mktplinkfw factory -C US
-  IMAGE/factory-eu.bin := append-rootfs | mktplinkfw factory -C EU
+  IMAGE/factory-us.bin := tplink-v1-image factory -C US
+  IMAGE/factory-eu.bin := tplink-v1-image factory -C EU
 endef
 TARGET_DEVICES += tplink_tl-wr841-v11
 
@@ -211,8 +211,8 @@ define Device/tplink_tl-wr841-v12
   TPLINK_HWID := 0x08410012
   SUPPORTED_DEVICES += tl-wr841n-v11
   IMAGES += factory-us.bin factory-eu.bin
-  IMAGE/factory-us.bin := append-rootfs | mktplinkfw factory -C US
-  IMAGE/factory-eu.bin := append-rootfs | mktplinkfw factory -C EU
+  IMAGE/factory-us.bin := tplink-v1-image factory -C US
+  IMAGE/factory-eu.bin := tplink-v1-image factory -C EU
 endef
 TARGET_DEVICES += tplink_tl-wr841-v12
 
@@ -234,9 +234,9 @@ define Device/tplink_tl-wr940n-v4
   TPLINK_HWID := 0x09400004
   SUPPORTED_DEVICES += tl-wr940n-v4
   IMAGES += factory-us.bin factory-eu.bin factory-br.bin
-  IMAGE/factory-us.bin := append-rootfs | mktplinkfw factory -C US
-  IMAGE/factory-eu.bin := append-rootfs | mktplinkfw factory -C EU
-  IMAGE/factory-br.bin := append-rootfs | mktplinkfw factory -C BR
+  IMAGE/factory-us.bin := tplink-v1-image factory -C US
+  IMAGE/factory-eu.bin := tplink-v1-image factory -C EU
+  IMAGE/factory-br.bin := tplink-v1-image factory -C BR
 endef
 TARGET_DEVICES += tplink_tl-wr940n-v4
 
diff --git a/target/linux/mpc85xx/image/Makefile b/target/linux/mpc85xx/image/Makefile
index 5ca16909e7..1fb0e28444 100644
--- a/target/linux/mpc85xx/image/Makefile
+++ b/target/linux/mpc85xx/image/Makefile
@@ -5,7 +5,7 @@
 include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/image.mk
 
-DEVICE_VARS += TPLINK_HWID TPLINK_HWREV TPLINK_FLASHLAYOUT
+DEVICE_VARS += TPLINK_HWID TPLINK_HWREV TPLINK_FLASHLAYOUT TPLINK_HEADER_VERSION
 
 define rootfs_align
 $(patsubst %-256k,0x40000,$(patsubst %-128k,0x20000,$(patsubst %-64k,0x10000,$(patsubst squashfs%,0x4,$(patsubst root.%,%,$(1))))))
@@ -15,26 +15,6 @@ define Build/copy-file
 	cat "$(1)" > "$@"
 endef
 
-# combine kernel and rootfs into one image
-# mktplinkfw <type> <optional extra arguments to mktplinkfw binary>
-# <type> is "sysupgrade" or "factory"
-#
-# -a align the rootfs start on an <align> bytes boundary
-# -j add jffs2 end-of-filesystem markers
-# -s strip padding from end of the image
-# -X reserve <size> bytes in the firmware image (hexval prefixed with 0x)
-define Build/mktplinkfw
-	-$(STAGING_DIR_HOST)/bin/mktplinkfw \
-		-H $(TPLINK_HWID) -W $(TPLINK_HWREV) -F $(TPLINK_FLASHLAYOUT) -N OpenWrt -V $(REVISION) \
-		-k $(IMAGE_KERNEL) \
-		-r $@ \
-		-o $@.new \
-		-j -X 0x40000 \
-		-a $(call rootfs_align,$(FILESYSTEM)) \
-		$(wordlist 2,$(words $(1)),$(1)) \
-		$(if $(findstring sysupgrade,$(word 1,$(1))),-s) && mv $@.new $@ || rm -f $@
-endef
-
 define Device/Default
   PROFILES := Default
   DEVICE_DTS := $(lastword $(subst _, ,$(1)))
@@ -51,6 +31,7 @@ define Device/tplink_tl-wdr4900-v1
   DEVICE_VENDOR := TP-Link
   DEVICE_MODEL := TL-WDR4900
   DEVICE_VARIANT := v1
+  TPLINK_HEADER_VERSION := 1
   TPLINK_HWID := 0x49000001
   TPLINK_HWREV := 1
   TPLINK_FLASHLAYOUT := 16Mppc
@@ -64,8 +45,8 @@ define Device/tplink_tl-wdr4900-v1
   ARTIFACTS := fdt.bin
   ARTIFACT/fdt.bin := append-dtb
   IMAGES := fdt.bin factory.bin sysupgrade.bin
-  IMAGE/sysupgrade.bin := append-rootfs | mktplinkfw sysupgrade | append-metadata
-  IMAGE/factory.bin := append-rootfs | mktplinkfw factory
+  IMAGE/sysupgrade.bin := tplink-v1-image sysupgrade | append-metadata
+  IMAGE/factory.bin := tplink-v1-image factory
 endef
 TARGET_DEVICES += tplink_tl-wdr4900-v1
 
diff --git a/target/linux/ramips/image/mt7620.mk b/target/linux/ramips/image/mt7620.mk
index cbf35f804a..07f7607220 100644
--- a/target/linux/ramips/image/mt7620.mk
+++ b/target/linux/ramips/image/mt7620.mk
@@ -16,23 +16,6 @@ define Build/elecom-header
 		--owner=0 --group=0 -f $@ -C $(KDIR) v_0.0.0.bin v_0.0.0.md5
 endef
 
-# combine kernel and rootfs into one image
-# mktplinkfw <type> <optional extra arguments to mktplinkfw binary>
-# <type> is "sysupgrade" or "factory"
-#
-# -a align the rootfs start on an <align> bytes boundary
-# -j add jffs2 end-of-filesystem markers
-# -s strip padding from end of the image
-# -X reserve <size> bytes in the firmware image (hexval prefixed with 0x)
-define Build/mktplinkfw
-	-$(STAGING_DIR_HOST)/bin/mktplinkfw \
-		-H $(TPLINK_HWID) -W $(TPLINK_HWREV) -F $(TPLINK_FLASHLAYOUT) \
-		-N OpenWrt -V $(REVISION) -m $(TPLINK_HEADER_VERSION) \
-		-k $(IMAGE_KERNEL) -r $(IMAGE_ROOTFS) -o $@.new -j -X 0x40000 -a 0x4 \
-		$(wordlist 2,$(words $(1)),$(1)) \
-		$(if $(findstring sysupgrade,$(word 1,$(1))),-s) && mv $@.new $@ || rm -f $@
-endef
-
 define Device/aigale_ai-br100
   SOC := mt7620a
   IMAGE_SIZE := 7936k
@@ -962,8 +945,8 @@ define Device/tplink_re200-v1
   DEVICE_VARIANT := v1
   DEVICE_PACKAGES := kmod-mt76x0e
   IMAGES += factory.bin
-  IMAGE/sysupgrade.bin := mktplinkfw sysupgrade -e -O
-  IMAGE/factory.bin := mktplinkfw factory -e -O
+  IMAGE/sysupgrade.bin := tplink-v1-image sysupgrade -e -O
+  IMAGE/factory.bin := tplink-v1-image factory -e -O
   IMAGE_SIZE := 7936k
   KERNEL := $(KERNEL_DTB)
   KERNEL_INITRAMFS := $(KERNEL_DTB) | tplink-v1-header -e -O
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
