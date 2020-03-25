Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A6A191EC8
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 03:01:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwhsZ0vjSvodml2VOoVm+ZKK67MqaVA9jL/j5Ur8fjM=; b=UK9VqY215y49zG
	NWkSqQTIrURUFKulPkHsvqPpoWsFOs/R42Utyz9ObB93adTJTNmVWV786jIA69RNHv3nKe3aWjnNz
	pOdLrKr8MnmJWOh0YTi9vMtcvjXaMShxg7J2/4tbnvaQa/ZCeOTdcZ+ma82Lkwx45mPny9N9e7Rmd
	1T6SO9jHRC+y2tk9vlgfVFviKPG37eL6QPG4Knt0B2ZtWzxfa9T5ONTz5xN9sTD6CGCjv0tNs93jo
	v48j9xedKbuRXMud4FIwfFTU3UT/t/y7KfaTqZPrbYdJOyk5REkv69pQo7sl2nccaoXGujzlByc4E
	4qedODc8/0NQckAe0bfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGvMK-0001Uh-FA; Wed, 25 Mar 2020 02:01:32 +0000
Received: from mta01.start.ca ([162.250.196.97])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGvLa-0000oy-ER
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 02:00:48 +0000
Received: from mta01.start.ca (localhost [127.0.0.1])
 by mta01.start.ca (Postfix) with ESMTP id 90D38427B4;
 Tue, 24 Mar 2020 22:00:38 -0400 (EDT)
Received: from localhost (dhcp-24-53-240-163.cable.user.start.ca
 [24.53.240.163])
 by mta01.start.ca (Postfix) with ESMTPS id 5E539425DD;
 Tue, 24 Mar 2020 22:00:38 -0400 (EDT)
From: Nick Bowler <nbowler@draconx.ca>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Mar 2020 22:00:30 -0400
Message-Id: <20200325020030.19933-4-nbowler@draconx.ca>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200325020030.19933-1-nbowler@draconx.ca>
References: <20200325020030.19933-1-nbowler@draconx.ca>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_190046_545890_B145C1F3 
X-CRM114-Status: UNSURE (   6.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 3/3] kernel: package gpio-f7188x driver
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

This driver enables support for the GPIO capabilities found in many
Fintek Super-IO chips.

Signed-off-by: Nick Bowler <nbowler@draconx.ca>
---
 v2: Added @TARGET_x86 dependency

 package/kernel/linux/modules/other.mk | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/package/kernel/linux/modules/other.mk b/package/kernel/linux/modules/other.mk
index 1f13cb7aa7..43709228f9 100644
--- a/package/kernel/linux/modules/other.mk
+++ b/package/kernel/linux/modules/other.mk
@@ -214,6 +214,22 @@ endef
 $(eval $(call KernelPackage,gpio-dev))
 
 
+define KernelPackage/gpio-f7188x
+  SUBMENU:=$(OTHER_MENU)
+  TITLE:=Fintek F718xx/F818xx GPIO Support
+  DEPENDS:=@GPIO_SUPPORT @TARGET_x86
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
