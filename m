Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC04141568
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Jan 2020 02:22:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=78Is1L0Tut34GoOvetd9iEB0DrjgqqL0wkOL+kjlwWo=; b=R0S2aWRvGXmNLOQ/Knu3Ec0Av+
	Aw3THfG+lMdwFqTBxgrFn1R2FkzS6PUjcKR5vEdIpo9PWZ9e2O819hIgWFjXBQ9re9itVYCStddCo
	AZ+E+eE0ekgAVG2sHzOoBzaCkns9SZwc8sTJ6zWV1d+w2Fw8Oeqm1woBxeYS9p4qCwhRycJdY8xNV
	maRwVPR9ofvRQEbjKZTCsHLYxi1O5ntc6xCppzHEBCePMmA3rJdjxUEYc0kI+fV4Klog42cDidgWU
	5V/kqB0Jsqxsfgq9SfZAjzk4Lovs2C7cnfgCpNPtUSXtQTL4pW3gXHTXA0DURZ0wKqGloAvHrgqC2
	broyr8UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iscog-0006tp-Fh; Sat, 18 Jan 2020 01:22:22 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iscoO-0006iq-8w
 for openwrt-devel@lists.openwrt.org; Sat, 18 Jan 2020 01:22:06 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MkHEN-1jLexU0zNZ-00kjbT for <openwrt-devel@lists.openwrt.org>; Sat, 18
 Jan 2020 02:22:01 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 18 Jan 2020 02:21:12 +0100
Message-Id: <20200118012115.46148-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200118012115.46148-1-freifunk@adrianschmutzler.de>
References: <20200118012115.46148-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:4HqUZsaf6RrFhlZVjZmDqRvLhypPYZttXL/5NnIY2SwOKJFJuBm
 rkW2I6z3iYmDErERlFWE6BwR+6tSyrzWVY1e4mu5aKuhB9s/Ubam0IVZscQ069hm7/ck3XB
 nl6gV/k7YCXcM73NFmArVh2ere3YigwJFDauwSVdcsNb4uP8EeTM4cbqbWDMJTuZLXJxqlt
 0/5Qv/YN79GGt8RFm8vXg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:C2WitC4d4QQ=:hUIckvUiKag5aGcTRHriC/
 z3KkINlhvUjzCt6pXaPqb4HvqfN99N9MBa8GUtjl/jq5rEvPSRv2MkQ84hWl95ZCE9So6pOSb
 +wggJUEZ+5unybofxNg33cNNaf8jxpecV86FwFv5C8zNI9Thr/8Kxc4ZCE/IN9s+kiPJOghWd
 7QAwiXXNhVspflDG9nKxwNOA0XoVkKk5CTJiCWQ158XbGr9zbNnLgZibFt7HXT0aZbS5djgE4
 MQ6scFqaPXSUuOKRd28CJIC/PLWj1vZ2O48kSn4b6lzcdaT45L8n+32lAZ4o1ydYYZT+ll4+U
 8LhYN9mU6b48Hy3JnkLbKLvNIpve0xoCFTkqDnFDHmDG+3sd6/FYY2qXOyLJXuI0rZF4uUycS
 c38VoGevu09I2Yd0lGno0PJsLtwv3F52wZMobKKrZHdZ/TQ/uWYnzOTVkSiCn1igBxnJy1HRm
 p4Jww2PAt7ELpV4scsJUbLcD9JSOzZf8zFpjwDdADJoNf+yO0htN4qW/wQiLsFt5Rq1sGiT//
 qk50TFEVdPNpDVFb60DC1elqT1nEZb/3I2pY1KU89EU9gDpxNevKhl3Yi2Kn6pW9Wk4+z+4Qy
 K0S+UhfEZHAHsWoYxEHkJaLAwt3ODRM/9imfkzRx9pCb0PAkRjrBPIRgDsXm4z9ddDt+rAu7u
 7YtARYgAH2Qu7JDMyA82ShpxEXCzRYTxJ/tsCZ5QYrzGM1wuBDJztErCqzzNdiyojmmnAPflT
 zOC17KzB0FakQLpk/BlVX3jtuWLJceblrxIt7Txrh7NwsMwEc/4+jUulefl/IkFgTCFyLKbkY
 DlJ7rZNKOEcp/KivG9cSWkbWd2XKVNUgqdlwQFSoYfyRC7s444FIZ18EJh9yiLaDKUiTL5MlA
 SUFrF5fTW/QrLmxFYdZDD8S/28xlsa5nyYaBBKE/4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_172204_610137_1F9F3F13 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] mvebu: use SOC to derive DEVICE_DTS
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

This introduces the SOC variable to mvebu target to derive some of
the DEVICE_DTS variables based on the SOC prefix and the device
definition name.

Since DTS names and compatible are inconsistent also in the kernel
for this target, the scheme cannot be applied to all devices, though.

While at it, change the DTS name of the armada-3720-udpu to lower-case,
which is the common practice for DTS file names.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../{armada-3720-uDPU.dts => armada-3720-udpu.dts}     |  0
 target/linux/mvebu/image/Makefile                      |  1 +
 target/linux/mvebu/image/cortex-a53.mk                 | 10 +++++-----
 target/linux/mvebu/image/cortex-a9.mk                  |  6 +++---
 .../patches-4.19/530-add_armada-3820-uDPU-dts.patch    |  2 +-
 5 files changed, 10 insertions(+), 9 deletions(-)
 rename target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/{armada-3720-uDPU.dts => armada-3720-udpu.dts} (100%)

diff --git a/target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-3720-udpu.dts
similarity index 100%
rename from target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
rename to target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-3720-udpu.dts
diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index 6dd7bde7ae..c08b113b36 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -77,6 +77,7 @@ endef
 
 define Device/Default
   PROFILES := Default
