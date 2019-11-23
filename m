Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CEF107E77
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 Nov 2019 14:13:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ODKiPJluD1vW0uCTbT/T58y/KqKZYe05/h9CNZJhKVs=; b=s/COEnmqIz7PYB
	JNLKaETPCaxm7JZVJYjafq3lMQBA1kwm0VsRwM37jje2uIwNrHtfE9ilturb9xo2DwU/tWB2GzXeJ
	jqmBh4b51o0h2JNcsNvdf/O7Q/iOXV74z7BKc/IIGfBLscyZIRoqQ7T6JMSllTlqlqJum0SKjgHWY
	pEQwK7Qk1UQyZtobVE0EIJYGSOWql8NPLmK2W1Sx90GuE3+hiRtcV+AebobHpqe9vEvjLfhG8n8vz
	Ptw+IpJVtWpM5OF5yqSe+wLvDIajZO26mOYZxulvxZR9KUWtLCnqDUdgL2ZD9Hnw8ocpicHQFT06f
	y0kmHRlFo+qcQECII/2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYVDh-0005Cn-6n; Sat, 23 Nov 2019 13:13:01 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYVDZ-0005C8-Ng
 for openwrt-devel@lists.openwrt.org; Sat, 23 Nov 2019 13:12:55 +0000
Received: by mail-lf1-x143.google.com with SMTP id r15so4656656lff.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 23 Nov 2019 05:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PV6c5LfKXjF0+bgfr1cE91fn2RbmdXmtu3nn71xkC78=;
 b=Poa5sdE3gEOeRsEohjbhDVkr0fMSP2qfXtpjZVSOmBH/0kCfd429VVk4O/RjutdilU
 WlAdPAbQ2CuW90tIA1lJU+ejmgcdqwNQUhiyDtcuVTDfj3UXDbApCHOPlZNOC62EUW8T
 uQZJYreWp0vLo/ai8JJX7xAJYRFU8UNF9P49ik2ASBhknzucx9y/FOjFMyaRd3Nl+fxl
 spy0o2FhbIBHLCxJSrDXOUAmzT9cHeqZEbkjFBjLRyaY5s0jg+v/r9RDccvgfy0tqh+x
 gjdsX2AHCI1CpMbW3NFYwSyUC+saaJnBhQIuWKmFhKyLjLXxibqQ+KwHJLLdGF2oT4XW
 AFog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PV6c5LfKXjF0+bgfr1cE91fn2RbmdXmtu3nn71xkC78=;
 b=hMswQyM5DFIc2kcvved2N6BBdjlm0bi/z1Pbv2bM3aWeaiaDDsLmUsA3JO3RdY5dXV
 lBfieSL1d8bppGFCbry694z3EXTv2SDCFKCFXhDK2Z7JxWh+3tjACsFX2UqBHBIScI+8
 h0DS+RLjXkMooCUTdpkDQSe+osW8JsCtz4GSEwLM9kV9TxaB8Fybfmh+O/OfY9PDfWwi
 e73PoGoCRJat//S/5PIpBo6jbrAOc4p7oOpTeP4bWCsXUoTlDVHgDwtVNeKR0IWndRgX
 my30oWigb9H5ZDy2wzB9JfgnYSZASDdaJAMHv17RP0g1Dz7ccZQDC7f3vvx0vJvO3+Wo
 Oa3g==
X-Gm-Message-State: APjAAAWf1M+yHYG2FERGUr1wYAcSdYP3DgQKODl1xQ425/Auxbxqvdyj
 SdwGKDDHgr3Zve+BIm2KxHMnWzHD
X-Google-Smtp-Source: APXvYqxn4bAKQ+QmlcLqJqJeOCsNI0uGnEF+ss1f9qtm2c26bZOUXfJAlRZvJl4idoRuYAW7kvCh3Q==
X-Received: by 2002:ac2:5b42:: with SMTP id i2mr15233922lfp.164.1574514771299; 
 Sat, 23 Nov 2019 05:12:51 -0800 (PST)
Received: from desktop-mint.lan (095160109150.warszawa.vectranet.pl.
 [95.160.109.150])
 by smtp.gmail.com with ESMTPSA id h24sm759034ljc.89.2019.11.23.05.12.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Nov 2019 05:12:50 -0800 (PST)
