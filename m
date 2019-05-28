Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2834D2CD87
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 19:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2C8C4JT64E6o4p7+a1NSNsggzLKxMQcpG0P8TwdSUQk=; b=J1K/LLUuw5kCgGZHtILh8NsrZR
	xzYOpqDCYVqVq7daG6BrgLOBHjDWDEYZh9d1nwEx8CvcHGmiwYeQvTzetKEXQwpjIhQczUjvJKKe+
	NnyMJKMAzuEey7XpnW+ehQyqW6fRs31Y/NyFdfTYdQUSurFud6NWZpnezxN7YKJkEQgGMxAb5wHdz
	9wRSvzCIyjzM9bINkuNBtoxjN2739NrQS7wAFSivUHg9nyi7VzDFZobibasly8NwyuxMLdFCP8jEE
	WzigLPtXPcOsKgPD8rPTTfJuhQSSNzXWD7Zj/EgeWga36CtgKjqpGISQz4nlP64S8Un0sAItvia2Z
	Dvzc9NkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfov-00019R-Q7; Tue, 28 May 2019 17:23:29 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfoJ-0000RQ-IJ
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 17:22:53 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,523,1549954800"; d="scan'208";a="32110481"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 May 2019 10:22:27 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by mx.microchip.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5;
 Tue, 28 May 2019 10:22:25 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 28 May 2019 10:21:10 -0700
Message-ID: <9877feaf4ff21cf563e31f35654ad13b474914eb.1559063196.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559063195.git.sandeep.sheriker@microchip.com>
References: <cover.1559063195.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_102251_656534_12D30B52 
X-CRM114-Status: UNSURE (   8.69  )
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
 1/7] at91:renaming subtraget legacy to sam9x
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

renaming subtraget legacy to sam9x for adding new sam9 soc's

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 package/boot/uboot-at91/Makefile                   | 4 ++--
 target/linux/at91/Makefile                         | 5 +++--
 target/linux/at91/image/Makefile                   | 4 ++--
 target/linux/at91/image/{legacy.mk => sam9x.mk}    | 1 -
 target/linux/at91/legacy/target.mk                 | 7 -------
 target/linux/at91/{legacy => sam9x}/config-default | 0
 target/linux/at91/sam9x/target.mk                  | 7 +++++++
 7 files changed, 14 insertions(+), 14 deletions(-)
 rename target/linux/at91/image/{legacy.mk => sam9x.mk} (99%)
 delete mode 100644 target/linux/at91/legacy/target.mk
 rename target/linux/at91/{legacy => sam9x}/config-default (100%)
 create mode 100644 target/linux/at91/sam9x/target.mk

diff --git a/package/boot/uboot-at91/Makefile b/package/boot/uboot-at91/Makefile
index 23bd2d2..a3262b5 100644
--- a/package/boot/uboot-at91/Makefile
+++ b/package/boot/uboot-at91/Makefile
@@ -26,13 +26,13 @@ endef
 
 define U-Boot/at91sam9m10g45ek_nandflash
   NAME:=AT91SAM9M10G45-EK board (NandFlash)
-  BUILD_SUBTARGET:=legacy
+  BUILD_SUBTARGET:=sam9x
   BUILD_DEVICES:=at91sam9m10g45ek
 endef
 
 define U-Boot/at91sam9x5ek_nandflash
   NAME:=AT91SAM9X5-EK board (NandFlash)
-  BUILD_SUBTARGET:=legacy
+  BUILD_SUBTARGET:=sam9x
   BUILD_DEVICES:=at91sam9g15ek at91sam9g25ek \
                  at91sam9g35ek at91sam9x25ek \
 				 at91sam9x35ek
diff --git a/target/linux/at91/Makefile b/target/linux/at91/Makefile
index 4dc70eb..6c1ba11 100644
--- a/target/linux/at91/Makefile
+++ b/target/linux/at91/Makefile
@@ -8,10 +8,11 @@ include $(TOPDIR)/rules.mk
 
 ARCH:=arm
 BOARD:=at91
-MAINTAINER:=Claudio Mignanti <c.mignanti@gmail.com>
+MAINTAINER:=Claudio Mignanti <c.mignanti@gmail.com> \
+   Sandeep Sheriker <sandeep.sheriker@gmail.com>
 BOARDNAME:=Microchip (Atmel AT91)
 FEATURES:=ext4 squashfs targz usb usbgadget ubifs
-SUBTARGETS:=sama5 legacy
+SUBTARGETS:=sama5 sam9x
 
 KERNEL_PATCHVER:=4.14
 
diff --git a/target/linux/at91/image/Makefile b/target/linux/at91/image/Makefile
index f4d942b..e4c17e3 100644
--- a/target/linux/at91/image/Makefile
+++ b/target/linux/at91/image/Makefile
@@ -13,8 +13,8 @@ define Build/at91-install-zImage
     $(CP) $(KDIR)/zImage $@
 endef
 
-ifeq ($(SUBTARGET),legacy)
-include ./legacy.mk
+ifeq ($(SUBTARGET),sam9x)
+include ./sam9x.mk
 endif
 ifeq ($(SUBTARGET),sama5)
 include ./sama5.mk
diff --git a/target/linux/at91/image/legacy.mk b/target/linux/at91/image/sam9x.mk
similarity index 99%
rename from target/linux/at91/image/legacy.mk
rename to target/linux/at91/image/sam9x.mk
index ae3c163..3aada4c 100644
--- a/target/linux/at91/image/legacy.mk
+++ b/target/linux/at91/image/sam9x.mk
@@ -130,4 +130,3 @@ define Device/wb45n
   MKUBIFS_OPTS := -m $$(PAGESIZE) -e 124KiB -c 955
 endef
 TARGET_DEVICES += wb45n
-
diff --git a/target/linux/at91/legacy/target.mk b/target/linux/at91/legacy/target.mk
deleted file mode 100644
index a3d99bb..0000000
--- a/target/linux/at91/legacy/target.mk
+++ /dev/null
@@ -1,7 +0,0 @@
-BOARDNAME:=Legacy (ARMv5)
-CPU_TYPE:=arm926ej-s
-
-define Target/Description
-	Build generic firmware for legacy Atmel AT91 platforms
-	using the ARMv5 instruction set.
-endef
diff --git a/target/linux/at91/legacy/config-default b/target/linux/at91/sam9x/config-default
similarity index 100%
rename from target/linux/at91/legacy/config-default
rename to target/linux/at91/sam9x/config-default
diff --git a/target/linux/at91/sam9x/target.mk b/target/linux/at91/sam9x/target.mk
new file mode 100644
index 0000000..f6da7c0
--- /dev/null
+++ b/target/linux/at91/sam9x/target.mk
@@ -0,0 +1,7 @@
+BOARDNAME:= SAM9X Boards (ARMv5)
+CPU_TYPE:=arm926ej-s
+
+define Target/Description
+	Build generic firmware for Microchip AT91 SAM9x platforms
+	using the ARMv5 instruction set.
+endef
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
