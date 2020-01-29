Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9362C14D13D
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 20:37:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MRBZnGOCntNcvaTlm5XYEq625xxwYpkRW4c1t1bTs60=; b=bsWD1N0AjrWp0C
	tI9A149eYwEkqMuHmp8ske+r2IEAQnN7vsJIvJ8KTMU0GEtSKQXtZlSI2CObKoHYMPhTYpLqAcvEt
	PC2r5a+05mcXgrTUJ5k3vOli901bEFQzepL0lOEixO094AXL5r+soEbBeRFpad2qchsq+w/1BcdFh
	9rcHC42f+OQ0TDsoZGoi+V7NwqYxVEha81Z9TwELKLMsPoXTYJo3CBJqIEwvQuDfOohkxXIxvcr1K
	Os85FbGTmNgx8haDWnJrZMgrrfY5hzGZxf/vWEehQi0WrtJNc8OeUHLgBTefIhhd1ck7xx/UAt/zj
	3TfgdiFmSdpfCKRR67VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwt9C-0005PB-3U; Wed, 29 Jan 2020 19:37:10 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwt91-0005Oi-8b
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 19:37:01 +0000
Received: from buildfff.adridolf.com ([188.195.207.249]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N2Unv-1jiH2e3zbT-013sxE for <openwrt-devel@lists.openwrt.org>; Wed, 29
 Jan 2020 20:36:56 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 Jan 2020 20:35:16 +0100
Message-Id: <20200129193516.43475-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:7xrroP12+DVwlrm1VVzSeAfaHGWCnxFkcbbv/0fi5N17n51fuSa
 55nizjiHoP+nvi2YGpHEdu+3PEALppn7xjB3zPO+M23OqqtExTbCI3Vy+M/2lxFe6F9cQZY
 Yr3qOe609aSku/6C2CR7WDmtaac8kckFITjImsGG8pnM2dpjfbVHf8Sp0FInmO5XwwpqMP9
 6TS62WogFoaBTXAczKXCg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ypb7zlPZPR8=:AjiNz4Hv+c91j3vemPCGQ0
 YI7juPZtLQskagXdMLKJkDOtZLNrGpUjzOm/CPDCHfyN/qusSvkv0BYBpkc+6Km+ZbNNH43gj
 E1M0HYHu+V/bsqc/K89FB6f4fWAlni8vTHNBsyAU2S0APeYViwDUnWGtR9cyAlatUqFc28LkJ
 Bs6v98l4FkJY+HBuCOAL2777R6CB7DMHKIauhCCkTGzM2IcteCHU5w8aSs5uX9kQglBFStdNg
 Cequ3F1IwhaNVww/Pu1xCe98hfY7yrI903YzD/A/klxZbi8mQ5/30Rp0CecsixcX3OMWI5r0S
 5EroobkNeKcOqtIsYxhWmfm7ZcK7lc8vtr9N6WQJlK6hyRhRsf9zHvVa9LygiOpHC0WnxwWSl
 EDqI+IFIwkqHTq/PFpK04mWF/9BpQf5iMOWoQUi2eaFqk5V3G4NTWhDva/K1/OCU3PEC1vZ9+
 Vx/lQdRgLlGel6tBJ9qthtSUCcdIHsiqB0Ww8WWkbDpJOD2QNZ/YOxa6rlYO+l87Ky/0g4W62
 wTn938xCUeQTP70t/C7A4U0ZVV20c7vv5gl/FN9ouvr4lQ/5+0F7hNoBpcWsCYaNTWYVvykpD
 Vug7cCvtnBUJj4bruxCMXMbzeqhN4VcUGFt51sQ9oBz804Ba8AXy34QOaxdFlwf1PbmW/n/uQ
 WWkF2Pdv7Hw9YsGvkaAWkgBQNgrlRau/muuXzT819mNVZunyvsLZDgKhTIpT6bTcsNYeC1Vjh
 hzjLkdFMsVZCaCJHQkMd4z06iJylk3qZENHR9vLeZid+kvBrIN7r+LB4gfae4wZ0Y+9bsHkwt
 FSgRucsOqw0MY6xZ1DoRik6TiExFpCOGYKHPuRijWZCcTN5KqbMAXVgWz4qQxiT890DOZnf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_113659_603633_357A7C5B 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] ramips: collect and harmonize TP-Link
 image variants in common file
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

