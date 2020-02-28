Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415DB173DBB
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 17:57:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Dn9Nqe89Sy4Aeavah2JLIV5TmpkE2YKxdNOExJdqes=; b=mQsN6/Zk0YpjHG
	H+BTi98PsQk+F31SUnJfBmfpime/uDZPctEz84OJOyCOJzZaOENR4YCe8rd9VNDwzKNmcg88C64K1
	X74LgOIjW7y2kcQGPyZmEqM28JjbT+BsbP23PI6cbxkguWm9QW8pQfbKcctdzGsn8ADrMILwspURD
	+VBoVl+4gBRrkyDTAQd1jSem35vW68eBQfKMUoLVLIyVxSXnyyhW9IJEnxEfNvhuiN+ul3ALE2og/
	SPdVEausHJ+9s68L7arjCMxlMEWJcnwPoDGCe+FVld/7SbphBooS6gApQK/8d94dpVwsERk5zrdbL
	cL+R/U13GlYHtyw1vc9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7iwd-0005Vk-Iz; Fri, 28 Feb 2020 16:56:59 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7iwX-0005VM-0D
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 16:56:54 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1j7ixU-0004yb-IR; Fri, 28 Feb 2020 16:57:52 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 28 Feb 2020 08:56:44 -0800
Message-Id: <1582909004-2383-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_085653_083329_15AD891C 
X-CRM114-Status: UNSURE (   4.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] kernel: can: add MCP251x CAN controller
 module support
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

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 package/kernel/linux/modules/can.mk | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/package/kernel/linux/modules/can.mk b/package/kernel/linux/modules/can.mk
index c2c7411..3bf0359 100644
--- a/package/kernel/linux/modules/can.mk
+++ b/package/kernel/linux/modules/can.mk
@@ -146,6 +146,23 @@ endef
 $(eval $(call KernelPackage,can-gw))
 
 
+define KernelPackage/can-mcp251x
+  TITLE:=MCP251x SPI CAN controller
+  KCONFIG:=\
+	CONFIG_SPI=y \
+	CONFIG_CAN_MCP251X
+  FILES:=$(LINUX_DIR)/drivers/net/can/spi/mcp251x.ko
+  AUTOLOAD:=$(call AutoProbe,can-mcp251x)
+  $(call AddDepends/can)
+endef
+
+define KernelPackage/can-mcp251x/description
+ Microchip MCP251x SPI CAN controller
+endef
+
+$(eval $(call KernelPackage,can-mcp251x))
+
+
 define KernelPackage/can-raw
   TITLE:=Raw CAN Protcol
   KCONFIG:=CONFIG_CAN_RAW
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
