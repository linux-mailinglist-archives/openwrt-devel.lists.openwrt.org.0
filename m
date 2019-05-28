Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AA42CD91
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 19:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=njTlyqPaMlWQB9QNojjU39354tL9qChIWd6RjQbkE8M=; b=nYcMfPxS7BnC11WtdD+b4W3vM8
	6kQQw/g7Q+JPtJyuC3nygVf3paPiq6Kkhc0DLKBk57M9PPyKliiBR8DHgGSoHLnUFfXA/sgCP4S7V
	Ruo+l/WeUorrQELqgUKA/BQiDizz6iuixhaDVEF/PArxScKPuFmpEB7lbM/YLpLtYwvH/sII9ySjP
	Na4Gj/6YE3aybrHmnKd0WrorC9zfed2OzfX20hah41SvvEfPG2cUKqbnEUyeIw25rLhg9K13jX81O
	Y3uGGi8n4YmgwrZJ3k4nMqKxmOydLPCB7v0KfH320x/O6kp4+0iqNIZUpD8Z9oR1u5vN3UyYx751x
	iQ5VaX5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfq7-0002ww-Vu; Tue, 28 May 2019 17:24:43 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfoZ-0000SF-Bz
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 17:23:12 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,523,1549954800"; d="scan'208";a="32110912"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 May 2019 10:22:42 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by mx.microchip.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5;
 Tue, 28 May 2019 10:22:27 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 28 May 2019 10:21:19 -0700
Message-ID: <39d5560fc425ac201fe309648f3fd5dba1759361.1559063196.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559063195.git.sandeep.sheriker@microchip.com>
References: <cover.1559063195.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_102308_314678_A72CC508 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [OpenWrt-Devel,
 7/7] uboot-at91: bump linux4sam_5.8 to linux4sam_6.0
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

1.add support to build u-boot binaries for at91sam9x5ek socs.
2.removed sama5d27_som1_ek_spiflash defconfig & add QSPI defconfig.
3.removed sama5d27_som1_ek_mmc defconfig & mmc1 defconfig.
3.add patch to fix -Wformat-security warnings into errors insead of
  editing cflags.

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 package/boot/uboot-at91/Makefile                   | 25 +++++++++++++++-------
 .../patches/001-fix-Wformat-security.patch         | 13 +++++++++++
 2 files changed, 30 insertions(+), 8 deletions(-)
 create mode 100644 package/boot/uboot-at91/patches/001-fix-Wformat-security.patch

diff --git a/package/boot/uboot-at91/Makefile b/package/boot/uboot-at91/Makefile
index a3262b5..547b72f 100644
--- a/package/boot/uboot-at91/Makefile
+++ b/package/boot/uboot-at91/Makefile
@@ -7,12 +7,12 @@
 
 include $(TOPDIR)/rules.mk
 
-PKG_VERSION:=linux4sam_5.8
+PKG_VERSION:=linux4sam_6.0
 PKG_RELEASE:=1
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL:=https://github.com/linux4sam/u-boot-at91.git
-PKG_SOURCE_VERSION:=59f202622154f82e708a6ca2bf86350a5c1b2d33
+PKG_SOURCE_VERSION:=1e7d2e5973c1fb780e55e28a801c6c574158ac14
 
 include $(INCLUDE_DIR)/u-boot.mk
 include $(INCLUDE_DIR)/package.mk
@@ -38,6 +38,14 @@ define U-Boot/at91sam9x5ek_nandflash
 				 at91sam9x35ek
 endef
 
+define U-Boot/at91sam9x5ek_mmc
+  NAME:=AT91SAM9X5-EK board (SDcard)
+  BUILD_SUBTARGET:=sam9x
+  BUILD_DEVICES:=at91sam9g15ek at91sam9g25ek \
+                 at91sam9g35ek at91sam9x25ek \
+				 at91sam9x35ek
+endef
+
 define U-Boot/sama5d3_xplained_nandflash
   NAME:=SAMA5D3 Xplained board (NandFlash)
   BUILD_SUBTARGET:=sama5
@@ -80,13 +88,13 @@ define U-Boot/sama5d4_xplained_nandflash
   BUILD_DEVICES:=at91-sama5d4_xplained
 endef
 
-define U-Boot/sama5d27_som1_ek_mmc
-  NAME:=SAMA5D27 SOM1 Ek (SDCard)
+define U-Boot/sama5d27_som1_ek_mmc1
+  NAME:=SAMA5D27 SOM1 Ek (SDCard1)
   BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d27_som1_ek
 endef
 
-define U-Boot/sama5d27_som1_ek_spiflash
+define U-Boot/sama5d27_som1_ek_qspiflash
   NAME:=SAMA5D27 SOM1 Ek (QSPI Flash)
   BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d27_som1_ek
@@ -107,6 +115,7 @@ endef
 UBOOT_TARGETS := \
 	at91sam9m10g45ek_nandflash \
 	at91sam9x5ek_nandflash \
+	at91sam9x5ek_mmc \
 	sama5d3_xplained_nandflash \
 	sama5d3_xplained_mmc \
 	sama5d2_xplained_mmc \
@@ -114,15 +123,15 @@ UBOOT_TARGETS := \
 	sama5d4_xplained_mmc \
 	sama5d4_xplained_spiflash \
 	sama5d4_xplained_nandflash\
-    sama5d27_som1_ek_mmc \
-    sama5d27_som1_ek_spiflash \
+	sama5d27_som1_ek_mmc1 \
+	sama5d27_som1_ek_qspiflash \
 	sama5d2_ptc_ek_nandflash \
 	sama5d2_ptc_ek_mmc
 
 define Build/Compile
   +$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR) \
      CROSS_COMPILE=$(TARGET_CROSS) \
-	 DTC=$(LINUX_DIR)/scripts/dtc/dtc \
+	 DTC=$(PKG_BUILD_DIR)/scripts/dtc/dtc \
      KCFLAGS="$(filter-out -fstack-protector \
       -mfloat-abi=hard, $(TARGET_CFLAGS)) -mfloat-abi=soft"
 endef
diff --git a/package/boot/uboot-at91/patches/001-fix-Wformat-security.patch b/package/boot/uboot-at91/patches/001-fix-Wformat-security.patch
new file mode 100644
index 0000000..18f9af7
--- /dev/null
+++ b/package/boot/uboot-at91/patches/001-fix-Wformat-security.patch
@@ -0,0 +1,13 @@
+diff --git a/cmd/version.c b/cmd/version.c
+index b2fffe9..bcbbeb1 100644
+--- a/cmd/version.c
++++ b/cmd/version.c
+@@ -18,7 +18,7 @@ static int do_version(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
+ {
+	char buf[DISPLAY_OPTIONS_BANNER_LENGTH];
+
+-	printf(display_options_get_banner(false, buf, sizeof(buf)));
++	printf("%s",display_options_get_banner(false, buf, sizeof(buf)));
+ #ifdef CC_VERSION_STRING
+	puts(CC_VERSION_STRING "\n");
+ #endif
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
