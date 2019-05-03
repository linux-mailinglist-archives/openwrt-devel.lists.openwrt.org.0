Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1281348C
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 22:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VplgU82JQtJTAtY8sYOt2OSvJBWv74Tb7tQe4V1qryA=; b=VwqhhsobJoZvqB
	JHZKMqX+Dt9fNYsM8DMya62F1pDKy0OYlxPVRqrKwm/wcXXesOg2Ksukvt5tuymSjYX3Qwco/doNO
	yP0hHsX5MgqEnBhxfTSMzxm/THQmzA6yjxujYELdCSgOgRz1YIz4GAe3Q5vkM60v+rilmyMN8umli
	XApGpr9kCz7vPDfVRLIO3i/bgmWKXrVGJ6gEkt38+DxNjVPS6YCP/+vZceSfBjSqP9q8zU9w2RFGK
	BElSozPHWuX+e9el51b61mGSnlhlf9T60yiSqw+2uU1zxp7WvjvcdcnIRRCQnLZIHizhYMWFIkleI
	YCQ+Yicj35kuaAgXuGpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfBU-0008US-6u; Fri, 03 May 2019 20:53:32 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfAh-0007Xd-4w
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 20:52:47 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 196BA4E6DC;
 Fri,  3 May 2019 22:52:37 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id Qva71_Q1Sbo5; Fri,  3 May 2019 22:52:27 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 22:51:59 +0200
Message-Id: <20190503205207.7675-3-hauke@hauke-m.de>
In-Reply-To: <20190503205207.7675-1-hauke@hauke-m.de>
References: <20190503205207.7675-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_135243_774132_E86B3F71 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 02/10] kernel: Activate
 CONFIG_ARM64_SW_TTBR0_PAN
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

This activates "Emulate Privileged Access Never using TTBR0_EL1
switching" on ARM64.

This should prevent the kernel from reading code from user space in
kernel context.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/armvirt/64/config-default        | 1 -
 target/linux/brcm2708/bcm2710/config-4.14     | 1 -
 target/linux/generic/config-4.14              | 1 +
 target/linux/generic/config-4.19              | 1 +
 target/linux/layerscape/armv8_64b/config-4.14 | 1 -
 target/linux/mediatek/mt7622/config-4.14      | 1 -
 target/linux/mvebu/cortexa53/config-default   | 1 -
 target/linux/mvebu/cortexa72/config-default   | 1 -
 target/linux/octeontx/config-4.14             | 1 -
 target/linux/sunxi/cortexa53/config-4.14      | 1 -
 target/linux/sunxi/cortexa53/config-4.19      | 1 -
 11 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/target/linux/armvirt/64/config-default b/target/linux/armvirt/64/config-default
index e5c05b3160..23d038cbb6 100644
--- a/target/linux/armvirt/64/config-default
+++ b/target/linux/armvirt/64/config-default
@@ -43,7 +43,6 @@ CONFIG_ARM64_PAN=y
 # CONFIG_ARM64_PTDUMP_DEBUGFS is not set
 # CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET is not set
 CONFIG_ARM64_SSBD=y
-# CONFIG_ARM64_SW_TTBR0_PAN is not set
 CONFIG_ARM64_UAO=y
 CONFIG_ARM64_VA_BITS=39
 CONFIG_ARM64_VA_BITS_39=y
diff --git a/target/linux/brcm2708/bcm2710/config-4.14 b/target/linux/brcm2708/bcm2710/config-4.14
index 9faf7f762a..00e3c0c2e5 100644
--- a/target/linux/brcm2708/bcm2710/config-4.14
+++ b/target/linux/brcm2708/bcm2710/config-4.14
@@ -60,7 +60,6 @@ CONFIG_ARM64_PAN=y
 # CONFIG_ARM64_PTDUMP_DEBUGFS is not set
 # CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET is not set
 CONFIG_ARM64_SSBD=y
-# CONFIG_ARM64_SW_TTBR0_PAN is not set
 CONFIG_ARM64_UAO=y
 CONFIG_ARM64_VA_BITS=39
 CONFIG_ARM64_VA_BITS_39=y
diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
index e607c6dc80..f9834b8cf8 100644
--- a/target/linux/generic/config-4.14
+++ b/target/linux/generic/config-4.14
@@ -285,6 +285,7 @@ CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=8
 # CONFIG_ARM64_ERRATUM_845719 is not set
 # CONFIG_ARM64_ERRATUM_858921 is not set
 # CONFIG_ARM64_RELOC_TEST is not set
+CONFIG_ARM64_SW_TTBR0_PAN=y
 # CONFIG_ARM_APPENDED_DTB is not set
 # CONFIG_ARM_ARCH_TIMER is not set
 # CONFIG_ARM_BIG_LITTLE_CPUFREQ is not set
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index 7e1528f517..dc392ebb56 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -296,6 +296,7 @@ CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=8
 # CONFIG_ARM64_ERRATUM_858921 is not set
 # CONFIG_ARM64_RAS_EXTN is not set
 # CONFIG_ARM64_RELOC_TEST is not set
+CONFIG_ARM64_SW_TTBR0_PAN=y
 # CONFIG_ARM_APPENDED_DTB is not set
 # CONFIG_ARM_ARCH_TIMER is not set
 # CONFIG_ARM_BIG_LITTLE_CPUFREQ is not set
