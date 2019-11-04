Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F74FEF112
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 00:15:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VBzy5F+RXxr+/ri534eQX9DM1s56FHo4K1i8qrWUvtw=; b=PU3akh5ioqr+7X
	zsAZSA7f/E+8IRT65jlasxTkBeQd6ZLgm0mh7C6TV1TjU2lBJk9E0/SbfHMAtBAdhDPri7c5hO0Qn
	/yKPY0SpL4da6HSYeofyNVgMB0jL7e0jqKZROqTaG+OF5v0Bx3hr5jxSVLbErRp0Y0/Jo0CRl3MAP
	7v6ySr6F3bC6OA+ZJV7+bQ2RaWUvc6dL5a4l8tr5DgrHVn7udrDd0/xa21l5McNgJKBTpNWZzjUFn
	ItNWZLYRJQklEwqmuybKhZobt+HK8jGVepiHerY5wOYCXhifqVCQEoNE6s3yvmYY+Q9Ni8cVVvYNB
	yyyLp8/QNfcRfXQp9xqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRlZ5-0005vC-QI; Mon, 04 Nov 2019 23:15:15 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRlYt-0005NZ-7c
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 23:15:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1572909298;
 s=strato-dkim-0002; d=heimpold.de;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=ETP+K/eTeNoXCTlyQ6vRXzTBaeq/QeF9o8103/MUPV4=;
 b=gifTXVxFSjyaloaHbzO3nsla15zj22D6ngyNDz5ST0/sWI6uaZko+/fkKdTzQqyS19
 jGQs4YroE2Mq7kVMM74Fyhf0jeB0maedp1MLMQH1W/kSZNBShdEOcT8WTwtJOgeLbUnN
 MUQsayK6TkuIZ0G89ntiT0f2p54HtUhBbXKLc5ZoyHNVUTgSK8iD59lnRX89snZ6GGEY
 x0JDC3+dcrrlEIyJBaF+PLq4Yzfe8j8k3NB/qiH8tDZGVlqZBs0/GbmMhmaRdXBZv2I6
 IhWBcpbW3rYwQQJf36BTF3j0c+7rzsAOFM1eQ8+1oDbjvc4O9tjpnuSUOVJDuk+5aw8b
 o71A==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGQORRBv+ASfYPl1MuXOoWjOOx85b6nmekuMQXDvBRi0QaGHEWxMw=="
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id c008fcvA4NEwYrQ
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Tue, 5 Nov 2019 00:14:58 +0100 (CET)
Received: from kerker.mhei.heimpold.itr (kerker.mhei.heimpold.itr
 [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id 374901527A8;
 Tue,  5 Nov 2019 00:14:57 +0100 (CET)
From: Michael Heimpold <mhei@heimpold.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 00:14:55 +0100
Message-Id: <20191104231455.23221-1-mhei@heimpold.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_151503_873119_D4AC03BC 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:3 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] uboot-mxs: bump to v2019.10
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

Superseeds my patch to upgrade to v2019.07.

 package/boot/uboot-mxs/Makefile                  |  4 ++--
 .../patches/001-add-i2se-duckbill.patch          | 16 +++++++++-------
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/package/boot/uboot-mxs/Makefile b/package/boot/uboot-mxs/Makefile
index c4485f5b3d..04d3f15f95 100644
--- a/package/boot/uboot-mxs/Makefile
+++ b/package/boot/uboot-mxs/Makefile
@@ -8,10 +8,10 @@
 include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
-PKG_VERSION:=2019.01
+PKG_VERSION:=2019.10
 PKG_RELEASE:=1
 
-PKG_HASH:=50bd7e5a466ab828914d080d5f6a432345b500e8fba1ad3b7b61e95e60d51c22
+PKG_HASH:=8d6d6070739522dd236cba7055b8736bfe92b4fac0ea18ad809829ca79667014
 
 include $(INCLUDE_DIR)/u-boot.mk
 include $(INCLUDE_DIR)/package.mk
diff --git a/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch b/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
index 9acb6a508d..c7b8fd63ea 100644
--- a/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
+++ b/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
@@ -1,6 +1,6 @@
-From 6af0148a38b23ba761905f98a7211fab986033ce Mon Sep 17 00:00:00 2001
+From 821d083ae4cfb795eab385eda43a20cdc8c3cacd Mon Sep 17 00:00:00 2001
 From: Michael Heimpold <mhei@heimpold.de>
-Date: Thu, 13 Sep 2018 21:40:19 +0200
+Date: Sun, 3 Nov 2019 00:50:21 +0100
 Subject: [PATCH] arm: mxs: add support for I2SE's Duckbill boards
 
 The Duckbill devices are small, pen-drive sized boards based on
@@ -32,9 +32,9 @@ Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
  board/i2se/duckbill/Makefile    |  10 ++
  board/i2se/duckbill/duckbill.c  | 186 ++++++++++++++++++++++++++++++++
  board/i2se/duckbill/iomux.c     | 156 +++++++++++++++++++++++++++
- configs/duckbill_defconfig      |  38 +++++++
+ configs/duckbill_defconfig      |  40 +++++++
  include/configs/duckbill.h      | 179 ++++++++++++++++++++++++++++++
- 8 files changed, 595 insertions(+)
+ 8 files changed, 597 insertions(+)
  create mode 100644 board/i2se/duckbill/Kconfig
  create mode 100644 board/i2se/duckbill/MAINTAINERS
  create mode 100644 board/i2se/duckbill/Makefile
@@ -471,10 +471,10 @@ index 0000000000..1db3c52c34
 +}
 diff --git a/configs/duckbill_defconfig b/configs/duckbill_defconfig
 new file mode 100644
-index 0000000000..f92a67d53d
+index 0000000000..5a8c561b4e
 --- /dev/null
 +++ b/configs/duckbill_defconfig
-@@ -0,0 +1,38 @@
+@@ -0,0 +1,40 @@
 +CONFIG_ARM=y
 +CONFIG_ARCH_MX28=y
 +CONFIG_SYS_TEXT_BASE=0x40002000
@@ -483,8 +483,9 @@ index 0000000000..f92a67d53d
 +CONFIG_SPL_LIBGENERIC_SUPPORT=y
 +CONFIG_TARGET_DUCKBILL=y
 +CONFIG_SPL_SERIAL_SUPPORT=y
-+CONFIG_SPL=y
 +CONFIG_NR_DRAM_BANKS=1
++CONFIG_SPL=y
++CONFIG_SPL_TEXT_BASE=0x00001000
 +CONFIG_BOOTDELAY=1
 +CONFIG_SYS_CONSOLE_IS_IN_ENV=y
 +CONFIG_VERSION_VARIABLE=y
@@ -508,6 +509,7 @@ index 0000000000..f92a67d53d
 +CONFIG_CMD_FS_GENERIC=y
 +CONFIG_DOS_PARTITION=y
 +CONFIG_ENV_IS_IN_MMC=y
++CONFIG_MXS_GPIO=y
 +CONFIG_MMC_MXS=y
 +CONFIG_MII=y
 +CONFIG_CONS_INDEX=0
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
