Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64261179BE5
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 23:42:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lkm9tRyFMyYnE2gv7y17jY8mqgie9D1WFug97+RIBM0=; b=BdWAsL/C+iThr1
	dEb+b/hN5yxZSecOwjzmYPMSEETwr93BmKV6R8ixtkHA35gwSqRVzBsvIuW4w9mXCptgoafsde6Ax
	ioIkT3zqxfXduq+5e15P05Aeo5Xhf6T0mMt4y6OFLs4OMtywy13nVfIYheTti9QM7DS9zbJUUzumb
	WPbz+OW+5mGdAxSK1aLoNyRnrk6gZSfenFZpPPhj1zaPvmz0AyL4qz6/xeFaKUDW3MHHUDg4FwIi1
	LA4UdNusmiPQ0JobY7kzWaELHJDGabq1RF9zt9Bdy8wG92Y6/r2s1oaDb291obvfp8RLOsQi2cCJL
	a1Ax9dsDaVQsKYgiPYHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9civ-0002XM-OZ; Wed, 04 Mar 2020 22:42:41 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9cid-0002NW-H6
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 22:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1583361741;
 s=strato-dkim-0002; d=heimpold.de;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=AX6Xtwvp4+LoPLHsrUrvIHOFMpr4KsEzulfQ99dvlXM=;
 b=FW+5AUSXWQHz6KrZ8M1n8lLC1iBO14KGy2sysJ3NZEnmpQKFFigO4WXuZeBTGtD2UR
 y3HWn0/ipL0s5EbIl4Zzu52TusxqWkgkLiMMV0oAtO6USQnn5SqrgvLsDso3IuOOjBq0
 sZJav6nv0jdcWWlydwg9nrd5f8oRxzOgQez8jYRfKE4/doUMq4HkWT7hp58eVoti0PLr
 SlC6+fxBA1E037I9F6zTKsjlgbaNbawa9Lj1NbZNr5nQ264k2xzmjzV5ZZVjs7cD7vdL
 Las5bcvJQ482Ueo/tpnEB2kkBLHNuFNcH9Nmu9aVJAIBlw9PisaWE3RRCMe++EB1H6Mt
 XYMQ==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGQORRBv+ASfYPl1MvCO4XzP+xUjBOnrNgGpUmNL4vWpeO4GmM63Q=="
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr by smtp.strato.de (RZmta 46.2.0 AUTH)
 with ESMTPSA id Q06422w24MgKRgI
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1
 with 256 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 4 Mar 2020 23:42:20 +0100 (CET)
Received: from kerker.mhei.heimpold.itr (kerker.mhei.heimpold.itr
 [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id 17A8E156C67;
 Wed,  4 Mar 2020 23:42:20 +0100 (CET)
From: Michael Heimpold <mhei@heimpold.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  4 Mar 2020 23:42:19 +0100
Message-Id: <20200304224219.6738-1-mhei@heimpold.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_144223_731270_D24BA3AF 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5300:0:0:5 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] uboot-mxs: bump to v2020.01
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
Cc: Michael Heimpold <mhei@heimpold.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Also update the U-Boot BSP patch for I2SE Duckbill devices.

Run tested on I2SE Duckbill and Olimex OLinuXino Maxi boards.

Signed-off-by: Michael Heimpold <mhei@heimpold.de>
---
 package/boot/uboot-mxs/Makefile               |  4 ++--
 .../patches/001-add-i2se-duckbill.patch       | 24 +++++++++----------
 2 files changed, 13 insertions(+), 15 deletions(-)

diff --git a/package/boot/uboot-mxs/Makefile b/package/boot/uboot-mxs/Makefile
index 04d3f15f95..3112d673d4 100644
--- a/package/boot/uboot-mxs/Makefile
+++ b/package/boot/uboot-mxs/Makefile
@@ -8,10 +8,10 @@
 include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
-PKG_VERSION:=2019.10
+PKG_VERSION:=2020.01
 PKG_RELEASE:=1
 
-PKG_HASH:=8d6d6070739522dd236cba7055b8736bfe92b4fac0ea18ad809829ca79667014
+PKG_HASH:=aa453c603208b1b27bd03525775a7f79b443adec577fdc6e8f06974025a135f1
 
 include $(INCLUDE_DIR)/u-boot.mk
 include $(INCLUDE_DIR)/package.mk
diff --git a/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch b/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
index c7b8fd63ea..033c843202 100644
--- a/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
+++ b/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
@@ -1,4 +1,4 @@
-From 821d083ae4cfb795eab385eda43a20cdc8c3cacd Mon Sep 17 00:00:00 2001
+From b66c70cd15fa02297b94d928970932ef62c2ff02 Mon Sep 17 00:00:00 2001
 From: Michael Heimpold <mhei@heimpold.de>
 Date: Sun, 3 Nov 2019 00:50:21 +0100
 Subject: [PATCH] arm: mxs: add support for I2SE's Duckbill boards
@@ -32,9 +32,9 @@ Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
  board/i2se/duckbill/Makefile    |  10 ++
  board/i2se/duckbill/duckbill.c  | 186 ++++++++++++++++++++++++++++++++
  board/i2se/duckbill/iomux.c     | 156 +++++++++++++++++++++++++++
- configs/duckbill_defconfig      |  40 +++++++
- include/configs/duckbill.h      | 179 ++++++++++++++++++++++++++++++
- 8 files changed, 597 insertions(+)
+ configs/duckbill_defconfig      |  41 +++++++
+ include/configs/duckbill.h      | 176 ++++++++++++++++++++++++++++++
+ 8 files changed, 595 insertions(+)
  create mode 100644 board/i2se/duckbill/Kconfig
  create mode 100644 board/i2se/duckbill/MAINTAINERS
  create mode 100644 board/i2se/duckbill/Makefile
@@ -471,10 +471,10 @@ index 0000000000..1db3c52c34
 +}
 diff --git a/configs/duckbill_defconfig b/configs/duckbill_defconfig
 new file mode 100644
