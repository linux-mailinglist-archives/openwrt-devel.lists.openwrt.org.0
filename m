Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E8015041A
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 11:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8MsQzRqW4uc0NjvW2hW5IH8TZCrWS81rLuqgfBMUTaw=; b=CDPTFdcKIb34TA
	OBXTXureT7mrm61Iu7g5/q5r5k+uaMWd7P27zuer6KBf2PR1zDL8VrYLAO0PGbt5HbzhfcJ/VQ4Ja
	CebhWjoV3In0ju96twOdJplDT8aekntiARM1LOjMQJWgSHNv0BpZ2pX7hUBNCBrE+2nTCm3xMhZsf
	GNnugxQ2tQra5jdsfa6gqpfgEk/2pEXn9NyAVFJIYuBTOfHHa1MnibucZTqHdP0x3IaNaxmxL9Cgu
	m6lon2tjpYiYVxH0Bzg3EmqIcRcXVn9ZCRF0zPGm4fklopVN5WP+gp6OeCju4aC+NCvA4EVPv3/7w
	NVyrxke6Om6KL5sSMAng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyYrC-00028G-Gt; Mon, 03 Feb 2020 10:21:30 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyYr3-000278-Ip
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 10:21:23 +0000
Received: from buildfff.adridolf.com ([188.195.207.249]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MLA6m-1jFXm03kVW-00IB8G for <openwrt-devel@lists.openwrt.org>; Mon, 03
 Feb 2020 11:21:18 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  3 Feb 2020 11:19:15 +0100
Message-Id: <20200203101916.3191-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:9QDCw2L3hFtCyVRuixqDohZwTruNYUC3QMFipdluvIZM55T1ci9
 VFxnc/Pcx/Ojcak6YfG/q71hhJ2yV75MhipPPmiGyLvYAaOgq9S1SIhplEv1wXUFoUCM8E+
 cVOPKTXF4G9QFFQ8o0XWJBvUl0gpsMjfVSmYWVgLxTBsy9+sT///tPMivy+r0+9narQkg9p
 D/YkZVx3dTD6tLvRjDufA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:adt8RKkN9Rk=:VQEoG5FXclwo+cxUWKvPDf
 /R5zEJbr9LuKPwIPXevE57uD3cGysmzqquKkJMrY3Af76WAM6t16j+bJ6wTHAWT5luxR+EMXS
 bb2qEc2uqL4pVqX2MZn0Oi0UmUpcVMC5vYYKaVzsK4V8ZwlyilIYxWNEoYAc2Iqp/OeeNlFZE
 sTLC/o1doSqLbKvGSJvNkvCn/vE3GI6OdHb+Shgta+bE0JwP4EUxoCaCGjc8nrTn+swHd+osa
 dIsFeZk6U9fsKqAUocm5N/vJV1dCpDqeby5EpMLe3YvUX4aYETZXf2GBFeMZ9G64ZBTO6AAue
 Rz3V+lg0kDLYuUtFqWlxv91IuM4A+nVno4LWN614NMNHXMhZdf6GtXPQyLkgx/6Js3hWG8Pwk
 yFwWKjg4Faw4L/5Oart9jwa9VaLCHnlLzXTXRBGea1KQe3Aww7rLKlm90DFgkMGYvCs4ku+F5
 b1BS36Wwh/H/S1BgSgIb/giQLVmlOIijDFU4ZBCV+2Xo5lnAWXV6LigKiGD0yegai+ftTrcHM
 m+vFRTHQgej9pUL+Ae7tH5F+gTsoJdhrBwjnrZXHQr7RamFPo41RmfWlWOD3Zga+OIIouLXLD
 OV1H56kV4j89Nt70OhQAElDQJM04OB0xLhIAOvog0mgjG8ttHNP0W1XgeaKMX9dyIzaVVAtIr
 3rSC7bAsk2t05HHsSxmNHK2iu0DTBy635XKwS9hXUEtEyycQfNpqFqVEX4TJgqEuexzTxjHbf
 w8CCOeiIQMdIQqhX5XzmGU9slL+AO8er66Tx+Y6fvC6b0jh+D18clRkPDRClLlu96pCi3RwNK
 x1EBZ2B0fu2hSwtMYQ0Jj3J7gUtl5K2hQRTIG22xqa+YEk+N2BVEOQyjKgHatOHx+3WcNb3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_022121_911782_2CDE4E1B 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 1/2] ramips: rename KERNEL_DTB to
 KERNEL_DTB_LZMA in image Makefiles
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

