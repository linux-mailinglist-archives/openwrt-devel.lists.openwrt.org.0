Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DD0191EC7
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 03:01:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3ipw9GhK1INqEz3VIeKRZTwkiIM5TbkTgYhbulYH24=; b=N+tka0hDHlrj3f
	MYqBWl7io1CvwY8zJ1j4qRAbSnpE0PF8jny/BqUWHGS2nwibQJXW3gQAF+JOaZ5TK4vCcsl3iOsxf
	4selJRCaU+XxImt8gSAoRVMZwi8PH3faovbHGEc0JweFqGDLK4voIqL8rPEhMxVR6S0gyE0IbyZq2
	L1IskNP+SWExQqJz7VzfpKRF8ZJdnx1lqAWGPNyj4x+1Tt+16jSUKQ+3xeSy+FFkGZh6qLg0DQMcF
	qP2uOcSjDnengAvkiT7wpjqyTRalo8I6mETO/D7hnIR/msTigifgSkxFhX8wJn/oJr6v8SrFHBfB0
	q1iyB+IdasQcH1VyB17A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGvM8-0001FI-6o; Wed, 25 Mar 2020 02:01:20 +0000
Received: from mta01.start.ca ([162.250.196.97])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGvLa-0000ox-EJ
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 02:00:47 +0000
Received: from mta01.start.ca (localhost [127.0.0.1])
 by mta01.start.ca (Postfix) with ESMTP id 303CC427AF;
 Tue, 24 Mar 2020 22:00:38 -0400 (EDT)
Received: from localhost (dhcp-24-53-240-163.cable.user.start.ca
 [24.53.240.163])
 by mta01.start.ca (Postfix) with ESMTPS id 024B8425DD;
 Tue, 24 Mar 2020 22:00:37 -0400 (EDT)
From: Nick Bowler <nbowler@draconx.ca>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Mar 2020 22:00:29 -0400
Message-Id: <20200325020030.19933-3-nbowler@draconx.ca>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200325020030.19933-1-nbowler@draconx.ca>
References: <20200325020030.19933-1-nbowler@draconx.ca>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_190046_538030_8393EA41 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 2/3] kernel: package f71808e-wdt driver
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
Cc: Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This driver enables support for the watchdog timers found in many
Fintek Super-IO chips.

Signed-off-by: Nick Bowler <nbowler@draconx.ca>
---
 v2: Added @TARGET_x86 dependency

 package/kernel/linux/modules/other.mk | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/package/kernel/linux/modules/other.mk b/package/kernel/linux/modules/other.mk
index f1a70bf069..1f13cb7aa7 100644
--- a/package/kernel/linux/modules/other.mk
+++ b/package/kernel/linux/modules/other.mk
@@ -1228,3 +1228,19 @@ define KernelPackage/it87-wdt/description
 endef
 
 $(eval $(call KernelPackage,it87-wdt))
+
+
+define KernelPackage/f71808e-wdt
+  SUBMENU:=$(OTHER_MENU)
+  TITLE:=Fintek F718xx/F818xx Watchdog Timer
+  DEPENDS:=@TARGET_x86
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
