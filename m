Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEC118AB29
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Mar 2020 04:28:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BntZnFVYGOZDH17bTJEUbMb4b7pDtL76kBu98ttLmrM=; b=YJSqLo7WkMykqaSz+BB18gLw0k
	neClTKMoJqL2hK7Lje1YzcGoxmzh2rnyzpShHuFeTr3czfqcIk2SBLEVn0RdkAiG2oVZgZHKcTQUU
	WP69nHxCsr6rYuhohpCkMhk5QruCGL3uZDHGjx7evpTM1A6K5tQEO81Uv+qUcG/IFdor4HrlN9gMo
	dI9Aas+3Dx6QsNZqSqSCz8InAxbDD+Cyc73HtbmtWsd3LrYWP9JYSS5wqsEYVFhzT2q8z5meiBEIJ
	I7787WzazOOfLeJE6HNI8DuHaHW6h513qEp3+ry9yvcoAkV5gPm+kRKpLTMUl8vgnmN00CjFuk1zS
	kZnw9uow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jElqQ-0008F4-Nt; Thu, 19 Mar 2020 03:27:42 +0000
Received: from mta01.start.ca ([162.250.196.97])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jElqJ-0008Dq-KD
 for openwrt-devel@lists.openwrt.org; Thu, 19 Mar 2020 03:27:36 +0000
Received: from mta01.start.ca (localhost [127.0.0.1])
 by mta01.start.ca (Postfix) with ESMTP id D74BA4283C
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Mar 2020 23:27:27 -0400 (EDT)
Received: from localhost (dhcp-24-53-240-163.cable.user.start.ca
 [24.53.240.163])
 by mta01.start.ca (Postfix) with ESMTPS id A82654281F
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Mar 2020 23:27:27 -0400 (EDT)
From: Nick Bowler <nbowler@draconx.ca>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 23:27:12 -0400
Message-Id: <20200319032712.31676-4-nbowler@draconx.ca>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200319032712.31676-1-nbowler@draconx.ca>
References: <20200319032712.31676-1-nbowler@draconx.ca>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_202735_737142_E2C0E638 
X-CRM114-Status: UNSURE (   6.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/3] kernel: package gpio-f7188x driver
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

This driver enables support for the GPIO capabilities found in many
Fintek Super-IO chips.

Signed-off-by: Nick Bowler <nbowler@draconx.ca>
---
 package/kernel/linux/modules/other.mk | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/package/kernel/linux/modules/other.mk b/package/kernel/linux/modules/other.mk
index 75dab4c78c..8c690daf61 100644
--- a/package/kernel/linux/modules/other.mk
+++ b/package/kernel/linux/modules/other.mk
@@ -216,6 +216,22 @@ endef
 $(eval $(call KernelPackage,gpio-dev))
 
 
+define KernelPackage/gpio-f7188x
+  SUBMENU:=$(OTHER_MENU)
+  DEPENDS:=@GPIO_SUPPORT
+  TITLE:=Fintek F718xx/F818xx GPIO Support
+  KCONFIG:=CONFIG_GPIO_F7188X
+  FILES:=$(LINUX_DIR)/drivers/gpio/gpio-f7188x.ko
+  AUTOLOAD:=$(call AutoProbe,gpio-f7188x)
+endef
+
+define KernelPackage/gpio-f7188x/description
+  Kernel module for the GPIOs found on many Fintek Super-IO chips.
+endef
+
+$(eval $(call KernelPackage,gpio-f7188x))
+
+
 define KernelPackage/gpio-mcp23s08
   SUBMENU:=$(OTHER_MENU)
   TITLE:=Microchip MCP23xxx I/O expander
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