This moves the various variants of common device definitions for
TP-Link devices to a common Makefile common-tp-link.mk. This
provides the opportunity to reorganize and move parameters between
individual device definitions and the common ones.

While at it, also use the common definitions for previously
independent definitions where appropriate.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

I'd be happy about some Tested-by!

Changes in v2:
- Rebased due to removed DEVICE_PACKAGES for Archer C20i

---
 target/linux/ramips/image/common-tp-link.mk |  39 +++++++
 target/linux/ramips/image/mt7620.mk         |  46 +++------
 target/linux/ramips/image/mt7621.mk         |  16 +--
 target/linux/ramips/image/mt76x8.mk         | 108 +++++++-------------
 4 files changed, 95 insertions(+), 114 deletions(-)
 create mode 100644 target/linux/ramips/image/common-tp-link.mk

diff --git a/target/linux/ramips/image/common-tp-link.mk b/target/linux/ramips/image/common-tp-link.mk
new file mode 100644
index 0000000000..bd35e5bcef
--- /dev/null
+++ b/target/linux/ramips/image/common-tp-link.mk
@@ -0,0 +1,39 @@
+DEVICE_VARS += TPLINK_FLASHLAYOUT TPLINK_HWID TPLINK_HWREV TPLINK_HWREVADD
+DEVICE_VARS += TPLINK_HVERSION TPLINK_BOARD_ID TPLINK_HEADER_VERSION
+
+define Device/tplink-v1
+  DEVICE_VENDOR := TP-Link
+  TPLINK_HWREV := 0x1
+  TPLINK_HEADER_VERSION := 1
+  KERNEL := $(KERNEL_DTB)
+  KERNEL_INITRAMFS := $(KERNEL_DTB) | tplink-v1-header -e -O
+  IMAGES += factory.bin
+  IMAGE/factory.bin := tplink-v1-image factory -e -O
+  IMAGE/sysupgrade.bin := tplink-v1-image sysupgrade -e -O | append-metadata | \
+	check-size $$$$(IMAGE_SIZE)
+endef
+
+define Device/tplink-v2
+  DEVICE_VENDOR := TP-Link
+  TPLINK_HWREV := 0x1
+  TPLINK_HWREVADD := 0x0
+  TPLINK_HVERSION := 3
+  KERNEL := $(KERNEL_DTB)
+  KERNEL_INITRAMFS := $(KERNEL_DTB) | tplink-v2-header -e
+  IMAGES += factory.bin
+  IMAGE/factory.bin := tplink-v2-image -e
+  IMAGE/sysupgrade.bin := tplink-v2-image -s -e | append-metadata | \
+	check-size $$$$(IMAGE_SIZE)
+endef
+
+define Device/tplink-safeloader
+  DEVICE_VENDOR := TP-Link
+  TPLINK_HWID := 0x0
+  TPLINK_HWREV := 0x0
+  TPLINK_HEADER_VERSION := 1
+  KERNEL := $(KERNEL_DTB) | tplink-v1-header -e -O
+  IMAGES += factory.bin
+  IMAGE/sysupgrade.bin := append-rootfs | tplink-safeloader sysupgrade | \
+	append-metadata | check-size $$$$(IMAGE_SIZE)
+  IMAGE/factory.bin := append-rootfs | tplink-safeloader factory
+endef
diff --git a/target/linux/ramips/image/mt7620.mk b/target/linux/ramips/image/mt7620.mk
index 61f2c898f5..3512a1c55a 100644
--- a/target/linux/ramips/image/mt7620.mk
+++ b/target/linux/ramips/image/mt7620.mk
@@ -2,8 +2,9 @@
 # MT7620A Profiles
 #
 
-DEVICE_VARS += TPLINK_FLASHLAYOUT TPLINK_HWID TPLINK_HWREV TPLINK_HWREVADD TPLINK_HVERSION \
-	DLINK_ROM_ID DLINK_FAMILY_MEMBER DLINK_FIRMWARE_SIZE DLINK_IMAGE_OFFSET
+include ./common-tp-link.mk
+
+DEVICE_VARS += DLINK_ROM_ID DLINK_FAMILY_MEMBER DLINK_FIRMWARE_SIZE DLINK_IMAGE_OFFSET
 
 define Build/elecom-header
 	cp $@ $(KDIR)/v_0.0.0.bin
