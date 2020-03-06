Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7D717C81D
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Mar 2020 23:09:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RD+/KtTdtidtR9iOBwLYdcAcQEQsMHff1pe4DQcuBxA=; b=R0M7cuMZH9Ikyf
	5wZBfM2cOzY1DcigdHMPWn0u7KJ4Kyyy2MUj4USQRCqO/rS/JP74JGMkQ8gBl2OAGWl9VyvR80msm
	b8oWfENHOwwGw4gu6t3Qjxg+vDYC0iICpLKViOyf2z7ayjLslaOIMoqyOE0J7wvfcWHOH31AqP/5W
	72aRoHHVz9dcWdzJQiSM9uHUEY7x+2bWDAmTqn5Lmlb5O8Ntm6639zjlmGlIUG11dSLsxDFqLRPXJ
	2TjaOb7bUEG9syI2LjDNGd0nOuqJa210250aQuslecuRNEAon98NLnMKU6MSyOnSn0ROTsVBQZjQa
	tfCPK+pug0m79yWMuSnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAL9T-0005Vm-AW; Fri, 06 Mar 2020 22:09:03 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAL9O-0005VR-7I
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 22:08:59 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jALAW-0000Kl-6y; Fri, 06 Mar 2020 22:10:08 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Date: Fri,  6 Mar 2020 14:08:51 -0800
Message-Id: <1583532531-30024-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_140858_606220_54A7DB32 
X-CRM114-Status: UNSURE (   5.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] kernel: fix lib-xor for ARM64
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

use LINUX_KARCH in directory path to avoid failures in non-arm targets.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 package/kernel/linux/modules/lib.mk | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/kernel/linux/modules/lib.mk b/package/kernel/linux/modules/lib.mk
index ea29d08..e14c6b3 100644
--- a/package/kernel/linux/modules/lib.mk
+++ b/package/kernel/linux/modules/lib.mk
@@ -187,10 +187,10 @@ define KernelPackage/lib-xor
   TITLE:=XOR blocks algorithm support
   HIDDEN:=1
   KCONFIG:=CONFIG_XOR_BLOCKS
-ifneq ($(wildcard $(LINUX_DIR)/arch/arm/lib/xor-neon.ko),)
+ifneq ($(wildcard $(LINUX_DIR)/arch/$(LINUX_KARCH)/lib/xor-neon.ko),)
   FILES:= \
     $(LINUX_DIR)/crypto/xor.ko \
-    $(LINUX_DIR)/arch/arm/lib/xor-neon.ko
+    $(LINUX_DIR)/arch/$(LINUX_KARCH)/lib/xor-neon.ko
   AUTOLOAD:=$(call AutoProbe,xor-neon xor)
 else
   FILES:=$(LINUX_DIR)/crypto/xor.ko
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
