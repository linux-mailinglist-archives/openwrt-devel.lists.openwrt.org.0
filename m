Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3258914FD17
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Feb 2020 13:50:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d4EeC5NlnDUywEX8eQTVwAL0zLW6UKCdxihJ7AgrBz4=; b=cUCOwrcVwy9nNs
	UJxE8U4ZtXECrP/gpTeWpLhzz98PrMoiFBOq+8ITzUHDkazGIG6bk7d4blLIFZlTV8rKO3YExf7mA
	I/aOFQfz5C1IbUW1gGHt9JHYFSGLQFZObKSJzzyV35Enh5eLeKQg8YWfJ3dXnEe7K98NrcrQq3p5S
	SXJ3iZUuOQ/rt4ulr3xm85QkPUaUW/ZjJqwT3tpYN62IMlErZCr8FAa3BNv4mBTTA3vL+pqqa73Qg
	MWq0wgYBJd1JM/Yj5zJNODrJVKy9gD9MAWOMqoJGTTSt34BY5P9SRaEKN+HxQXfh+NQH/Wm9CNPY9
	M1RbQ+w81BPYD8BwpHFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyEhv-0004gW-F9; Sun, 02 Feb 2020 12:50:35 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyEho-0004fz-L8
 for openwrt-devel@lists.openwrt.org; Sun, 02 Feb 2020 12:50:30 +0000
