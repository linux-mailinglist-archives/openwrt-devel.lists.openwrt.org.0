Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9691F0ADD
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 13:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gLn5Rxqjy5WGGnDtFZjsxM/WHD8Nmdqa01ckSl+pr/0=; b=swcNiOQTMTgwh6
	nvs+ic2ElHOZn0f50WRtgIDsvGKa/SUzd6EBUK3fCX8uHv+5LxC8tyZ+OZcnOD+6dfqB+YrzqYUEq
	VVfIEyx6EFtvtlseGMmU4Zetz+9k+xDDDC3J1D4YQ50nm+PxJF9Myvz4eI7FlGfLu5zzemp+LnlHJ
	UbApxCeatXoS5vbrfjv8nVXl8cY4/It3cMZDSjW5Y3Qrrh5BLWa9j3YFzVdWImSzL+sNIkI7+PMOp
	2ouLuyVt0siIt9XsBPUt7rpsEWSFS3+9BbM5y0f/XFwAMIrnajoXQVNhWnG4VDama13+0K5fAzENB
	gmVPJqzeWkJLM8glWl0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhtE6-0001Xq-3t; Sun, 07 Jun 2020 11:12:30 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhtDz-0001XL-JI
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 11:12:25 +0000
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M2ep5-1jfPJq2BOZ-0049an for <openwrt-devel@lists.openwrt.org>; Sun, 07
 Jun 2020 13:12:21 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  7 Jun 2020 13:11:15 +0200
Message-Id: <20200607111115.1958-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:yK3KFRvf+0y0aTaszek3zPPkiJppEDHszn7RdFYlhVkDJhZiSD0
 98L9zyF/0mrLtk0MVsLXUXuOmCvA+bijK1qm57SXPQTnzC6bCi2qSQpq61ygOsWJhJc/CT1
 OdQ7xTxCBrMQvlGVTiK4QfVlztbAFa32v2mtSPFKWZFRa+ijBbwDJjhz4r1wJPz31Mi8kdQ
 cOhxCmdukfOWpCcSKKQdw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WVW7N2TsD7Y=:0+uBJrSOd3h7KIQqzTBgZ/
 l8BC+8cXrmKDCQvnbRxJ6JOntxLmBs2r8tr9Y1qQAENAv1cdqCO4Ea54m4c1Dap+MXD9tqqg8
 SmUmr/3TcbkMuN1RdLlZI4bsIA9TwUFalM5q+mHb8FAaQVlhQZtt4JKgxd6EhP1duK9hNfpgv
 av/CQuCnk8lS/J7TGSAlIWTa9nBFq3DsMBC/lnUTWjdZGplZKs6+2XE7iXtIfL+6yyNYTNT+1
 uWEvuTTW33yQMi+aGBpOS7ASS+jLOTAloIIQjocV6ABhU/40g4L+byhlKK4S4b6yHHGRmWiJq
 kkK6Sy8siArXhK79wE4p5gph2E8BRYPlp/ucAmpSqWUQqZuvhd7XdHsxJ1ZCF5SZEC/qcK3Fz
 IBK9NNXQjE/nqM9eNMMXtjhkoDrp5P6UQsgzFDDxKNvnICufKFV04R6kRsbVBEL60M7HWfr5f
 M9Fc0j4JIc0rEWhbdthReZyGYO4qOlpUXLCQzfg1OEu8cOYJY/911PiBfw/E4ib29hqtqcKLd
 br8pXFK1M8vvxtDVEZpe4wDg3BBPBfDlHSZBVVRLJwawO2cD4d954oDbdKkAySXfP/YcOplt4
 c7kjllSU4b3myTTAchkiCwaf7sBTaqhfxf5Gp9QlVnGkxUY1XTiMrlXkUr23haBhzPMXW+pNu
 2hNZ/okes4UcAqlab9aXGR72+l+z64MYbUOXZ4cFwOi/vORD0s20B295beQ9P5sEX4eatVqHh
 e8tozIhb2UkRjqzMEtIgAjlTOsLAgSYDMtBEhi3ZMUdnkNUXIuQrwuaLMAzy6TTJvtgikPu2t
 r0d3gfvMhi78qgw+Hmlz3vChKeYGp8MkDg+/Cs/XEui1kNGi95s9T3PV51Bt/4nX3tyUfla
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_041223_927817_D7B7BBF2 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] treewide: simplify inclusion of subtarget
 image files
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