From: Piotr Dymacz <pepe2k@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 23 Nov 2019 14:12:39 +0100
Message-Id: <20191123131239.16691-1-pepe2k@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_051253_775132_C8615E44 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 19.07] ramips: use upstream RAW_APPENDED_DTB
 instead of our OWRTDTB
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
Cc: ynezz@true.cz, gch981213@gmail.com, musashino.open@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Chuanhong Guo <gch981213@gmail.com>

Upstream kernel added support for RAW_APPENDED_DTB on ralink arch
in the following commit:
02564fc89d3d ("ralink: Introduce fw_passed_dtb to arch/mips/ralink")

Use upstream solution and get rid of our OWRTDTB hack.
This commit set DEVICE_DTS to $$(DTS) instead of replacing DTS with
DEVICE_DTS in device profile because DTS variable will be dropped
in later commits.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
[Tested on mt7621/mt76x8]
Tested-by: Chuanhong Guo <gch981213@gmail.com>
[Tested on rt305x/mt7620]
Tested-by: INAGAKI Hiroshi <musashino.open@gmail.com>
(cherry picked from commit 7a8d3432c739c6ff038295176e8b6324e92fc116)
Signed-off-by: Piotr Dymacz <pepe2k@gmail.com>
---
 target/linux/ramips/image/Makefile            | 11 +---
 target/linux/ramips/image/mt7621.mk           |  2 +-
 target/linux/ramips/image/rt3883.mk           |  2 +-
 target/linux/ramips/mt7620/config-4.14        |  4 +-
 target/linux/ramips/mt7621/config-4.14        |  4 +-
 target/linux/ramips/mt76x8/config-4.14        |  4 +-
 .../ramips/patches-4.14/0100-prom_fixes.patch | 66 -------------------
 target/linux/ramips/rt305x/config-4.14        |  4 +-
 target/linux/ramips/rt3883/config-4.14        |  4 +-
 9 files changed, 15 insertions(+), 86 deletions(-)
 delete mode 100644 target/linux/ramips/patches-4.14/0100-prom_fixes.patch

diff --git a/target/linux/ramips/image/Makefile b/target/linux/ramips/image/Makefile
index 0a32859bec..07251aebba 100644
--- a/target/linux/ramips/image/Makefile
+++ b/target/linux/ramips/image/Makefile
@@ -19,12 +19,12 @@ loadaddr-$(CONFIG_TARGET_ramips_mt7621) := 0x80001000
 
 KERNEL_LOADADDR := $(loadaddr-y)
 
-KERNEL_DTB = kernel-bin | patch-dtb | lzma
+KERNEL_DTB = kernel-bin | append-dtb | lzma
 define Device/Default
-  PROFILES = Default $$(DTS)
-  KERNEL_DEPENDS = $$(wildcard ../dts/$$(DTS).dts)
+  PROFILES = Default
   KERNEL := $(KERNEL_DTB) | uImage lzma
   DEVICE_DTS_DIR := ../dts
+  DEVICE_DTS = $$(DTS)
   IMAGES := sysupgrade.bin
   IMAGE_SIZE := $(ralink_default_fw_size_8M)
   SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
@@ -52,11 +52,6 @@ define Build/jcg-header
 	mv $@.new $@
 endef
 
-define Build/patch-dtb
-	$(call Image/BuildDTB,../dts/$(DTS).dts,$@.dtb)
-	$(STAGING_DIR_HOST)/bin/patch-dtb $@ $@.dtb
-endef
-
 define Build/trx
 	$(STAGING_DIR_HOST)/bin/trx $(1) \
 		-o $@ \
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index f13e9c8a4f..fa222f7a89 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -106,7 +106,7 @@ define Device/dir-860l-b1
   DTS := DIR-860L-B1
   BLOCKSIZE := 64k
   SEAMA_SIGNATURE := wrgac13_dlink.2013gui_dir860lb
-  KERNEL := kernel-bin | patch-dtb | relocate-kernel | lzma | uImage lzma
+  KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma | uImage lzma
   IMAGE_SIZE := $(ralink_default_fw_size_16M)
   DEVICE_TITLE := D-Link DIR-860L B1
   DEVICE_PACKAGES := kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
diff --git a/target/linux/ramips/image/rt3883.mk b/target/linux/ramips/image/rt3883.mk
index 4844abd1b7..b783994357 100644
--- a/target/linux/ramips/image/rt3883.mk
+++ b/target/linux/ramips/image/rt3883.mk
@@ -48,7 +48,7 @@ define Device/belkin_f9k1109v1
   DEVICE_TITLE := Belkin F9K1109 Version 1.0
   DEVICE_PACKAGES := kmod-usb-core kmod-usb-ohci kmod-usb2 swconfig
   IMAGE_SIZE := 7224k
