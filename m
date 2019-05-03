Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78FC513486
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 22:52:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kz0RnCf3SkhTElQiXyjhFrB8ZwN0Vlm45WYhkhXPAl4=; b=bg2AITOhtut6ex
	4a6yghgM7cmft8QExyz8t08IeCe4c7JsSIOpCl+ciD0Kk7JueQgFgqYXWycEioYgFHCLypn1DSX21
	3fMPo+Hs5gvdoPbJh2axit9NEpYtsX6niWZKYCPRdeszvgtOAUl5Ft7qCafWBUZvOsi7tfoSkhgxx
	nvskwemzpaoRuisZ/ZmHU7FiSYCHZ9g0oI7t408Di3xDCrmFXNbC4cqpBUrtfje36r7LIlMcJyjXo
	DB4cx2uEjc7ls6G8PX/wyep9KuNCX9v7XuiHumAtlxR6t5ZYjyX81sfqMx0CB7ieGcBRTcSlh2NSD
	qV/8jl22svG1K1G+zN5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfAq-0007bP-2G; Fri, 03 May 2019 20:52:52 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfAh-0007Xg-5X
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 20:52:45 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 190074BBC5;
 Fri,  3 May 2019 22:52:38 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id pFroNN6z6KB5; Fri,  3 May 2019 22:52:28 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 22:52:04 +0200
Message-Id: <20190503205207.7675-8-hauke@hauke-m.de>
In-Reply-To: <20190503205207.7675-1-hauke@hauke-m.de>
References: <20190503205207.7675-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_135243_769140_8D12C323 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 07/10] kernel: Deactivate CONFIG_BINFMT_MISC
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CONFIG_BINFMT_MISC allows it to add support for new executable formats
to the kernel from user space, the kernel will then detect for example a
java binary and call the java execution program automatically. I am not
aware that this feature is used in OpenWrt and this could be used to
exploit something. Deactivate it for all targets for now.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/gemini/config-4.14 | 1 -
 target/linux/gemini/config-4.19 | 1 -
 target/linux/omap/config-4.14   | 1 -
 target/linux/sunxi/config-4.14  | 1 -
 target/linux/sunxi/config-4.19  | 1 -
 target/linux/uml/config/x86_64  | 1 -
 target/linux/x86/config-4.14    | 1 -
 target/linux/x86/config-4.19    | 1 -
 8 files changed, 8 deletions(-)

diff --git a/target/linux/gemini/config-4.14 b/target/linux/gemini/config-4.14
index 9a7e9240e5..8dddf02018 100644
--- a/target/linux/gemini/config-4.14
+++ b/target/linux/gemini/config-4.14
@@ -44,7 +44,6 @@ CONFIG_ATA=y
 CONFIG_ATAGS=y
 CONFIG_ATA_VERBOSE_ERROR=y
 CONFIG_AUTO_ZRELADDR=y
-CONFIG_BINFMT_MISC=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_MQ_PCI=y
 CONFIG_BLK_SCSI_REQUEST=y
diff --git a/target/linux/gemini/config-4.19 b/target/linux/gemini/config-4.19
index d9b9cd7316..745bad67da 100644
--- a/target/linux/gemini/config-4.19
+++ b/target/linux/gemini/config-4.19
@@ -44,7 +44,6 @@ CONFIG_ATA=y
 CONFIG_ATAGS=y
 CONFIG_ATA_VERBOSE_ERROR=y
 CONFIG_AUTO_ZRELADDR=y
-CONFIG_BINFMT_MISC=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_MQ_PCI=y
 CONFIG_BLK_SCSI_REQUEST=y
diff --git a/target/linux/omap/config-4.14 b/target/linux/omap/config-4.14
index 795ff758e3..67a33d2b23 100644
--- a/target/linux/omap/config-4.14
+++ b/target/linux/omap/config-4.14
@@ -68,7 +68,6 @@ CONFIG_BACKLIGHT_LCD_SUPPORT=y
 # CONFIG_BACKLIGHT_PWM is not set
 # CONFIG_BACKLIGHT_TPS65217 is not set
 CONFIG_BCH=y
-CONFIG_BINFMT_MISC=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_RAM=y
 CONFIG_BLK_DEV_RAM_COUNT=16
diff --git a/target/linux/sunxi/config-4.14 b/target/linux/sunxi/config-4.14
index d7d9f60a6d..ab7dc9c9b8 100644
--- a/target/linux/sunxi/config-4.14
+++ b/target/linux/sunxi/config-4.14
@@ -65,7 +65,6 @@ CONFIG_AXP20X_POWER=y
 CONFIG_BACKLIGHT_CLASS_DEVICE=y
 CONFIG_BACKLIGHT_LCD_SUPPORT=y
 CONFIG_BACKLIGHT_PWM=y
-CONFIG_BINFMT_MISC=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_SCSI_REQUEST=y
diff --git a/target/linux/sunxi/config-4.19 b/target/linux/sunxi/config-4.19
index c684c04e17..ef5e1b28d3 100644
--- a/target/linux/sunxi/config-4.19
+++ b/target/linux/sunxi/config-4.19
@@ -73,7 +73,6 @@ CONFIG_AXP20X_POWER=y
 CONFIG_BACKLIGHT_CLASS_DEVICE=y
 CONFIG_BACKLIGHT_LCD_SUPPORT=y
 CONFIG_BACKLIGHT_PWM=y
-CONFIG_BINFMT_MISC=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_SCSI_REQUEST=y
diff --git a/target/linux/uml/config/x86_64 b/target/linux/uml/config/x86_64
index 22fc8fb7e0..7223edd8a2 100644
--- a/target/linux/uml/config/x86_64
+++ b/target/linux/uml/config/x86_64
@@ -10,7 +10,6 @@ CONFIG_ARCH_HAS_KCOV=y
 # CONFIG_ARCH_OPTIONAL_KERNEL_RWX is not set
 # CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
 # CONFIG_ARCH_REUSE_HOST_VSYSCALL_AREA is not set
-CONFIG_BINFMT_MISC=m
 CONFIG_BLK_DEV_COW_COMMON=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_UBD=y
diff --git a/target/linux/x86/config-4.14 b/target/linux/x86/config-4.14
index c31783eb8f..ae96e4d97a 100644
--- a/target/linux/x86/config-4.14
+++ b/target/linux/x86/config-4.14
@@ -54,7 +54,6 @@ CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
 CONFIG_ATA=y
 CONFIG_ATA_GENERIC=y
 CONFIG_ATA_PIIX=y
-CONFIG_BINFMT_MISC=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_MQ_PCI=y
diff --git a/target/linux/x86/config-4.19 b/target/linux/x86/config-4.19
index 80a94b24d3..d395876955 100644
--- a/target/linux/x86/config-4.19
+++ b/target/linux/x86/config-4.19
@@ -53,7 +53,6 @@ CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
 CONFIG_ATA=y
 CONFIG_ATA_GENERIC=y
 CONFIG_ATA_PIIX=y
-CONFIG_BINFMT_MISC=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_MQ_PCI=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