Many target use a repetitive if-include scheme for their subtarget
image files, though their names are consistent with the subtarget
names.

This patch removes these redundant conditions and just uses the
variable for the include where the target setup allows it.

For sunxi, this includes a trivial rename of the subtarget image
Makefiles.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/at91/image/Makefile              |  7 +------
 target/linux/ath79/image/Makefile             | 20 ++++++++-----------
 target/linux/layerscape/image/Makefile        |  8 +-------
 target/linux/mvebu/image/Makefile             | 12 +----------
 target/linux/oxnas/image/Makefile             |  8 +-------
 target/linux/rockchip/image/Makefile          |  4 +---
 target/linux/sunxi/image/Makefile             | 12 +----------
 .../image/{cortex-a53.mk => cortexa53.mk}     |  0
 .../sunxi/image/{cortex-a7.mk => cortexa7.mk} |  0
 .../sunxi/image/{cortex-a8.mk => cortexa8.mk} |  0
 target/linux/x86/image/Makefile               | 16 +--------------
 11 files changed, 15 insertions(+), 72 deletions(-)
 rename target/linux/sunxi/image/{cortex-a53.mk => cortexa53.mk} (100%)
 rename target/linux/sunxi/image/{cortex-a7.mk => cortexa7.mk} (100%)
 rename target/linux/sunxi/image/{cortex-a8.mk => cortexa8.mk} (100%)

diff --git a/target/linux/at91/image/Makefile b/target/linux/at91/image/Makefile
index adb7c6d0ba..ff801dae86 100644
--- a/target/linux/at91/image/Makefile
+++ b/target/linux/at91/image/Makefile
@@ -13,12 +13,7 @@ define Build/at91-install-zImage
     $(CP) $(KDIR)/zImage $@
 endef
 
-ifeq ($(SUBTARGET),sam9x)
-include ./sam9x.mk
-endif
-ifeq ($(SUBTARGET),sama5)
-include ./sama5.mk
-endif
+include $(SUBTARGET).mk
 
 AT91_SD_BOOT_PARTSIZE:=64
 FAT32_BLOCK_SIZE:=1024
diff --git a/target/linux/ath79/image/Makefile b/target/linux/ath79/image/Makefile
index 529baf8f57..a555cfc6d5 100644
--- a/target/linux/ath79/image/Makefile
+++ b/target/linux/ath79/image/Makefile
@@ -68,20 +68,16 @@ define Device/Default
 	append-rootfs | pad-rootfs | append-metadata | check-size
 endef
 
+include $(SUBTARGET).mk
+
 ifeq ($(SUBTARGET),generic)
-include ./generic.mk
-include ./generic-tp-link.mk
-include ./generic-ubnt.mk
-endif
-ifeq ($(SUBTARGET),mikrotik)
-include ./mikrotik.mk
-endif
-ifeq ($(SUBTARGET),nand)
-include ./nand.mk
+include generic-tp-link.mk
+include generic-ubnt.mk
 endif
+
 ifeq ($(SUBTARGET),tiny)
-include ./tiny.mk
-include ./tiny-netgear.mk
-include ./tiny-tp-link.mk
+include tiny-netgear.mk
+include tiny-tp-link.mk
 endif
+
 $(eval $(call BuildImage))
diff --git a/target/linux/layerscape/image/Makefile b/target/linux/layerscape/image/Makefile
index bc65748853..f5a5ad9980 100644
--- a/target/linux/layerscape/image/Makefile
+++ b/target/linux/layerscape/image/Makefile
@@ -43,12 +43,6 @@ define Build/traverse-fit
 	@mv -f $@.new $@
 endef
 
-ifeq ($(SUBTARGET),armv8_64b)
-include armv8_64b.mk
-endif
-
-ifeq ($(SUBTARGET),armv7)
-include armv7.mk
-endif
+include $(SUBTARGET).mk
 
 $(eval $(call BuildImage))
diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index 3a47878069..cbf34c1bc8 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -138,16 +138,6 @@ define Device/NAND-512K
   PAGESIZE := 4096
 endef
 