To make it more obvious what it does, this renames the variable
for the sequence "kernel-bin | append-dtb | lzma" to KERNEL_DTB_LZMA.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/image/Makefile          |  4 ++--
 target/linux/ramips/image/common-tp-link.mk | 10 +++++-----
 target/linux/ramips/image/mt7620.mk         |  6 +++---
 target/linux/ramips/image/mt7621.mk         |  8 ++++----
 target/linux/ramips/image/rt288x.mk         |  4 ++--
 target/linux/ramips/image/rt305x.mk         |  4 ++--
 target/linux/ramips/image/rt3883.mk         |  2 +-
 7 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/target/linux/ramips/image/Makefile b/target/linux/ramips/image/Makefile
index 1d865aa567..ca331c52c2 100644
--- a/target/linux/ramips/image/Makefile
+++ b/target/linux/ramips/image/Makefile
@@ -19,10 +19,10 @@ loadaddr-$(CONFIG_TARGET_ramips_mt7621) := 0x80001000
 
 KERNEL_LOADADDR := $(loadaddr-y)
 
-KERNEL_DTB = kernel-bin | append-dtb | lzma
+KERNEL_DTB_LZMA = kernel-bin | append-dtb | lzma
 define Device/Default
   PROFILES = Default
-  KERNEL := $(KERNEL_DTB) | uImage lzma
+  KERNEL := $(KERNEL_DTB_LZMA) | uImage lzma
   SOC := $(DEFAULT_SOC)
   DEVICE_DTS_DIR := ../dts
   DEVICE_DTS = $$(SOC)_$(1)
diff --git a/target/linux/ramips/image/common-tp-link.mk b/target/linux/ramips/image/common-tp-link.mk
index 587ef89fc1..9431928aaa 100644
--- a/target/linux/ramips/image/common-tp-link.mk
+++ b/target/linux/ramips/image/common-tp-link.mk
@@ -7,8 +7,8 @@ define Device/tplink-v1
   TPLINK_HWID :=
   TPLINK_HWREV := 0x1
   TPLINK_HEADER_VERSION := 1
-  KERNEL := $(KERNEL_DTB)
-  KERNEL_INITRAMFS := $(KERNEL_DTB) | tplink-v1-header -e -O
+  KERNEL := $(KERNEL_DTB_LZMA)
+  KERNEL_INITRAMFS := $(KERNEL_DTB_LZMA) | tplink-v1-header -e -O
   IMAGES += factory.bin
   IMAGE/factory.bin := tplink-v1-image factory -e -O
   IMAGE/sysupgrade.bin := tplink-v1-image sysupgrade -e -O | append-metadata | \
@@ -22,8 +22,8 @@ define Device/tplink-v2
   TPLINK_HWREV := 0x1
   TPLINK_HWREVADD := 0x0
   TPLINK_HVERSION := 3
-  KERNEL := $(KERNEL_DTB)
-  KERNEL_INITRAMFS := $(KERNEL_DTB) | tplink-v2-header -e
+  KERNEL := $(KERNEL_DTB_LZMA)
+  KERNEL_INITRAMFS := $(KERNEL_DTB_LZMA) | tplink-v2-header -e
   IMAGES += factory.bin
   IMAGE/factory.bin := tplink-v2-image -e
   IMAGE/sysupgrade.bin := tplink-v2-image -s -e | append-metadata | \
@@ -36,7 +36,7 @@ define Device/tplink-safeloader
   TPLINK_HWID := 0x0
   TPLINK_HWREV := 0x0
   TPLINK_HEADER_VERSION := 1
