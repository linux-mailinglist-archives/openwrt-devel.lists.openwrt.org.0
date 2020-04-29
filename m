Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1131BDFA2
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Apr 2020 15:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AyigfhMw0ORtK2aV45ui+gHOLjvehjQl+uVMN1ITt0o=; b=IQNGqjtL2KQx7D
	de7YEjP8PJ2BP0LCU0DYAzLfANMyfHZDwEDmTl5WSrjcNyDZADpaX+fZKJkACjrEVf4QRaBlTDCaJ
	RN02gqZTOaPZBxnRef7fJib3IZ9Xmrbu+ZDCxpw1MfTm0sjtXJdIa7MXXnFknVu1a2R21R9pGdYqI
	LqTYmOoAy+migN3mFeURDOcuoew04mEDpihAtLxj0Ln1AfQOW+Vz0QkbA4xDF3+9va3rKEUz9vzVS
	Pn+L6XSBHO+tTaOeBrOcuccdi8jtjxXi6ZkTBViZh5jT9JfJVrWfNSxF4yUlFZ4/OY6o1aiFNRvUf
	KKChtNwmdS6aTvFHdpsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnAf-0005FP-G6; Wed, 29 Apr 2020 13:54:41 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnAW-0005Dr-FP
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 13:54:34 +0000
Received: from feckert.dev.tdt.de (unknown [10.2.3.40])
 by mail.dev.tdt.de (Postfix) with ESMTPSA id 74CA420777;
 Wed, 29 Apr 2020 13:54:17 +0000 (UTC)
From: Florian Eckert <fe@dev.tdt.de>
To: Eckert.Florian@googlemail.com, nbd@nbd.name, philipp@redfish-solutions.com
Date: Wed, 29 Apr 2020 15:54:06 +0200
Message-Id: <20200429135406.30705-1-fe@dev.tdt.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_065432_675056_C0AB0067 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: [OpenWrt-Devel] [PATCH] kernel: add gpio-it87
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

Since commit 910df3f06cc902ca2cb0ca8e963e9354c930df1a we have build in
on all X86/64 platforms the gpio-it87 driver.

Since this change I am getting the following error message on boot.
 > kern.err kernel: [    1.009416] gpio_it87: no device

I do not have this device on my system. To prevent the nonsensical
message and the loading of the module I have added this as a package, so
that it can be installed later or during image building.

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
 package/kernel/linux/modules/other.mk | 18 ++++++++++++++++++
 target/linux/x86/64/config-4.19       |  2 +-
 target/linux/x86/64/config-5.4        |  2 +-
 3 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/package/kernel/linux/modules/other.mk b/package/kernel/linux/modules/other.mk
index 43709228f9..a3fb0577f5 100644
--- a/package/kernel/linux/modules/other.mk
+++ b/package/kernel/linux/modules/other.mk
@@ -295,6 +295,24 @@ endef
 $(eval $(call KernelPackage,gpio-pcf857x))
 
 
+define KernelPackage/gpio-it87
+  SUBMENU:=$(OTHER_MENU)
+  DEPENDS:=@GPIO_SUPPORT @TARGET_x86
+  TITLE:=GPIO support for IT87xx Super I/O chips
+  KCONFIG:=CONFIG_GPIO_IT87
+  FILES:=$(LINUX_DIR)/drivers/gpio/gpio-it87.ko
+  AUTOLOAD:=$(call AutoLoad,25,gpio-it87,1)
+endef
+
+define KernelPackage/gpio-it87/description
+  This driver is tested with ITE IT8728 and IT8732 Super I/O chips, and
+  supports the IT8761E, IT8613, IT8620E, and IT8628E Super I/O chips as
+  well.
+endef
+
+$(eval $(call KernelPackage,gpio-it87))
+
+
 define KernelPackage/ppdev
   SUBMENU:=$(OTHER_MENU)
   TITLE:=Parallel port support
diff --git a/target/linux/x86/64/config-4.19 b/target/linux/x86/64/config-4.19
index 00ed09a4a6..eafae899dd 100644
--- a/target/linux/x86/64/config-4.19
+++ b/target/linux/x86/64/config-4.19
@@ -218,7 +218,7 @@ CONFIG_GPIOLIB=y
 CONFIG_GPIOLIB_IRQCHIP=y
 CONFIG_GPIO_ACPI=y
 CONFIG_GPIO_ICH=y
-CONFIG_GPIO_IT87=y
+# CONFIG_GPIO_IT87 is not set
 CONFIG_GPIO_LYNXPOINT=y
 CONFIG_GPIO_SCH=y
 CONFIG_GPIO_SYSFS=y
diff --git a/target/linux/x86/64/config-5.4 b/target/linux/x86/64/config-5.4
index 899668f77e..2a58983957 100644
--- a/target/linux/x86/64/config-5.4
+++ b/target/linux/x86/64/config-5.4
@@ -199,7 +199,7 @@ CONFIG_GPIOLIB=y
 CONFIG_GPIOLIB_IRQCHIP=y
 CONFIG_GPIO_ACPI=y
 CONFIG_GPIO_ICH=y
-CONFIG_GPIO_IT87=y
+# CONFIG_GPIO_IT87 is not set
 CONFIG_GPIO_LYNXPOINT=y
 CONFIG_GPIO_SCH=y
 CONFIG_GPIO_SYSFS=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