-ifeq ($(SUBTARGET),cortexa9)
-include cortexa9.mk
-endif
-
-ifeq ($(SUBTARGET),cortexa53)
-include cortexa53.mk
-endif
-
-ifeq ($(SUBTARGET),cortexa72)
-include cortexa72.mk
-endif
+include $(SUBTARGET).mk
 
 $(eval $(call BuildImage))
diff --git a/target/linux/oxnas/image/Makefile b/target/linux/oxnas/image/Makefile
index 644c2b8795..abf83caa1a 100644
--- a/target/linux/oxnas/image/Makefile
+++ b/target/linux/oxnas/image/Makefile
@@ -4,12 +4,6 @@ include $(INCLUDE_DIR)/image.mk
 VMLINUX:=$(BIN_DIR)/$(IMG_PREFIX)-vmlinux
 UIMAGE:=$(BIN_DIR)/$(IMG_PREFIX)-uImage
 
-ifeq ($(SUBTARGET),ox810se)
-include ox810se.mk
-endif
-
-ifeq ($(SUBTARGET),ox820)
-include ox820.mk
-endif
+include $(SUBTARGET).mk
 
 $(eval $(call BuildImage))
diff --git a/target/linux/rockchip/image/Makefile b/target/linux/rockchip/image/Makefile
index 5f605ebfe5..22854d9d02 100644
--- a/target/linux/rockchip/image/Makefile
+++ b/target/linux/rockchip/image/Makefile
@@ -56,8 +56,6 @@ define Device/Default
   DEVICE_DTS = rockchip/$$(SOC)-$(lastword $(subst _, ,$(1)))
 endef
 
-ifeq ($(SUBTARGET),armv8)
-  include armv8.mk
-endif
+include $(SUBTARGET).mk
 
 $(eval $(call BuildImage))
diff --git a/target/linux/sunxi/image/Makefile b/target/linux/sunxi/image/Makefile
index 1b98849a50..01e9742b46 100644
--- a/target/linux/sunxi/image/Makefile
+++ b/target/linux/sunxi/image/Makefile
@@ -42,16 +42,6 @@ define Device/Default
   SUNXI_DTS = $$(SUNXI_DTS_DIR)$$(SOC)-$(lastword $(subst _, ,$(1)))
 endef
 
-ifeq ($(SUBTARGET),cortexa7)
-include cortex-a7.mk
-endif
-
-ifeq ($(SUBTARGET),cortexa8)
-include cortex-a8.mk
-endif
-
-ifeq ($(SUBTARGET),cortexa53)
-include cortex-a53.mk
-endif
+include $(SUBTARGET).mk
 
 $(eval $(call BuildImage))
diff --git a/target/linux/sunxi/image/cortex-a53.mk b/target/linux/sunxi/image/cortexa53.mk
similarity index 100%
rename from target/linux/sunxi/image/cortex-a53.mk
rename to target/linux/sunxi/image/cortexa53.mk
diff --git a/target/linux/sunxi/image/cortex-a7.mk b/target/linux/sunxi/image/cortexa7.mk
similarity index 100%
rename from target/linux/sunxi/image/cortex-a7.mk
rename to target/linux/sunxi/image/cortexa7.mk
diff --git a/target/linux/sunxi/image/cortex-a8.mk b/target/linux/sunxi/image/cortexa8.mk
similarity index 100%
rename from target/linux/sunxi/image/cortex-a8.mk
rename to target/linux/sunxi/image/cortexa8.mk
diff --git a/target/linux/x86/image/Makefile b/target/linux/x86/image/Makefile
index 174c272a51..85c850c128 100644
--- a/target/linux/x86/image/Makefile
+++ b/target/linux/x86/image/Makefile
@@ -146,21 +146,7 @@ define Device/Default
   ARTIFACTS := $$(ARTIFACTS-y)
 endef
 
-ifeq ($(SUBTARGET),64)
-  include 64.mk
-endif
-
-ifeq ($(SUBTARGET),generic)
-  include generic.mk
-endif
-
-ifeq ($(SUBTARGET),geode)
-  include geode.mk
-endif
-
-ifeq ($(SUBTARGET),legacy)
-  include legacy.mk
-endif
+include $(SUBTARGET).mk
 
 $(eval $(call BuildImage))
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