-  KERNEL := $(KERNEL_DTB) | tplink-v1-header -e -O
+  KERNEL := $(KERNEL_DTB_LZMA) | tplink-v1-header -e -O
   IMAGES += factory.bin
   IMAGE/sysupgrade.bin := append-rootfs | tplink-safeloader sysupgrade | \
 	append-metadata | check-size $$$$(IMAGE_SIZE)
diff --git a/target/linux/ramips/image/mt7620.mk b/target/linux/ramips/image/mt7620.mk
index 3512a1c55a..22a2ef467d 100644
--- a/target/linux/ramips/image/mt7620.mk
+++ b/target/linux/ramips/image/mt7620.mk
@@ -58,7 +58,7 @@ TARGET_DEVICES += alfa-network_tube-e4g
 
 define Device/amit_jboot
   DLINK_IMAGE_OFFSET := 0x10000
-  KERNEL := $(KERNEL_DTB)
+  KERNEL := $(KERNEL_DTB_LZMA)
   IMAGES += factory.bin
   IMAGE/sysupgrade.bin := mkdlinkfw | pad-rootfs | append-metadata
   IMAGE/factory.bin := mkdlinkfw | pad-rootfs | mkdlinkfw-factory
@@ -604,7 +604,7 @@ define Device/netgear_ex2700
   BLOCKSIZE := 4k
   IMAGE_SIZE := 3776k
   IMAGES += factory.bin
-  KERNEL := $(KERNEL_DTB) | uImage lzma | pad-offset 64k 64 | \
+  KERNEL := $(KERNEL_DTB_LZMA) | uImage lzma | pad-offset 64k 64 | \
 	append-uImage-fakehdr filesystem
   IMAGE/factory.bin := $$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | \
 	netgear-dni
@@ -650,7 +650,7 @@ define Device/netgear_wn3000rp-v3
   NETGEAR_BOARD_ID := WN3000RPv3
   BLOCKSIZE := 4k
   IMAGES += factory.bin
-  KERNEL := $(KERNEL_DTB) | uImage lzma | pad-offset 64k 64 | \
+  KERNEL := $(KERNEL_DTB_LZMA) | uImage lzma | pad-offset 64k 64 | \
 	append-uImage-fakehdr filesystem
   IMAGE/factory.bin := $$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | \
 	netgear-dni
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 6d0af9d994..b9d3e81684 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -6,7 +6,7 @@ include ./common-tp-link.mk
 
 DEFAULT_SOC := mt7621
 
-KERNEL_DTB += -d21
+KERNEL_DTB_LZMA += -d21
 
 define Build/elecom-gst-factory
   $(eval product=$(word 1,$(1)))
@@ -426,7 +426,7 @@ define Device/MikroTik
   DEVICE_PACKAGES := kmod-usb3
   LOADER_TYPE := elf
   PLATFORM := mt7621
-  KERNEL := $(KERNEL_DTB) | loader-kernel
+  KERNEL := $(KERNEL_DTB_LZMA) | loader-kernel
   IMAGE/sysupgrade.bin := append-kernel | kernel2minor -s 1024 | \
 	pad-to $$$$(BLOCKSIZE) | append-rootfs | pad-rootfs | append-metadata | \
 	check-size $$$$(IMAGE_SIZE)
@@ -466,7 +466,7 @@ define Device/mtc_wr1201
   IMAGE_SIZE := 16000k
   DEVICE_VENDOR := MTC
   DEVICE_MODEL := Wireless Router WR1201
-  KERNEL_INITRAMFS := $(KERNEL_DTB) | wr1201-factory-header
+  KERNEL_INITRAMFS := $(KERNEL_DTB_LZMA) | wr1201-factory-header
   DEVICE_PACKAGES := kmod-sdhci-mt7620 kmod-mt76x2 kmod-usb3 \
 	kmod-usb-ledtrig-usbport wpad-basic
 endef
@@ -579,7 +579,7 @@ define Device/netis_wf-2881
   PAGESIZE := 2048
   FILESYSTEMS := squashfs
   IMAGE_SIZE := 129280k