diff --git a/target/linux/layerscape/armv8_64b/config-4.14 b/target/linux/layerscape/armv8_64b/config-4.14
index 782da4e3fb..b925c3c03e 100644
--- a/target/linux/layerscape/armv8_64b/config-4.14
+++ b/target/linux/layerscape/armv8_64b/config-4.14
@@ -65,7 +65,6 @@ CONFIG_ARM64_PAN=y
 # CONFIG_ARM64_PTDUMP_DEBUGFS is not set
 # CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET is not set
 CONFIG_ARM64_SSBD=y
-# CONFIG_ARM64_SW_TTBR0_PAN is not set
 CONFIG_ARM64_UAO=y
 CONFIG_ARM64_VA_BITS=48
 # CONFIG_ARM64_VA_BITS_39 is not set
diff --git a/target/linux/mediatek/mt7622/config-4.14 b/target/linux/mediatek/mt7622/config-4.14
index 86951e198a..58ab6642fc 100644
--- a/target/linux/mediatek/mt7622/config-4.14
+++ b/target/linux/mediatek/mt7622/config-4.14
@@ -53,7 +53,6 @@ CONFIG_ARM64_PAN=y
 # CONFIG_ARM64_PTDUMP_DEBUGFS is not set
 # CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET is not set
 CONFIG_ARM64_SSBD=y
-# CONFIG_ARM64_SW_TTBR0_PAN is not set
 CONFIG_ARM64_UAO=y
 CONFIG_ARM64_VA_BITS=39
 CONFIG_ARM64_VA_BITS_39=y
diff --git a/target/linux/mvebu/cortexa53/config-default b/target/linux/mvebu/cortexa53/config-default
index 674a294460..b0dd2ee39e 100644
--- a/target/linux/mvebu/cortexa53/config-default
+++ b/target/linux/mvebu/cortexa53/config-default
@@ -37,7 +37,6 @@ CONFIG_ARM64_PAGE_SHIFT=12
 # CONFIG_ARM64_PTDUMP_DEBUGFS is not set
 # CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET is not set
 CONFIG_ARM64_SSBD=y
-# CONFIG_ARM64_SW_TTBR0_PAN is not set
 # CONFIG_ARM64_UAO is not set
 CONFIG_ARM64_VA_BITS=39
 CONFIG_ARM64_VA_BITS_39=y
diff --git a/target/linux/mvebu/cortexa72/config-default b/target/linux/mvebu/cortexa72/config-default
index 61c3998bb1..8598471f4c 100644
--- a/target/linux/mvebu/cortexa72/config-default
+++ b/target/linux/mvebu/cortexa72/config-default
@@ -37,7 +37,6 @@ CONFIG_ARM64_PAGE_SHIFT=12
 # CONFIG_ARM64_PTDUMP_DEBUGFS is not set
 # CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET is not set
 CONFIG_ARM64_SSBD=y
-# CONFIG_ARM64_SW_TTBR0_PAN is not set
 # CONFIG_ARM64_UAO is not set
 CONFIG_ARM64_VA_BITS=39
 CONFIG_ARM64_VA_BITS_39=y
diff --git a/target/linux/octeontx/config-4.14 b/target/linux/octeontx/config-4.14
index 09d22d517f..8925ead14d 100644
--- a/target/linux/octeontx/config-4.14
+++ b/target/linux/octeontx/config-4.14
@@ -55,7 +55,6 @@ CONFIG_ARM64_PAN=y
 # CONFIG_ARM64_PTDUMP_DEBUGFS is not set
 # CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET is not set
 CONFIG_ARM64_SSBD=y
-# CONFIG_ARM64_SW_TTBR0_PAN is not set
 CONFIG_ARM64_UAO=y
 CONFIG_ARM64_VA_BITS=48
 # CONFIG_ARM64_VA_BITS_39 is not set
diff --git a/target/linux/sunxi/cortexa53/config-4.14 b/target/linux/sunxi/cortexa53/config-4.14
index b46c4aa414..adb71fca7e 100644
--- a/target/linux/sunxi/cortexa53/config-4.14
+++ b/target/linux/sunxi/cortexa53/config-4.14
@@ -35,7 +35,6 @@ CONFIG_ARM64_PAGE_SHIFT=12
 # CONFIG_ARM64_PTDUMP_DEBUGFS is not set
 # CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET is not set
 CONFIG_ARM64_SSBD=y
-# CONFIG_ARM64_SW_TTBR0_PAN is not set
 # CONFIG_ARM64_UAO is not set
 CONFIG_ARM64_VA_BITS=39
 CONFIG_ARM64_VA_BITS_39=y
diff --git a/target/linux/sunxi/cortexa53/config-4.19 b/target/linux/sunxi/cortexa53/config-4.19
index a35c84b905..2f79acdbc8 100644
--- a/target/linux/sunxi/cortexa53/config-4.19
+++ b/target/linux/sunxi/cortexa53/config-4.19
@@ -37,7 +37,6 @@ CONFIG_ARM64_PA_BITS_48=y
 # CONFIG_ARM64_PTDUMP_DEBUGFS is not set
 # CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET is not set
 CONFIG_ARM64_SSBD=y
-# CONFIG_ARM64_SW_TTBR0_PAN is not set
 # CONFIG_ARM64_UAO is not set
 CONFIG_ARM64_VA_BITS=39
 CONFIG_ARM64_VA_BITS_39=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