-  KERNEL := kernel-bin | patch-dtb | lzma -d16 | uImage lzma
+  KERNEL := kernel-bin | append-dtb | lzma -d16 | uImage lzma
   # Stock firmware checks for this uImage image name during upload.
   UIMAGE_NAME := N750F9K1103VB
 endef
diff --git a/target/linux/ramips/mt7620/config-4.14 b/target/linux/ramips/mt7620/config-4.14
index 05f3963d43..92a7a2fd38 100644
--- a/target/linux/ramips/mt7620/config-4.14
+++ b/target/linux/ramips/mt7620/config-4.14
@@ -146,8 +146,8 @@ CONFIG_MIPS_CMDLINE_FROM_DTB=y
 # CONFIG_MIPS_HUGE_TLB_SUPPORT is not set
 CONFIG_MIPS_L1_CACHE_SHIFT=5
 # CONFIG_MIPS_MACHINE is not set
-CONFIG_MIPS_NO_APPENDED_DTB=y
-# CONFIG_MIPS_RAW_APPENDED_DTB is not set
+# CONFIG_MIPS_NO_APPENDED_DTB is not set
+CONFIG_MIPS_RAW_APPENDED_DTB=y
 CONFIG_MIPS_SPRAM=y
 CONFIG_MODULES_USE_ELF_REL=y
 # CONFIG_MT7621_WDT is not set
diff --git a/target/linux/ramips/mt7621/config-4.14 b/target/linux/ramips/mt7621/config-4.14
index b279c69879..a2c58e030b 100644
--- a/target/linux/ramips/mt7621/config-4.14
+++ b/target/linux/ramips/mt7621/config-4.14
@@ -173,9 +173,9 @@ CONFIG_MIPS_L1_CACHE_SHIFT=5
 CONFIG_MIPS_MT=y
 CONFIG_MIPS_MT_FPAFF=y
 CONFIG_MIPS_MT_SMP=y
-CONFIG_MIPS_NO_APPENDED_DTB=y
+# CONFIG_MIPS_NO_APPENDED_DTB is not set
 CONFIG_MIPS_PERF_SHARED_TC_COUNTERS=y
-# CONFIG_MIPS_RAW_APPENDED_DTB is not set
+CONFIG_MIPS_RAW_APPENDED_DTB=y
 CONFIG_MIPS_SPRAM=y
 # CONFIG_MIPS_VPE_LOADER is not set
 CONFIG_MODULES_USE_ELF_REL=y
diff --git a/target/linux/ramips/mt76x8/config-4.14 b/target/linux/ramips/mt76x8/config-4.14
index 5bcb948585..21cf070374 100644
--- a/target/linux/ramips/mt76x8/config-4.14
+++ b/target/linux/ramips/mt76x8/config-4.14
@@ -143,8 +143,8 @@ CONFIG_MIPS_CMDLINE_FROM_DTB=y
 # CONFIG_MIPS_HUGE_TLB_SUPPORT is not set
 CONFIG_MIPS_L1_CACHE_SHIFT=5
 # CONFIG_MIPS_MACHINE is not set
-CONFIG_MIPS_NO_APPENDED_DTB=y
-# CONFIG_MIPS_RAW_APPENDED_DTB is not set
+# CONFIG_MIPS_NO_APPENDED_DTB is not set
+CONFIG_MIPS_RAW_APPENDED_DTB=y
 CONFIG_MIPS_SPRAM=y
 CONFIG_MODULES_USE_ELF_REL=y
 CONFIG_MT7621_WDT=y