-  KERNEL := $(KERNEL_DTB) | pad-offset $$(BLOCKSIZE) 64 | uImage lzma
+  KERNEL := $(KERNEL_DTB_LZMA) | pad-offset $$(BLOCKSIZE) 64 | uImage lzma
   UBINIZE_OPTS := -E 5
   IMAGE/sysupgrade.bin := append-kernel | append-ubi | append-metadata | \
 	check-size $$$$(IMAGE_SIZE)
diff --git a/target/linux/ramips/image/rt288x.mk b/target/linux/ramips/image/rt288x.mk
index 800dc553a2..b77c3094fe 100644
--- a/target/linux/ramips/image/rt288x.mk
+++ b/target/linux/ramips/image/rt288x.mk
@@ -16,7 +16,7 @@ define Device/airlink101_ar670w
   DEVICE_VENDOR := Airlink
   DEVICE_MODEL := AR670W
   IMAGE_SIZE := 3840k
-  KERNEL := $(KERNEL_DTB) | pad-to $$(BLOCKSIZE)
+  KERNEL := $(KERNEL_DTB_LZMA) | pad-to $$(BLOCKSIZE)
   IMAGES += factory.bin
   IMAGE/factory.bin := $$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | \
 	wrg-header wrgn16a_airlink_ar670w
@@ -83,7 +83,7 @@ define Device/dlink_dap-1522-a1
   DEVICE_MODEL := DAP-1522
   DEVICE_VARIANT := A1
   DEVICE_PACKAGES := kmod-switch-rtl8366s
-  KERNEL := $(KERNEL_DTB)
+  KERNEL := $(KERNEL_DTB_LZMA)
   IMAGES += factory.bin
   IMAGE/factory.bin := append-kernel | pad-offset $$$$(BLOCKSIZE) 96 | \
 	append-rootfs | pad-rootfs -x 96 | wrg-header wapnd01_dlink_dap1522 | \
diff --git a/target/linux/ramips/image/rt305x.mk b/target/linux/ramips/image/rt305x.mk
index f63891ac7c..7d4015e84a 100644
--- a/target/linux/ramips/image/rt305x.mk
+++ b/target/linux/ramips/image/rt305x.mk
@@ -396,7 +396,7 @@ define Device/dlink_dir-610-a1
   SOC := rt5350
   BLOCKSIZE := 4k
   SEAMA_SIGNATURE := wrgn59_dlob.hans_dir610
-  KERNEL := $(KERNEL_DTB)
+  KERNEL := $(KERNEL_DTB_LZMA)
   IMAGE_SIZE := 3776k
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DIR-610
@@ -463,7 +463,7 @@ define Device/dlink_dwr-512-b
   DLINK_ROM_ID := DLK6E2412001
   DLINK_FAMILY_MEMBER := 0x6E24
   DLINK_FIRMWARE_SIZE := 0x7E0000
-  KERNEL := $(KERNEL_DTB)
+  KERNEL := $(KERNEL_DTB_LZMA)
   IMAGES += factory.bin
   IMAGE/sysupgrade.bin := mkdlinkfw | pad-rootfs | append-metadata
   IMAGE/factory.bin := mkdlinkfw | pad-rootfs | mkdlinkfw-factory
diff --git a/target/linux/ramips/image/rt3883.mk b/target/linux/ramips/image/rt3883.mk
index ca6a713c4d..d7d51a370d 100644
--- a/target/linux/ramips/image/rt3883.mk
+++ b/target/linux/ramips/image/rt3883.mk
@@ -85,7 +85,7 @@ define Device/samsung_cy-swr1100
   SOC := rt3662
   BLOCKSIZE := 64k
   IMAGE_SIZE := 7872k
-  KERNEL := $(KERNEL_DTB)
+  KERNEL := $(KERNEL_DTB_LZMA)
   SEAMA_SIGNATURE := wrgnd10_samsung_ss815
   DEVICE_VENDOR := Samsung
   DEVICE_MODEL := CY-SWR1100
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