Received: from buildfff.adridolf.com ([188.195.207.249]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N0X0U-1jjL7C3Wh2-00wRB4 for <openwrt-devel@lists.openwrt.org>; Sun, 02
 Feb 2020 13:50:22 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  2 Feb 2020 13:48:28 +0100
Message-Id: <20200202124828.2100-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:kv9BKRIqMHe5y/77zJh1dURB47xm9S4SFPM6TLIadodNRrR1Y4g
 KkYVThnSmTvxuBmcSIl7JPGVPasoBiKwAwbSusz6Tee1OI0IXx2xSPzZ0FBFZr6WjFH2t1f
 0B9dpXB/HtYMZIydxFjel6OEwE4NnHyjV1NbJxc1lv4HMNJ4ntT3BlTCnykWCXjMnJ/ZaJr
 epTp7f3gkJhIKJmattglQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:L18a2lsd27k=:ppE6wMWKMj1fKOdxogyMpN
 DbY7R1qcxA2+bTCC+zBh9ZUPWSMfH4VJQIoOyLlPjE1j4zQcmLecJzz4v7zuGJh0SU2yLMQN7
 BBrWpYwd9/zkYT3NRoIiEnYs5/ywp7LLE362V0sU/od5Cq70KLTufV4FZo1F4y7eibcLWLbw+
 q3X65n+UnErPJNYbTB1cOM9zJn3+8Y2nceNnBxe3YmWUyGauqwn0GrFpeHYwLxVgrG7FdINDd
 lXo+pcl5uDniaCNxcNojmBMrckDZWdTkBeT0yNLQM89Wvwxr4tKic7+qwwhcbG5HH2gwrmV2Q
 7W+CPD0p6r58a7xEGMacA6mYcFFnr7gcNCDInWv6smkE/TzuA+mHoZCvXew68zuQTS57V4GHu
 HZEc1tx0QIoAEvpPHvkWlELiRu3ErrbwYV/GhBBt48I00tPLIR16p2J5bIhU63uu5ze15mb0D
 0Nxr8ZFZj8qrcCqpZpF9lnu9H1a2JZ7l5x/lNEOXBVI+7G04SFu1w7593uvI0je9Q76nWyxd0
 vk1NKPfNEsG4oo4w3ImX/C1ICqCuqK9gmHf2m9yWRim6Fy2k1dykGH49LcLGdShU2ETdUOARB
 J317racLv3fHUz+qUug2nP9ODR8vRxqRcXa8XwsCLpw0cuWjxLSWN5yNt26CdQ5Zc7f7QBvK7
 /ZzWflnXxujiasO9dFgjScUUmb2cVb2Dv5eknCBBxpIQJrQ7wpQnSfSJxsiIBs351sdrUS4Xs
 Kw/bqK07NhUgeQw11PHLtx+Lld0GWqk5aoZ8s+DT4M4dimgXCdddT611v43tBjv1brXUayCx2
 hoKKZmLNEyLJg/rHyJx6oRyeP7osqb2ETONbYBA/MtA2yZpH38gyKF38sWa+p4rXoFwUNIf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_045029_019634_2F08D82B 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: introduces KERNEL_LZMA variable for
 common build sequence
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

This introduce a variable KERNEL_LZMA to replace the frequently
used sequence "kernel-bin | append-dtb | lzma", similar to the
KERNEL_DTB variable in ramips target.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/Makefile           |  5 +++--
 target/linux/ath79/image/common-mikrotik.mk |  4 ++--
 target/linux/ath79/image/common-tp-link.mk  | 14 ++++++--------
 target/linux/ath79/image/generic-tp-link.mk |  5 ++---
 target/linux/ath79/image/generic-ubnt.mk    |  2 +-
 target/linux/ath79/image/generic.mk         | 10 +++++-----
 6 files changed, 19 insertions(+), 21 deletions(-)

diff --git a/target/linux/ath79/image/Makefile b/target/linux/ath79/image/Makefile
index a28658ec0b..71ffa4b429 100644
--- a/target/linux/ath79/image/Makefile
+++ b/target/linux/ath79/image/Makefile
@@ -52,6 +52,7 @@ define Build/relocate-kernel
 	rm -rf $@.relocate
 endef
 
+KERNEL_LZMA := kernel-bin | append-dtb | lzma
 
 define Device/Default
   DEVICE_DTS_DIR := ../dts
@@ -59,8 +60,8 @@ define Device/Default
   PROFILES = Default
   MTDPARTS :=
   BLOCKSIZE := 64k
-  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma
-  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | uImage lzma
+  KERNEL := $(KERNEL_LZMA) | uImage lzma
+  KERNEL_INITRAMFS := $(KERNEL_LZMA) | uImage lzma
   COMPILE :=
   SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
   IMAGES := sysupgrade.bin
diff --git a/target/linux/ath79/image/common-mikrotik.mk b/target/linux/ath79/image/common-mikrotik.mk
index 292237c76a..6531619fe9 100644
--- a/target/linux/ath79/image/common-mikrotik.mk
+++ b/target/linux/ath79/image/common-mikrotik.mk
@@ -2,6 +2,6 @@ define Device/mikrotik
 	DEVICE_VENDOR := MikroTik
 	DEVICE_PACKAGES := rbextract rbcfg
 	LOADER_TYPE := elf
-	KERNEL := kernel-bin | append-dtb | lzma | loader-kernel
-	KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | loader-kernel
+	KERNEL := $(KERNEL_LZMA) | loader-kernel
+	KERNEL_INITRAMFS := $(KERNEL_LZMA) | loader-kernel
 endef
diff --git a/target/linux/ath79/image/common-tp-link.mk b/target/linux/ath79/image/common-tp-link.mk
index a9fccd0fe6..abce4095c4 100644
--- a/target/linux/ath79/image/common-tp-link.mk
+++ b/target/linux/ath79/image/common-tp-link.mk
@@ -14,8 +14,8 @@ define Device/tplink-v1
   TPLINK_HWREV := 0x1
   TPLINK_HEADER_VERSION := 1
   LOADER_TYPE := gz
-  KERNEL := kernel-bin | append-dtb | lzma
-  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | tplink-v1-header
+  KERNEL := $(KERNEL_LZMA)
+  KERNEL_INITRAMFS := $(KERNEL_LZMA) | tplink-v1-header
   IMAGES += factory.bin
   IMAGE/sysupgrade.bin := tplink-v1-image sysupgrade | append-metadata
   IMAGE/factory.bin := tplink-v1-image factory
@@ -26,8 +26,7 @@ define Device/tplink-nolzma
   LOADER_FLASH_OFFS := 0x22000
   COMPILE := loader-$(1).gz
   COMPILE/loader-$(1).gz := loader-okli-compile
-  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma -M 0x4f4b4c49 | \
-	loader-okli $(1) 7680
+  KERNEL := $(KERNEL_LZMA) | uImage lzma -M 0x4f4b4c49 | loader-okli $(1) 7680
   KERNEL_INITRAMFS := kernel-bin | append-dtb | gzip | tplink-v1-header
 endef
 
@@ -63,7 +62,7 @@ endef
 
 define Device/tplink-safeloader
   $(Device/tplink-v1)
-  KERNEL := kernel-bin | append-dtb | lzma | tplink-v1-header -O
+  KERNEL := $(KERNEL_LZMA) | tplink-v1-header -O
   IMAGE/sysupgrade.bin := append-rootfs | tplink-safeloader sysupgrade | \
     append-metadata | check-size $$$$(IMAGE_SIZE)
   IMAGE/factory.bin := append-rootfs | tplink-safeloader factory
@@ -71,7 +70,7 @@ endef
 
 define Device/tplink-safeloader-uimage
   $(Device/tplink-safeloader)
-  KERNEL := kernel-bin | append-dtb | lzma | uImageArcher lzma
+  KERNEL := $(KERNEL_LZMA) | uImageArcher lzma
 endef
 
 define Device/tplink-safeloader-okli
@@ -80,6 +79,5 @@ define Device/tplink-safeloader-okli
   LOADER_FLASH_OFFS := 0x43000
   COMPILE := loader-$(1).elf
   COMPILE/loader-$(1).elf := loader-okli-compile
-  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma -M 0x4f4b4c49 | \
-	loader-okli $(1) 12288
+  KERNEL := $(KERNEL_LZMA) | uImage lzma -M 0x4f4b4c49 | loader-okli $(1) 12288
 endef
diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index f1a603dc6d..30e6f979c4 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -203,9 +203,8 @@ define Device/tplink_archer-d50-v1
   TPLINK_FLASHLAYOUT := 8Mqca
   TPLINK_HWREVADD := 0x00000000
   TPLINK_HVERSION := 3
-  KERNEL := kernel-bin | append-dtb | lzma
-  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | \
-	tplink-v2-header -s -V "ver. 1.0"
+  KERNEL := $(KERNEL_LZMA)
+  KERNEL_INITRAMFS := $(KERNEL_LZMA) | tplink-v2-header -s -V "ver. 1.0"
   IMAGES := sysupgrade.bin
   IMAGE/sysupgrade.bin := tplink-v2-image -s -V "ver. 2.0" | append-metadata | \
 	check-size $$$$(IMAGE_SIZE)
diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index ffae83eda5..bbacd393cb 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -220,7 +220,7 @@ define Device/ubnt_routerstation_common
   IMAGES := factory.bin
   IMAGE/factory.bin := append-rootfs | pad-rootfs | mkubntimage | \
 	check-size $$$$(IMAGE_SIZE)
-  KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
+  KERNEL := $(KERNEL_LZMA) | pad-to $$(BLOCKSIZE)
   KERNEL_INITRAMFS := kernel-bin | append-dtb
 endef
 
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 1bc7b2d68e..7555ce4024 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -105,7 +105,7 @@ define Device/adtran_bsap1880
   SOC := ar7161
   DEVICE_VENDOR := Adtran/Bluesocket
   DEVICE_PACKAGES += -swconfig -uboot-envtools fconfig
-  KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
+  KERNEL := $(KERNEL_LZMA) | pad-to $$(BLOCKSIZE)
   KERNEL_INITRAMFS := kernel-bin | append-dtb
   IMAGE_SIZE := 11200k
   IMAGES += kernel.bin rootfs.bin
@@ -151,7 +151,7 @@ define Device/avm_fritz300e
   SOC := ar7242
   DEVICE_VENDOR := AVM
   DEVICE_MODEL := FRITZ!WLAN Repeater 300E
-  KERNEL := kernel-bin | append-dtb | lzma | eva-image
+  KERNEL := $(KERNEL_LZMA) | eva-image
   KERNEL_INITRAMFS := $$(KERNEL)
   IMAGE_SIZE := 15232k
   IMAGE/sysupgrade.bin := append-kernel | pad-to 64k | \
@@ -166,7 +166,7 @@ define Device/avm_fritz4020
   DEVICE_VENDOR := AVM
   DEVICE_MODEL := FRITZ!Box 4020
   IMAGE_SIZE := 15232k
-  KERNEL := kernel-bin | append-dtb | lzma | eva-image
+  KERNEL := $(KERNEL_LZMA) | eva-image
   KERNEL_INITRAMFS := $$(KERNEL)
   IMAGE/sysupgrade.bin := append-kernel | pad-to 64k | \
 	append-squashfs-fakeroot-be | pad-to 256 | append-rootfs | pad-rootfs | \
@@ -712,7 +712,7 @@ define Device/jjplus_ja76pf2
   IMAGES := kernel.bin rootfs.bin
   IMAGE/kernel.bin := append-kernel
   IMAGE/rootfs.bin := append-rootfs | pad-rootfs
-  KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
+  KERNEL := $(KERNEL_LZMA) | pad-to $$(BLOCKSIZE)
   KERNEL_INITRAMFS := kernel-bin | append-dtb
   IMAGE_SIZE := 16000k
   SUPPORTED_DEVICES += ja76pf2
@@ -992,7 +992,7 @@ define Device/pisen_wmb001n
   COMPILE/loader-$(1).bin := loader-okli-compile
   COMPILE/loader-$(1).uImage := append-loader-okli $(1) | pad-to 64k | lzma | \
 	uImage lzma
-  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma -M 0x4f4b4c49
+  KERNEL := $(KERNEL_LZMA) | uImage lzma -M 0x4f4b4c49
   IMAGES += factory.bin
   IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | pisen_wmb001n-factory $(1)
 endef
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