diff --git a/target/linux/ramips/patches-4.14/0100-prom_fixes.patch b/target/linux/ramips/patches-4.14/0100-prom_fixes.patch
deleted file mode 100644
index 91ac3b22c4..0000000000
--- a/target/linux/ramips/patches-4.14/0100-prom_fixes.patch
+++ /dev/null
@@ -1,66 +0,0 @@
-From 67b7bff0fd364c194e653f69baa623ba2141bd4c Mon Sep 17 00:00:00 2001
-From: John Crispin <blogic@openwrt.org>
-Date: Mon, 4 Aug 2014 18:46:02 +0200
-Subject: [PATCH 07/53] MIPS: ralink: copy the commandline from the devicetree
-
-Signed-off-by: John Crispin <blogic@openwrt.org>
----
- arch/mips/ralink/of.c |    2 ++
- 1 file changed, 2 insertions(+)
-
---- a/arch/mips/ralink/of.c
-+++ b/arch/mips/ralink/of.c
-@@ -3,7 +3,7 @@
-  * under the terms of the GNU General Public License version 2 as published
-  * by the Free Software Foundation.
-  *
-- * Copyright (C) 2008 Imre Kaloz <kaloz@openwrt.org>
-+ * Copyright (C) 2008-2014 Imre Kaloz <kaloz@openwrt.org>
-  * Copyright (C) 2008-2009 Gabor Juhos <juhosg@openwrt.org>
-  * Copyright (C) 2013 John Crispin <john@phrozen.org>
-  */
-@@ -66,6 +66,19 @@ static int __init early_init_dt_find_mem
- 	return 0;
- }
- 
-+static int chosen_dtb;
-+
-+static int __init early_init_dt_find_chosen(unsigned long node, const char *uname,
-+				     int depth, void *data)
-+{
-+	if (depth == 1 && !strcmp(uname, "chosen"))
-+		chosen_dtb = 1;
-+
-+	return 0;
-+}
-+
-+extern struct boot_param_header __image_dtb;
-+
- void __init plat_mem_setup(void)
- {
- 	void *dtb = NULL;
-@@ -82,7 +95,11 @@ void __init plat_mem_setup(void)
- 	else if (__dtb_start != __dtb_end)
- 		dtb = (void *)__dtb_start;
- 
--	__dt_setup_arch(dtb);
-+	__dt_setup_arch(&__image_dtb);
-+
-+	of_scan_flat_dt(early_init_dt_find_chosen, NULL);
-+	if (chosen_dtb)
-+		strlcpy(arcs_cmdline, boot_command_line, COMMAND_LINE_SIZE);
- 
- 	strlcpy(arcs_cmdline, boot_command_line, COMMAND_LINE_SIZE);
- 
---- a/arch/mips/kernel/head.S
-+++ b/arch/mips/kernel/head.S
-@@ -85,6 +85,9 @@ EXPORT(__image_cmdline)
- 	.fill	0x400
- #endif /* CONFIG_IMAGE_CMDLINE_HACK */
- 
-+	.ascii  "OWRTDTB:"
-+	EXPORT(__image_dtb)
-+	.fill   0x4000
- 	__REF
- 
- NESTED(kernel_entry, 16, sp)			# kernel entry point
diff --git a/target/linux/ramips/rt305x/config-4.14 b/target/linux/ramips/rt305x/config-4.14
index 1f00bdaae9..60197a1eb8 100644
--- a/target/linux/ramips/rt305x/config-4.14
+++ b/target/linux/ramips/rt305x/config-4.14
@@ -124,8 +124,8 @@ CONFIG_MIPS_CMDLINE_FROM_DTB=y
 # CONFIG_MIPS_HUGE_TLB_SUPPORT is not set
 CONFIG_MIPS_L1_CACHE_SHIFT=5
 # CONFIG_MIPS_MACHINE is not set
-CONFIG_MIPS_NO_APPENDED_DTB=y
-# CONFIG_MIPS_RAW_APPENDED_DTB is not set
+# CONFIG_MIPS_NO_APPENDED_DTB is not set
+CONFIG_MIPS_RAW_APPENDED_DTB=y
 CONFIG_MIPS_SPRAM=y
 CONFIG_MODULES_USE_ELF_REL=y
 # CONFIG_MTD_CFI_INTELEXT is not set
diff --git a/target/linux/ramips/rt3883/config-4.14 b/target/linux/ramips/rt3883/config-4.14
index 046e3732e2..f16b09deb0 100644
--- a/target/linux/ramips/rt3883/config-4.14
+++ b/target/linux/ramips/rt3883/config-4.14
@@ -138,8 +138,8 @@ CONFIG_MIPS_CMDLINE_FROM_DTB=y
 # CONFIG_MIPS_HUGE_TLB_SUPPORT is not set
 CONFIG_MIPS_L1_CACHE_SHIFT=5
 # CONFIG_MIPS_MACHINE is not set
-CONFIG_MIPS_NO_APPENDED_DTB=y
-# CONFIG_MIPS_RAW_APPENDED_DTB is not set
+# CONFIG_MIPS_NO_APPENDED_DTB is not set
+CONFIG_MIPS_RAW_APPENDED_DTB=y
 CONFIG_MIPS_SPRAM=y
 CONFIG_MODULES_USE_ELF_REL=y
 # CONFIG_MTD_CFI_INTELEXT is not set
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
