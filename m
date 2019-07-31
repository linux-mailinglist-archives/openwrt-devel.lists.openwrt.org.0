Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0307D037
	for <lists+openwrt-devel@lfdr.de>; Wed, 31 Jul 2019 23:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MxvP9ihQlV6fdUFiObLnFQH/nM5cVhVQ/RDHqbH0Egg=; b=d1pUsYCrhxuXfL
	mFFljOt2/5hO6LzXzqN3GS2vw+nQ2rBlMIIeGR3IgSLPDV4n6ZZpjdcQy0gFndC0Mm1uuxe3E4ufK
	0g0S8EAPsw+4mpaAObGNaA50wquycE0Ck+D+VHzLQH4R34sBSHqMU+WXTqbY6c6pyHG+t1V8cSEVZ
	JzLuwmWG7nvSc8/CKWOxbnocqcKH+8m2AfW+Yq40KGwkHywpOUQTLEhcVrmz4E3vUAeTNx90LzmxS
	KQ/R90H6MyFCvmLET8XCQw5z+viXAryuvrtdo31JktgbI1ToukN1/RSAVv1mffmdpMNP7Q05fsfxs
	ipKSEO6NfWA/VsUZGO8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hswNY-0006z4-8F; Wed, 31 Jul 2019 21:43:24 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hswNJ-0006rD-1C
 for openwrt-devel@lists.openwrt.org; Wed, 31 Jul 2019 21:43:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1564609383;
 s=strato-dkim-0002; d=heimpold.de;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=gx0z9ls7S5Ag6zSfs4L6SUiDC6o9fhi+cDU/F1h6awA=;
 b=Mq9T5A6IADBKkf5d4J2p/dnOa8P+pJ1LE/q1wQAvxxJEM6UUrFbmAqw8QUkxdiZL0a
 O9I7X9u7PgZ7m/EPXlzxF0iuwvKPL+caq1MWI69Kp2wfJ3Wndhj+sMcNlyjF1Pz7miPj
 YvLx4KI24ao9f/6HXtUgEj4YKDJC/3P041xFNyybqrBD3wayPdOuBc/r6On2XltyebIm
 U8rbShyOs18OIjYPTr7r3W0+v5GnzA02NjvixcVphNIgkHszREGbK1Uva7EfNfY/435Y
 Mtdh2dWYw6u4TxER2/VqyxelMzA21PrcpPf+mKvrAKrO6IzjtG4diHmXNVvtKVjwncaO
 cS8g==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGTOWHr182H3hxptir9qBk="
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr
 by smtp.strato.de (RZmta 44.24 DYNA|AUTH)
 with ESMTPSA id m00609v6VLh03LP
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 31 Jul 2019 23:43:00 +0200 (CEST)
Received: from kerker.mhei.heimpold.itr (kerker.mhei.heimpold.itr
 [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id A2E5114A8EE;
 Wed, 31 Jul 2019 23:42:59 +0200 (CEST)
From: Michael Heimpold <mhei@heimpold.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 31 Jul 2019 23:42:45 +0200
Message-Id: <20190731214247.11683-1-mhei@heimpold.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_144309_671618_0E4285F3 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:3 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] uboot-mxs: bump to v2019.07
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
Cc: Michael Heimpold <mhei@heimpold.de>, wigyori@uid0.hu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Also update the U-Boot BSP patch for I2SE Duckbill devices.

Run tested on I2SE Duckbill and Olimex OLinuXino Maxi boards.

Signed-off-by: Michael Heimpold <mhei@heimpold.de>
---
 package/boot/uboot-mxs/Makefile                     |  4 ++--
 .../uboot-mxs/patches/001-add-i2se-duckbill.patch   | 13 +++++++------
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/package/boot/uboot-mxs/Makefile b/package/boot/uboot-mxs/Makefile
index c4485f5b3d..da98496895 100644
--- a/package/boot/uboot-mxs/Makefile
+++ b/package/boot/uboot-mxs/Makefile
@@ -8,10 +8,10 @@
 include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
-PKG_VERSION:=2019.01
+PKG_VERSION:=2019.07
 PKG_RELEASE:=1
 
-PKG_HASH:=50bd7e5a466ab828914d080d5f6a432345b500e8fba1ad3b7b61e95e60d51c22
+PKG_HASH:=bff4fa77e8da17521c030ca4c5b947a056c1b1be4d3e6ee8637020b8d50251d0
 
 include $(INCLUDE_DIR)/u-boot.mk
 include $(INCLUDE_DIR)/package.mk
diff --git a/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch b/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
index 9acb6a508d..e0ac283827 100644
--- a/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
+++ b/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
@@ -1,4 +1,4 @@
-From 6af0148a38b23ba761905f98a7211fab986033ce Mon Sep 17 00:00:00 2001
+From 85d7689cbd3a8162153f445a0656d57122c58d90 Mon Sep 17 00:00:00 2001
 From: Michael Heimpold <mhei@heimpold.de>
 Date: Thu, 13 Sep 2018 21:40:19 +0200
 Subject: [PATCH] arm: mxs: add support for I2SE's Duckbill boards
@@ -32,9 +32,9 @@ Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
  board/i2se/duckbill/Makefile    |  10 ++
  board/i2se/duckbill/duckbill.c  | 186 ++++++++++++++++++++++++++++++++
  board/i2se/duckbill/iomux.c     | 156 +++++++++++++++++++++++++++
- configs/duckbill_defconfig      |  38 +++++++
+ configs/duckbill_defconfig      |  39 +++++++
  include/configs/duckbill.h      | 179 ++++++++++++++++++++++++++++++
- 8 files changed, 595 insertions(+)
+ 8 files changed, 596 insertions(+)
  create mode 100644 board/i2se/duckbill/Kconfig
  create mode 100644 board/i2se/duckbill/MAINTAINERS
  create mode 100644 board/i2se/duckbill/Makefile
@@ -471,10 +471,10 @@ index 0000000000..1db3c52c34
 +}
 diff --git a/configs/duckbill_defconfig b/configs/duckbill_defconfig
 new file mode 100644
-index 0000000000..f92a67d53d
+index 0000000000..9dea20a87d
 --- /dev/null
 +++ b/configs/duckbill_defconfig
-@@ -0,0 +1,38 @@
+@@ -0,0 +1,39 @@
 +CONFIG_ARM=y
 +CONFIG_ARCH_MX28=y
 +CONFIG_SYS_TEXT_BASE=0x40002000
@@ -483,14 +483,15 @@ index 0000000000..f92a67d53d
 +CONFIG_SPL_LIBGENERIC_SUPPORT=y
 +CONFIG_TARGET_DUCKBILL=y
 +CONFIG_SPL_SERIAL_SUPPORT=y
-+CONFIG_SPL=y
 +CONFIG_NR_DRAM_BANKS=1
++CONFIG_SPL=y
 +CONFIG_BOOTDELAY=1
 +CONFIG_SYS_CONSOLE_IS_IN_ENV=y
 +CONFIG_VERSION_VARIABLE=y
 +# CONFIG_DISPLAY_BOARDINFO is not set
 +CONFIG_ARCH_MISC_INIT=y
 +# CONFIG_SPL_FRAMEWORK is not set
++CONFIG_SPL_TEXT_BASE=0x00001000
 +CONFIG_HUSH_PARSER=y
 +CONFIG_CMD_BOOTZ=y
 +# CONFIG_CMD_ELF is not set
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