@@ -64,17 +65,6 @@ define Device/amit_jboot
   DEVICE_PACKAGES := jboot-tools kmod-usb2 kmod-usb-ohci
 endef
 
-define Device/Archer
-  SOC := mt7620a
-  DEVICE_VENDOR := TP-Link
-  TPLINK_HWREVADD := 0
-  TPLINK_HVERSION := 3
-  KERNEL := $(KERNEL_DTB)
-  KERNEL_INITRAMFS := $(KERNEL_DTB) | tplink-v2-header -e
-  IMAGE/factory.bin := tplink-v2-image -e
-  IMAGE/sysupgrade.bin := tplink-v2-image -s -e | append-metadata
-endef
-
 define Device/asus_rp-n53
   SOC := mt7620a
   IMAGE_SIZE := 7872k
@@ -865,12 +855,12 @@ endef
 TARGET_DEVICES += sercomm_na930
 
 define Device/tplink_archer-c20i
-  $(Device/Archer)
+  $(Device/tplink-v2)
+  SOC := mt7620a
   IMAGE_SIZE := 7808k
   TPLINK_FLASHLAYOUT := 8Mmtk
   TPLINK_HWID := 0xc2000001
   TPLINK_HWREV := 58
-  IMAGES += factory.bin
   DEVICE_MODEL := Archer C20i
   DEVICE_PACKAGES := kmod-mt76x0e kmod-usb2 kmod-usb-ohci
   SUPPORTED_DEVICES += c20i
@@ -878,14 +868,14 @@ endef
 TARGET_DEVICES += tplink_archer-c20i
 
 define Device/tplink_archer-c20-v1
-  $(Device/Archer)
+  $(Device/tplink-v2)
+  SOC := mt7620a
   IMAGE_SIZE := 7808k
   SUPPORTED_DEVICES += tplink,c20-v1
   TPLINK_FLASHLAYOUT := 8Mmtk
   TPLINK_HWID := 0xc2000001
   TPLINK_HWREV := 0x44
   TPLINK_HWREVADD := 0x1
-  IMAGES += factory.bin
   DEVICE_MODEL := Archer C20
   DEVICE_VARIANT := v1
   DEVICE_PACKAGES := kmod-mt76x0e kmod-usb2 kmod-usb-ohci \
@@ -894,13 +884,13 @@ endef
 TARGET_DEVICES += tplink_archer-c20-v1
 
 define Device/tplink_archer-c2-v1
-  $(Device/Archer)
+  $(Device/tplink-v2)
+  SOC := mt7620a
   IMAGE_SIZE := 7808k
   SUPPORTED_DEVICES += tplink,c2-v1
   TPLINK_FLASHLAYOUT := 8Mmtk
   TPLINK_HWID := 0xc7500001
   TPLINK_HWREV := 50
-  IMAGES += factory.bin
   DEVICE_MODEL := Archer C2
   DEVICE_VARIANT := v1
   DEVICE_PACKAGES := kmod-mt76x0e kmod-usb2 kmod-usb-ohci \
@@ -909,12 +899,13 @@ endef
 TARGET_DEVICES += tplink_archer-c2-v1
 
 define Device/tplink_archer-c50-v1
-  $(Device/Archer)
+  $(Device/tplink-v2)
+  SOC := mt7620a
   IMAGE_SIZE := 7808k
   TPLINK_FLASHLAYOUT := 8Mmtk
   TPLINK_HWID := 0xc7500001
   TPLINK_HWREV := 69
-  IMAGES += factory-us.bin factory-eu.bin
+  IMAGES := sysupgrade.bin factory-us.bin factory-eu.bin
   IMAGE/factory-us.bin := tplink-v2-image -e -w 0
   IMAGE/factory-eu.bin := tplink-v2-image -e -w 2
   DEVICE_MODEL := Archer C50
@@ -925,11 +916,13 @@ endef
 TARGET_DEVICES += tplink_archer-c50-v1
 
 define Device/tplink_archer-mr200