+  DEVICE_DTS = $$(SOC)-$(lastword $(subst _, ,$(1)))
   BOARD_NAME = $$(DEVICE_DTS)
   KERNEL_NAME := zImage
   KERNEL := kernel-bin | append-dtb | uImage none
diff --git a/target/linux/mvebu/image/cortex-a53.mk b/target/linux/mvebu/image/cortex-a53.mk
index e58a3c42b9..c9d06ddbad 100644
--- a/target/linux/mvebu/image/cortex-a53.mk
+++ b/target/linux/mvebu/image/cortex-a53.mk
@@ -6,7 +6,7 @@ define Device/globalscale_espressobin
   DEVICE_ALT0_VENDOR := Marvell
   DEVICE_ALT0_MODEL := Armada 3700 Community Board
   DEVICE_ALT0_VARIANT := Non-eMMC
-  DEVICE_DTS := armada-3720-espressobin
+  SOC := armada-3720
 endef
 TARGET_DEVICES += globalscale_espressobin
 
@@ -18,7 +18,7 @@ define Device/globalscale_espressobin-emmc
   DEVICE_ALT0_VENDOR := Marvell
   DEVICE_ALT0_MODEL := Armada 3700 Community Board
   DEVICE_ALT0_VARIANT := eMMC
-  DEVICE_DTS := armada-3720-espressobin-emmc
+  SOC := armada-3720
 endef
 TARGET_DEVICES += globalscale_espressobin-emmc
 
@@ -30,7 +30,7 @@ define Device/globalscale_espressobin-v7
   DEVICE_ALT0_VENDOR := Marvell
   DEVICE_ALT0_MODEL := Armada 3700 Community Board
   DEVICE_ALT0_VARIANT := V7 Non-eMMC
-  DEVICE_DTS := armada-3720-espressobin-v7
+  SOC := armada-3720
 endef
 TARGET_DEVICES += globalscale_espressobin-v7
 
@@ -42,7 +42,7 @@ define Device/globalscale_espressobin-v7-emmc
   DEVICE_ALT0_VENDOR := Marvell
   DEVICE_ALT0_MODEL := Armada 3700 Community Board
   DEVICE_ALT0_VARIANT := V7 eMMC
-  DEVICE_DTS := armada-3720-espressobin-v7-emmc
+  SOC := armada-3720
 endef
 TARGET_DEVICES += globalscale_espressobin-v7-emmc
 
@@ -58,7 +58,7 @@ define Device/methode_udpu
   $(call Device/Default-arm64)
   DEVICE_VENDOR := Methode
   DEVICE_MODEL := micro-DPU (uDPU)
-  DEVICE_DTS := armada-3720-uDPU
+  SOC := armada-3720
   KERNEL_LOADADDR := 0x00080000
   KERNEL_INITRAMFS := kernel-bin | gzip | fit gzip $$(DTS_DIR)/$$(DEVICE_DTS).dtb
   KERNEL_INITRAMFS_SUFFIX := .itb
diff --git a/target/linux/mvebu/image/cortex-a9.mk b/target/linux/mvebu/image/cortex-a9.mk
index 389082e426..79253049c7 100644
--- a/target/linux/mvebu/image/cortex-a9.mk
+++ b/target/linux/mvebu/image/cortex-a9.mk
@@ -93,7 +93,7 @@ define Device/plathome_openblocks-ax3-4
   DEVICE_VENDOR := Plat'Home
   DEVICE_MODEL := OpenBlocks AX3
   DEVICE_VARIANT := 4 ports
-  DEVICE_DTS := armada-xp-openblocks-ax3-4
+  SOC := armada-xp
   SUPPORTED_DEVICES += openblocks-ax3-4
   BLOCKSIZE := 128k
   PAGESIZE := 1
@@ -193,7 +193,7 @@ define Device/globalscale_mirabox
   $(Device/NAND-512K)
   DEVICE_VENDOR := Globalscale
   DEVICE_MODEL := Mirabox
-  DEVICE_DTS := armada-370-mirabox
+  SOC := armada-370
   SUPPORTED_DEVICES += mirabox
 endef
 TARGET_DEVICES += globalscale_mirabox
@@ -212,7 +212,7 @@ define Device/cznic_turris-omnia
   IMAGE/$$(IMAGE_PREFIX)-sysupgrade.img.gz := boot-img | sdcard-img | gzip | append-metadata
   IMAGE/omnia-medkit-$$(IMAGE_PREFIX)-initramfs.tar.gz := omnia-medkit-initramfs | gzip
   IMAGE_NAME = $$(2)
-  DEVICE_DTS := armada-385-turris-omnia
+  SOC := armada-385
   SUPPORTED_DEVICES += armada-385-turris-omnia
 endef
 TARGET_DEVICES += cznic_turris-omnia
diff --git a/target/linux/mvebu/patches-4.19/530-add_armada-3820-uDPU-dts.patch b/target/linux/mvebu/patches-4.19/530-add_armada-3820-uDPU-dts.patch
index bd4f0aef9a..635e141c69 100644
--- a/target/linux/mvebu/patches-4.19/530-add_armada-3820-uDPU-dts.patch
+++ b/target/linux/mvebu/patches-4.19/530-add_armada-3820-uDPU-dts.patch
@@ -4,7 +4,7 @@
  # Mvebu SoC Family
  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-db.dtb
  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin.dtb
-+dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-uDPU.dtb
++dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-udpu.dtb
  dtb-$(CONFIG_ARCH_MVEBU) += armada-7040-db.dtb
  dtb-$(CONFIG_ARCH_MVEBU) += armada-8040-db.dtb
  dtb-$(CONFIG_ARCH_MVEBU) += armada-8040-mcbin.dtb
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
