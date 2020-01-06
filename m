Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5C4131C20
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Jan 2020 00:11:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vUap5qQuOCNfP8i1J+PijPQgMdngImXHQjOFt/5BI8M=; b=G2DPR5g+HHIWwK
	YVgdwg6gXCB1OxTvg88l8saexvxO4Hzs0V4ldciBz32VlGLhRpj7Ettjne8LFb+++knX5Bxh1UkLy
	Juf6ahMIw7j4i+z78WCi7/J6ABde5HEZtKLmW/bPMQNemHD1rV/G3kcAwm1mz/cDViWoXQ0TO4y5G
	oLJhigmdO3/S8T1eR/r/YH2kVWz16WmRj6JMp/HBf11MUTqRFYN/Mwec0hf+A4t37I6y+JQSCGofJ
	HSIrKkAU2zT4Zq+53ukjLIU5WwUKR/0GZ0JdYZEpTvezUVL0+35nqpj86WjoNo524iH66kxu5bkiW
	j4ARXJReV9lRg4w+utdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iobXG-0002LL-TH; Mon, 06 Jan 2020 23:11:46 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iobWy-000293-5z
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 23:11:30 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MEFnP-1iyBv22IGD-00AFP2 for <openwrt-devel@lists.openwrt.org>; Tue, 07
 Jan 2020 00:11:21 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  7 Jan 2020 00:10:36 +0100
Message-Id: <20200106231037.22460-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:ID8gf8iG5lgVkg8sXtyjPLY0oFJhqN/Ul90UEpKVDUZwI2U0FjS
 smj+Tq7egLVrXxJV8Bvv0PKdGX+/Hx9zLx0Lqmu+2D8p9fd6jaYC4OFOeBXRgspVGstWFrz
 699FgB/H/7Oa02GHs+41Amzd6Xb4FatE6Gtii4L4XWUO9wnLbPs+ALXHnwOiV1KmGUITGo9
 wKn6dysKogFqkdCGwEp5Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lzFjqns4SR8=:Ocf8Yx6tjAKISENVm5RK0/
 OEF+/kVWzG0lsVS3XjfNFkt+RSYXLJdPWynRs3AKkpc5yQ6rj/RLZfvdwUDucq8yYymb9V6bo
 Cz8lRGMGYdPuhSh/FLRkycNMonehTCpMqzOc1i/eHFVXiKxrq8ZiX64odbPku1w8bDBIYerZQ
 dj67ELXcRgIeFt97JQYwggGaEP3Ylf8v0okdq9HQIX+OdPKBJ2hQm704zStBL77aE7/xC9Y90
 Ol2+18xowIw+ycAu9Jbq6JrpHfKQTm0CkwusseygODUx/fj3/yo145uyP0IwjA9ho/a7H0AIZ
 +1irz2TaWlAyb8DePCleOwN+vknVXRMMpJ6yxLnq/K693zDeqT0z+M3DUIhI99IV/5TnpSwD1
 o6ieyKbtgq6hrUKQanyx5hTbh5/N/DIaJcgJ4OnQuREcBMBU9xhn6IyHnIhEALiHd+hJrcySr
 nS9P9c3iGBfIOYkjZomZVcqXtcHi8l9HPjlMe2A5u4BCo2W6DfMRXdtitiA/KqY15cJKaxNOP
 jTLR4uiNTJZmAuD8GLkTBS+VzuKRw/ti4lEHE9WFRhjnMBI+1Gj2phOk7E67FRvBcZlO2x4MM
 +U61ugxwRKryNmdyS4b0ckJahPCkxmkU/4CLYl+Xu23K4x987Pj+GvUeqIQlrTZi7NzcQPYXG
 /UAWW0XA3AnrVvqYP33ziDt7A+9TBJ7MA8tQIdyvkZ9bOaXOpewRSn5hUgLax2HLT10533bII
 v5HDnW8sx0CC5wM8sTFGlWuycto6+1XB75xvbnn1qyIAwtA88u4zBx+ytWID5LBhwurqXLset
 1kC9P2F4h4ysFi7bFR7GNHNVSIeTQprndFD1NsERo3XnGSb0F4y5NIqMt8HUHxiwQMKGg4ZzL
 Le3lO0auY2tVBzhB3WvtB1uNWyrC6dkNJFdgzn6Ug=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_151128_516855_E7104C9D 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 1/2] treewide: move mktplinkfw to
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

