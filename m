Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC23F18AB28
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Mar 2020 04:28:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xVhQNSBdImH3Cm28LJb+vC5YEGdsAyR9LXVJGwpY79g=; b=ZFjDrH3WnzFOJCOEfXLBP25vlA
	Gwoy41jNOKvVNOgvkDmX9pCeWYRWMOm8YWbZo+5YKC3rXVNVbuZRW1tV/+xT0/SVW4tVxkKByM/PR
	a4c1Oc9gUzrJRieW8YIOBfJqP49c6mSK4ImV+azCfQGFYrVG7HusQYWiUvABWxo0EKVqw7MBTatvL
	ojZCQUZ25zwQudEi9ToowKPvs8unU2mxNfi31iNbO4ksaVF6mU3sAK2DNSJaNRq/VHo/URS7bzr/W
	edV+Ye2Hi5cdnyPNtMiP3a3bnNLASQviODhJ9q3NVmBVzpZr8w6X1kKIpfIgo0c351ta1bkqFgso/
	EM/A32yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jElqd-0008Oj-W5; Thu, 19 Mar 2020 03:27:56 +0000
Received: from mta01.start.ca ([162.250.196.97])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jElqJ-0008Dn-KP
 for openwrt-devel@lists.openwrt.org; Thu, 19 Mar 2020 03:27:37 +0000
Received: from mta01.start.ca (localhost [127.0.0.1])
 by mta01.start.ca (Postfix) with ESMTP id 2887142827
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Mar 2020 23:27:27 -0400 (EDT)
Received: from localhost (dhcp-24-53-240-163.cable.user.start.ca
 [24.53.240.163])
 by mta01.start.ca (Postfix) with ESMTPS id F1B624281F
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Mar 2020 23:27:26 -0400 (EDT)
From: Nick Bowler <nbowler@draconx.ca>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Mar 2020 23:27:10 -0400
Message-Id: <20200319032712.31676-2-nbowler@draconx.ca>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200319032712.31676-1-nbowler@draconx.ca>
References: <20200319032712.31676-1-nbowler@draconx.ca>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_202735_737485_7F91C336 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/3] kernel: package f71882fg hwmon driver
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

This driver enables hardware monitoring support using the sensors
found in many Fintek Super-IO chips.

Signed-off-by: Nick Bowler <nbowler@draconx.ca>
---
 package/kernel/linux/modules/hwmon.mk | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/package/kernel/linux/modules/hwmon.mk b/package/kernel/linux/modules/hwmon.mk
index e79304b4fe..c5aa7970ca 100644
--- a/package/kernel/linux/modules/hwmon.mk
+++ b/package/kernel/linux/modules/hwmon.mk
@@ -92,6 +92,21 @@ endef
 $(eval $(call KernelPackage,hwmon-gpiofan))
 
 
+define KernelPackage/hwmon-f71882fg
+  TITLE:=F71882FG compatible monitoring support
+  KCONFIG:=CONFIG_SENSORS_F71882FG
+  FILES:=$(LINUX_DIR)/drivers/hwmon/f71882fg.ko
+  AUTOLOAD:=$(call AutoProbe,f71882fg)
+  $(call AddDepends/hwmon,)
+endef
+
+define KernelPackage/hwmon-f71882fg/description
+ Kernel module for hardware monitoring via many Fintek Super-IO chips.
+endef
+
+$(eval $(call KernelPackage,hwmon-f71882fg))
+
+
 define KernelPackage/hwmon-ina209
   TITLE:=INA209 monitoring support
   KCONFIG:=CONFIG_SENSORS_INA209
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