-  $(Device/Archer)
+  $(Device/tplink-v2)
+  SOC := mt7620a
   IMAGE_SIZE := 7872k
   TPLINK_FLASHLAYOUT := 8MLmtk
   TPLINK_HWID := 0xd7500001
   TPLINK_HWREV := 0x4a
+  IMAGES := sysupgrade.bin
   DEVICE_PACKAGES := kmod-mt76x0e kmod-usb2 kmod-usb-net kmod-usb-net-rndis \
 	kmod-usb-serial kmod-usb-serial-option adb-enablemodem
   DEVICE_MODEL := Archer MR200
@@ -938,20 +931,13 @@ endef
 TARGET_DEVICES += tplink_archer-mr200
 
 define Device/tplink_re200-v1
+  $(Device/tplink-v1)
   SOC := mt7620a
-  DEVICE_VENDOR := TP-Link
   DEVICE_MODEL := RE200
   DEVICE_VARIANT := v1
   DEVICE_PACKAGES := kmod-mt76x0e
-  IMAGES += factory.bin
-  IMAGE/sysupgrade.bin := tplink-v1-image sysupgrade -e -O | append-metadata
-  IMAGE/factory.bin := tplink-v1-image factory -e -O
   IMAGE_SIZE := 7936k
-  KERNEL := $(KERNEL_DTB)
-  KERNEL_INITRAMFS := $(KERNEL_DTB) | tplink-v1-header -e -O
   TPLINK_HWID := 0x02000001
-  TPLINK_HWREV := 0x1
-  TPLINK_HEADER_VERSION := 1
   TPLINK_FLASHLAYOUT := 8Mmtk
 endef
 TARGET_DEVICES += tplink_re200-v1
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index be2a329524..6d0af9d994 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -2,10 +2,11 @@
 # MT7621 Profiles
 #
 
+include ./common-tp-link.mk
+
 DEFAULT_SOC := mt7621
 
 KERNEL_DTB += -d21
-DEVICE_VARS += TPLINK_BOARD_ID TPLINK_HEADER_VERSION TPLINK_HWID TPLINK_HWREV
 
 define Build/elecom-gst-factory
   $(eval product=$(word 1,$(1)))
@@ -662,19 +663,6 @@ define Device/adslr_g7
 endef
 TARGET_DEVICES += adslr_g7
 
-define Device/tplink-safeloader
-  DEVICE_VENDOR := TP-Link
-  TPLINK_BOARD_ID :=
-  TPLINK_HWID := 0x0
-  TPLINK_HWREV := 0
-  TPLINK_HEADER_VERSION := 1
-  KERNEL := $(KERNEL_DTB) | tplink-v1-header -e -O
-  IMAGES += factory.bin
-  IMAGE/sysupgrade.bin := append-rootfs | tplink-safeloader sysupgrade | \
-	append-metadata | check-size $$$$(IMAGE_SIZE)
-  IMAGE/factory.bin := append-rootfs | tplink-safeloader factory
-endef
-
 define Device/tplink_re350-v1
   $(Device/tplink-safeloader)
   DEVICE_MODEL := RE350
diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index 37cac84229..fef5a5a733 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -2,6 +2,8 @@
 # MT76x8 Profiles
 #
 
+include ./common-tp-link.mk
+
 DEFAULT_SOC := mt7628an
 
 define Device/alfa-network_awusfree1
@@ -235,69 +237,36 @@ define Device/totolink_lr1200
 endef
 TARGET_DEVICES += totolink_lr1200
 
