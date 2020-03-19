Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A31018AB2B
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Mar 2020 04:28:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iu0kCzsHYtoXAwCl+526jbLMt2tda9eNuZRNRxeIvlw=; b=M/xtaH6Uj4JHgD18zTh1Y4B60q
	kOvG69i8kqRvAEWa/pQ1m42yGrMX4Rkhim+I/kstSIsXJMgR7u7ukBwnhZU/YBb2a9f2CbHg3BWEs
	Tl0hMod/wHYkFdpKJDezer0aZdQS+jf8xmhO3qjD5ki3Vh1SPdi+4yJzGwl17MLZrPVxW4kubDmf0
	s3TwSyQYSyq9wCWkxzqdwQN2JA81bmT8aun6l1FdlgrRfUZ8hnviTV6+9unP/e7S5NOGpM+FeqxnE
	w3NPe0otwT+mxoHuh4y2OMtbTcv5PjSVWuf3pFCXDH7mTci0+pSYex4Tgxa+fyjqr7LQUTNI6J5TP
	5M8gjf2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jElr1-0000VA-7o; Thu, 19 Mar 2020 03:28:19 +0000
Received: from mta01.start.ca ([162.250.196.97])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jElqL-0008EW-7I
 for openwrt-devel@lists.openwrt.org; Thu, 19 Mar 2020 03:27:38 +0000
Received: from mta01.start.ca (localhost [127.0.0.1])
 by mta01.start.ca (Postfix) with ESMTP id 8262442828
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Mar 2020 23:27:27 -0400 (EDT)
Received: from localhost (dhcp-24-53-240-163.cable.user.start.ca
 [24.53.240.163])
 by mta01.start.ca (Postfix) with ESMTPS id 529714281F
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Mar 2020 23:27:27 -0400 (EDT)
From: Nick Bowler <nbowler@draconx.ca>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 23:27:11 -0400
Message-Id: <20200319032712.31676-3-nbowler@draconx.ca>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200319032712.31676-1-nbowler@draconx.ca>
References: <20200319032712.31676-1-nbowler@draconx.ca>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_202737_330065_28B37D3B 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/3] kernel: package f71808e-wdt driver
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

This driver enables support for the watchdog timers found in many
Fintek Super-IO chips.

Signed-off-by: Nick Bowler <nbowler@draconx.ca>
---
 package/kernel/linux/modules/other.mk | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/package/kernel/linux/modules/other.mk b/package/kernel/linux/modules/other.mk
index 16b438461e..75dab4c78c 100644
--- a/package/kernel/linux/modules/other.mk
+++ b/package/kernel/linux/modules/other.mk
@@ -1195,3 +1195,18 @@ define KernelPackage/it87-wdt/description
 endef
 
 $(eval $(call KernelPackage,it87-wdt))
+
+
+define KernelPackage/f71808e-wdt
+  SUBMENU:=$(OTHER_MENU)
+  TITLE:=Fintek F718xx/F818xx Watchdog Timer
+  KCONFIG:=CONFIG_F71808E_WDT
+  FILES:=$(LINUX_DIR)/drivers/$(WATCHDOG_DIR)/f71808e_wdt.ko
+  AUTOLOAD:=$(call AutoProbe,f71808e-wdt,1)
+endef
+
+define KernelPackage/f71808e-wdt/description
+  Kernel module for the watchdog timer found on many Fintek Super-IO chips.
+endef
+
+$(eval $(call KernelPackage,f71808e-wdt))
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
