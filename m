Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D891C36E3
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 12:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dxlwmpqr8xSe4SbmQmjcIehAukGwRSpXZ3FQTDwYJNw=; b=kUXYJJWYJ1iTJz
	hb1QN/S7fqXsPG5scqZiH2Uwh/lJuY4+VyoPmGQxCF0BZjFt0ZmfnkPb6cpQKMLZa35a1SSbprUzN
	Ho4z/nB/iTUGhPdGB1i8+e4Tu3FgYBqbCR3Aj1FW7sE8TWrPleyAN6tJ0ArY5Rba3swszjmp4BZ8f
	IP/UlBHv3AeLLZew/4kek+Lfcx5b1oEhTU0huPM/TTsCJBP33zoCBbO9JGPk1t20pVeSdZC8akXUh
	fIpZKSjJALaI7ivkIn+zQCVGy7I/ZIWObqJVuUDXfW3jbTNPZVcrzZoIIHjdDKDA/bYDubhgvipkp
	LUXsySCNOUIe/6T9AS1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVYJV-0004Ri-RX; Mon, 04 May 2020 10:27:05 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVYJO-0004ER-Hh
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 10:27:00 +0000
Received: from feckert.dev.tdt.de (unknown [10.2.3.40])
 by mail.dev.tdt.de (Postfix) with ESMTPSA id 22D2720B52;
 Mon,  4 May 2020 10:26:41 +0000 (UTC)
From: Florian Eckert <fe@dev.tdt.de>
To: Eckert.Florian@googlemail.com,
	john@phrozen.org
Date: Mon,  4 May 2020 12:26:29 +0200
Message-Id: <20200504102629.18746-1-fe@dev.tdt.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_032658_747126_A2F19CD1 
X-CRM114-Status: UNSURE (   5.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: [OpenWrt-Devel] [PATCH] kernel: add kmod-ledtrig-mtd as a kernel
 module
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
Cc: openwrt-devel@lists.openwrt.org, Florian Eckert <fe@dev.tdt.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Not every target needs this LED trigger. Therefore this trigger can be
installed as kernel module.

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---

This is a followup patch form the discussion:
https://patchwork.ozlabs.org/project/openwrt/patch/20181129132538.20179-3-fe@dev.tdt.de/#2043062

 package/kernel/linux/modules/leds.mk | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/package/kernel/linux/modules/leds.mk b/package/kernel/linux/modules/leds.mk
index 59ea6edbcd..fa9756ff39 100644
--- a/package/kernel/linux/modules/leds.mk
+++ b/package/kernel/linux/modules/leds.mk
@@ -131,6 +131,21 @@ endef
 $(eval $(call KernelPackage,ledtrig-oneshot))
 
 
+define KernelPackage/ledtrig-mtd
+  SUBMENU:=$(LEDS_MENU)
+  TITLE:=LED MTD (NAND/NOR) Trigger
+  KCONFIG:=CONFIG_LEDS_TRIGGER_MTD
+  FILES:=$(LED_TRIGGER_DIR)/ledtrig-mtd.ko
+  AUTOLOAD:=$(call AutoLoad,50,ledtrig-mtd)
+endef
+
+define KernelPackage/ledtrig-mtd/description
+ Kernel module that allows LEDs to be controlled by MTD activity.
+endef
+
+$(eval $(call KernelPackage,ledtrig-mtd))
+
+
 define KernelPackage/leds-pca963x
   SUBMENU:=$(LEDS_MENU)
   TITLE:=PCA963x LED support
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