-define Device/tplink
-  DEVICE_VENDOR := TP-Link
-  TPLINK_FLASHLAYOUT :=
-  TPLINK_HWID :=
-  TPLINK_HWREV :=
-  TPLINK_HWREVADD :=
-  TPLINK_HVERSION :=
-  KERNEL := $(KERNEL_DTB)
-  KERNEL_INITRAMFS := $(KERNEL_DTB) | tplink-v2-header -e
-  IMAGES += tftp-recovery.bin
-  IMAGE/factory.bin := tplink-v2-image -e
-  IMAGE/tftp-recovery.bin := pad-extra 128k | $$(IMAGE/factory.bin)
-  IMAGE/sysupgrade.bin := tplink-v2-image -s -e | append-metadata | \
-	check-size $$$$(IMAGE_SIZE)
-endef
-DEVICE_VARS += TPLINK_FLASHLAYOUT TPLINK_HWID TPLINK_HWREV TPLINK_HWREVADD
-DEVICE_VARS += TPLINK_HVERSION
-
-define Device/tplink-safeloader
-  DEVICE_VENDOR := TP-Link
-  TPLINK_BOARD_ID :=
-  TPLINK_HWID := 0x0
-  TPLINK_HWREV := 0
-  TPLINK_HEADER_VERSION := 1
-  KERNEL := $(KERNEL_DTB) | tplink-v1-header -e -O
-  IMAGES += factory.bin
-  IMAGE/sysupgrade.bin := append-rootfs | tplink-safeloader sysupgrade | \
-	append-metadata | check-size $$$$(IMAGE_SIZE)
-  IMAGE/factory.bin := append-rootfs | tplink-safeloader factory
-endef
-
 define Device/tplink_archer-c20-v4
-  $(Device/tplink)
+  $(Device/tplink-v2)
   IMAGE_SIZE := 7808k
   DEVICE_MODEL := Archer C20
   DEVICE_VARIANT := v4
   TPLINK_FLASHLAYOUT := 8Mmtk
   TPLINK_HWID := 0xc200004
-  TPLINK_HWREV := 0x1
   TPLINK_HWREVADD := 0x4
-  TPLINK_HVERSION := 3
   DEVICE_PACKAGES := kmod-mt76x0e
+  IMAGES := sysupgrade.bin tftp-recovery.bin
+  IMAGE/tftp-recovery.bin := pad-extra 128k | $$(IMAGE/factory.bin)
   SUPPORTED_DEVICES += tplink,c20-v4
 endef
 TARGET_DEVICES += tplink_archer-c20-v4
 
 define Device/tplink_archer-c20-v5
-  $(Device/tplink)
+  $(Device/tplink-v2)
   IMAGE_SIZE := 7616k
   DEVICE_MODEL := Archer C20
   DEVICE_VARIANT := v5
   TPLINK_FLASHLAYOUT := 8MSUmtk
   TPLINK_HWID := 0xc200005
-  TPLINK_HWREV := 0x1
   TPLINK_HWREVADD := 0x5
-  TPLINK_HVERSION := 3
   DEVICE_PACKAGES := kmod-mt76x0e
   IMAGES := sysupgrade.bin
 endef
 TARGET_DEVICES += tplink_archer-c20-v5
 
 define Device/tplink_archer-c50-v3
-  $(Device/tplink)
+  $(Device/tplink-v2)
   IMAGE_SIZE := 7808k
   DEVICE_MODEL := Archer C50
   DEVICE_VARIANT := v3
@@ -305,14 +274,15 @@ define Device/tplink_archer-c50-v3
   TPLINK_HWID := 0x001D9BA4
   TPLINK_HWREV := 0x79
   TPLINK_HWREVADD := 0x1
-  TPLINK_HVERSION := 3
   DEVICE_PACKAGES := kmod-mt76x2
+  IMAGES := sysupgrade.bin tftp-recovery.bin
+  IMAGE/tftp-recovery.bin := pad-extra 128k | $$(IMAGE/factory.bin)
   SUPPORTED_DEVICES += tplink,c50-v3
 endef
 TARGET_DEVICES += tplink_archer-c50-v3
 
 define Device/tplink_archer-c50-v4
-  $(Device/tplink)
+  $(Device/tplink-v2)
   IMAGE_SIZE := 7616k
   DEVICE_MODEL := Archer C50
   DEVICE_VARIANT := v4
@@ -320,7 +290,6 @@ define Device/tplink_archer-c50-v4
   TPLINK_HWID := 0x001D589B
   TPLINK_HWREV := 0x93
   TPLINK_HWREVADD := 0x2
-  TPLINK_HVERSION := 3
   DEVICE_PACKAGES := kmod-mt76x2
   IMAGES := sysupgrade.bin
   SUPPORTED_DEVICES += tplink,c50-v4