-index 0000000000..5a8c561b4e
+index 0000000000..fcdec4f3c7
 --- /dev/null
 +++ b/configs/duckbill_defconfig
-@@ -0,0 +1,40 @@
+@@ -0,0 +1,41 @@
 +CONFIG_ARM=y
 +CONFIG_ARCH_MX28=y
 +CONFIG_SYS_TEXT_BASE=0x40002000
@@ -483,6 +483,8 @@ index 0000000000..5a8c561b4e
 +CONFIG_SPL_LIBGENERIC_SUPPORT=y
 +CONFIG_TARGET_DUCKBILL=y
 +CONFIG_SPL_SERIAL_SUPPORT=y
++CONFIG_ENV_SIZE=0x20000
++CONFIG_ENV_OFFSET=0x20000
 +CONFIG_NR_DRAM_BANKS=1
 +CONFIG_SPL=y
 +CONFIG_SPL_TEXT_BASE=0x00001000
@@ -496,7 +498,6 @@ index 0000000000..5a8c561b4e
 +CONFIG_CMD_BOOTZ=y
 +# CONFIG_CMD_ELF is not set
 +CONFIG_CMD_UNZIP=y
-+# CONFIG_CMD_FLASH is not set
 +CONFIG_CMD_FUSE=y
 +CONFIG_CMD_GPIO=y
 +CONFIG_CMD_MMC=y
@@ -509,18 +510,18 @@ index 0000000000..5a8c561b4e
 +CONFIG_CMD_FS_GENERIC=y
 +CONFIG_DOS_PARTITION=y
 +CONFIG_ENV_IS_IN_MMC=y
++CONFIG_SYS_RELOC_GD_ENV_ADDR=y
 +CONFIG_MXS_GPIO=y
 +CONFIG_MMC_MXS=y
 +CONFIG_MII=y
 +CONFIG_CONS_INDEX=0
 +CONFIG_OF_LIBFDT=y
-+# CONFIG_EFI_LOADER is not set
 diff --git a/include/configs/duckbill.h b/include/configs/duckbill.h
 new file mode 100644
-index 0000000000..e7fce8843e
+index 0000000000..76da1008b8
 --- /dev/null
 +++ b/include/configs/duckbill.h
-@@ -0,0 +1,179 @@
+@@ -0,0 +1,176 @@
 +/* SPDX-License-Identifier: GPL-2.0+ */
 +/*
 + * Copyright (C) 2014-2019 Michael Heimpold <mhei@heimpold.de>
@@ -543,9 +544,6 @@ index 0000000000..e7fce8843e
 +
 +/* Environment is in MMC */
 +#define CONFIG_ENV_OVERWRITE
-+#define CONFIG_ENV_SIZE			(128 * 1024)
-+#define CONFIG_ENV_OFFSET		(128 * 1024)
-+#define CONFIG_ENV_OFFSET_REDUND	(256 * 1024)
 +#define CONFIG_SYS_MMC_ENV_DEV		0
 +#define CONFIG_SYS_REDUNDAND_ENVIRONMENT
 +
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