This also moves rootfs_align as this is required as dependency.

Tested on:
- TL-WDR4300 v1 (ath79, factory)
- TL-WDR4900 v1 (mpc85xx, sysupgrade)

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 include/image-commands.mk                   | 22 +++++++++++++++
 target/linux/ath79/image/common-tp-link.mk  | 27 ++----------------
 target/linux/ath79/image/generic-tp-link.mk |  8 +++---
 target/linux/ath79/image/tiny-tp-link.mk    | 14 +++++-----
 target/linux/mpc85xx/image/Makefile         | 31 +++------------------
 target/linux/ramips/image/mt7620.mk         | 21 ++------------
 6 files changed, 41 insertions(+), 82 deletions(-)

diff --git a/include/image-commands.mk b/include/image-commands.mk
index 5dfd6a2c2f..3b091f26ac 100644
--- a/include/image-commands.mk
+++ b/include/image-commands.mk
@@ -3,6 +3,10 @@
 IMAGE_KERNEL = $(word 1,$^)
 IMAGE_ROOTFS = $(word 2,$^)
 
+define rootfs_align
+$(patsubst %-256k,0x40000,$(patsubst %-128k,0x20000,$(patsubst %-64k,0x10000,$(patsubst squashfs%,0x4,$(patsubst root.%,%,$(1))))))
+endef
+
 define Build/uImage
 	mkimage -A $(LINUX_KARCH) \
 		-O linux -T kernel \
@@ -335,6 +339,24 @@ define Build/tplink-v1-header
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
index 0dc58191a8..1c7ff0e567 100644
--- a/target/linux/ath79/image/common-tp-link.mk
+++ b/target/linux/ath79/image/common-tp-link.mk
@@ -1,28 +1,6 @@
 DEVICE_VARS += TPLINK_HWID TPLINK_HWREV TPLINK_FLASHLAYOUT TPLINK_HEADER_VERSION
 DEVICE_VARS += TPLINK_BOARD_NAME TPLINK_BOARD_ID
 
-define rootfs_align
-$(patsubst %-256k,0x40000,$(patsubst %-128k,0x20000,$(patsubst %-64k,0x10000,$(patsubst squashfs%,0x4,$(patsubst root.%,%,$(1))))))
-endef
-
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
@@ -50,9 +28,8 @@ define Device/tplink
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
index 603cacdaf2..a7266f05a9 100644
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
index 5ca16909e7..98fe51c7e9 100644
--- a/target/linux/mpc85xx/image/Makefile
+++ b/target/linux/mpc85xx/image/Makefile
@@ -5,36 +5,12 @@
 include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/image.mk
 
-DEVICE_VARS += TPLINK_HWID TPLINK_HWREV TPLINK_FLASHLAYOUT
-
-define rootfs_align
-$(patsubst %-256k,0x40000,$(patsubst %-128k,0x20000,$(patsubst %-64k,0x10000,$(patsubst squashfs%,0x4,$(patsubst root.%,%,$(1))))))
-endef
+DEVICE_VARS += TPLINK_HWID TPLINK_HWREV TPLINK_FLASHLAYOUT TPLINK_HEADER_VERSION
 
 define Build/copy-file
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
@@ -51,6 +27,7 @@ define Device/tplink_tl-wdr4900-v1
   DEVICE_VENDOR := TP-Link
   DEVICE_MODEL := TL-WDR4900
   DEVICE_VARIANT := v1
+  TPLINK_HEADER_VERSION := 1
   TPLINK_HWID := 0x49000001
   TPLINK_HWREV := 1
   TPLINK_FLASHLAYOUT := 16Mppc
@@ -64,8 +41,8 @@ define Device/tplink_tl-wdr4900-v1
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
index 698d1b5da2..72310f9e7e 100644
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
-  IMAGE/sysupgrade.bin := mktplinkfw sysupgrade -e -O | append-metadata
-  IMAGE/factory.bin := mktplinkfw factory -e -O
+  IMAGE/sysupgrade.bin := tplink-v1-image sysupgrade -e -O | append-metadata
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