@@ -338,7 +307,7 @@ endef
 TARGET_DEVICES += tplink_re305-v1
 
 define Device/tplink_tl-mr3020-v3
-  $(Device/tplink)
+  $(Device/tplink-v2)
   IMAGE_SIZE := 7808k
   DEVICE_MODEL := TL-MR3020
   DEVICE_VARIANT := v3
@@ -346,13 +315,14 @@ define Device/tplink_tl-mr3020-v3
   TPLINK_HWID := 0x30200003
   TPLINK_HWREV := 0x3
   TPLINK_HWREVADD := 0x3
-  TPLINK_HVERSION := 3
   DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport
+  IMAGES := sysupgrade.bin tftp-recovery.bin
+  IMAGE/tftp-recovery.bin := pad-extra 128k | $$(IMAGE/factory.bin)
 endef
 TARGET_DEVICES += tplink_tl-mr3020-v3
 
 define Device/tplink_tl-mr3420-v5
-  $(Device/tplink)
+  $(Device/tplink-v2)
   IMAGE_SIZE := 7808k
   DEVICE_MODEL := TL-MR3420
   DEVICE_VARIANT := v5
@@ -360,71 +330,67 @@ define Device/tplink_tl-mr3420-v5
   TPLINK_HWID := 0x34200005
   TPLINK_HWREV := 0x5
   TPLINK_HWREVADD := 0x5
-  TPLINK_HVERSION := 3
   DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport
+  IMAGES := sysupgrade.bin tftp-recovery.bin
+  IMAGE/tftp-recovery.bin := pad-extra 128k | $$(IMAGE/factory.bin)
 endef
 TARGET_DEVICES += tplink_tl-mr3420-v5
 
 define Device/tplink_tl-wa801nd-v5
-  $(Device/tplink)
+  $(Device/tplink-v2)
   IMAGE_SIZE := 7808k
   DEVICE_MODEL := TL-WA801ND
   DEVICE_VARIANT := v5
   TPLINK_FLASHLAYOUT := 8Mmtk
   TPLINK_HWID := 0x08010005
-  TPLINK_HWREV := 0x1
   TPLINK_HWREVADD := 0x5
-  TPLINK_HVERSION := 3
+  IMAGES := sysupgrade.bin tftp-recovery.bin
+  IMAGE/tftp-recovery.bin := pad-extra 128k | $$(IMAGE/factory.bin)
 endef
 TARGET_DEVICES += tplink_tl-wa801nd-v5
 
 define Device/tplink_tl-wr802n-v4
-  $(Device/tplink)
+  $(Device/tplink-v2)
   IMAGE_SIZE := 7808k
   DEVICE_MODEL := TL-WR802N
   DEVICE_VARIANT := v4
   TPLINK_FLASHLAYOUT := 8Mmtk
   TPLINK_HWID := 0x08020004
-  TPLINK_HWREV := 0x1
   TPLINK_HWREVADD := 0x4
-  TPLINK_HVERSION := 3
+  IMAGES := sysupgrade.bin tftp-recovery.bin
+  IMAGE/tftp-recovery.bin := pad-extra 128k | $$(IMAGE/factory.bin)
 endef
 TARGET_DEVICES += tplink_tl-wr802n-v4
 
 define Device/tplink_tl-wr840n-v4
-  $(Device/tplink)
+  $(Device/tplink-v2)
   IMAGE_SIZE := 7808k
   DEVICE_MODEL := TL-WR840N
   DEVICE_VARIANT := v4
   TPLINK_FLASHLAYOUT := 8Mmtk
   TPLINK_HWID := 0x08400004
-  TPLINK_HWREV := 0x1
   TPLINK_HWREVADD := 0x4
-  TPLINK_HVERSION := 3
+  IMAGES := sysupgrade.bin tftp-recovery.bin
+  IMAGE/tftp-recovery.bin := pad-extra 128k | $$(IMAGE/factory.bin)
   SUPPORTED_DEVICES += tl-wr840n-v4
 endef
 TARGET_DEVICES += tplink_tl-wr840n-v4
 
 define Device/tplink_tl-wr840n-v5
+  $(Device/tplink-v2)
   IMAGE_SIZE := 3904k
-  DEVICE_VENDOR := TP-Link
   DEVICE_MODEL := TL-WR840N
   DEVICE_VARIANT := v5
   TPLINK_FLASHLAYOUT := 4Mmtk
   TPLINK_HWID := 0x08400005
-  TPLINK_HWREV := 0x1
   TPLINK_HWREVADD := 0x5
-  TPLINK_HVERSION := 3
-  KERNEL := $(KERNEL_DTB)
-  KERNEL_INITRAMFS := $(KERNEL_DTB) | tplink-v2-header -e
-  IMAGE/sysupgrade.bin := tplink-v2-image -s -e | append-metadata | \
-	check-size $$$$(IMAGE_SIZE)
+  IMAGES := sysupgrade.bin
   SUPPORTED_DEVICES += tl-wr840n-v5
 endef
 TARGET_DEVICES += tplink_tl-wr840n-v5
 
 define Device/tplink_tl-wr841n-v13
-  $(Device/tplink)
+  $(Device/tplink-v2)
   IMAGE_SIZE := 7808k
   DEVICE_MODEL := TL-WR841N
   DEVICE_VARIANT := v13
@@ -432,27 +398,27 @@ define Device/tplink_tl-wr841n-v13
   TPLINK_HWID := 0x08410013
   TPLINK_HWREV := 0x268
   TPLINK_HWREVADD := 0x13
-  TPLINK_HVERSION := 3
+  IMAGES := sysupgrade.bin tftp-recovery.bin
+  IMAGE/tftp-recovery.bin := pad-extra 128k | $$(IMAGE/factory.bin)
   SUPPORTED_DEVICES += tl-wr841n-v13
 endef
 TARGET_DEVICES += tplink_tl-wr841n-v13
 
 define Device/tplink_tl-wr841n-v14
-  $(Device/tplink)
+  $(Device/tplink-v2)
   IMAGE_SIZE := 3968k
   DEVICE_MODEL := TL-WR841N
   DEVICE_VARIANT := v14
   TPLINK_FLASHLAYOUT := 4Mmtk
   TPLINK_HWID := 0x08410014
-  TPLINK_HWREV := 0x1
   TPLINK_HWREVADD := 0x14
-  TPLINK_HVERSION := 3
+  IMAGES := sysupgrade.bin tftp-recovery.bin
   IMAGE/tftp-recovery.bin := pad-extra 64k | $$(IMAGE/factory.bin)
 endef
 TARGET_DEVICES += tplink_tl-wr841n-v14
 
 define Device/tplink_tl-wr842n-v5
-  $(Device/tplink)
+  $(Device/tplink-v2)
   IMAGE_SIZE := 7808k
   DEVICE_MODEL := TL-WR842N
   DEVICE_VARIANT := v5
@@ -460,13 +426,14 @@ define Device/tplink_tl-wr842n-v5
   TPLINK_HWID := 0x08420005
   TPLINK_HWREV := 0x5
   TPLINK_HWREVADD := 0x5
-  TPLINK_HVERSION := 3
   DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport
+  IMAGES := sysupgrade.bin tftp-recovery.bin
+  IMAGE/tftp-recovery.bin := pad-extra 128k | $$(IMAGE/factory.bin)
 endef
 TARGET_DEVICES += tplink_tl-wr842n-v5
 
 define Device/tplink_tl-wr902ac-v3
-  $(Device/tplink)
+  $(Device/tplink-v2)
   IMAGE_SIZE := 7808k
   DEVICE_MODEL := TL-WR902AC
   DEVICE_VARIANT := v3
@@ -474,9 +441,10 @@ define Device/tplink_tl-wr902ac-v3
   TPLINK_HWID := 0x000dc88f
   TPLINK_HWREV := 0x89
   TPLINK_HWREVADD := 0x1
-  TPLINK_HVERSION := 3
   DEVICE_PACKAGES := kmod-mt76x0e kmod-usb2 kmod-usb-ohci \
 	kmod-usb-ledtrig-usbport
+  IMAGES := sysupgrade.bin tftp-recovery.bin
+  IMAGE/tftp-recovery.bin := pad-extra 128k | $$(IMAGE/factory.bin)
 endef
 TARGET_DEVICES += tplink_tl-wr902ac-v3
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
