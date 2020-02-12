Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5296215AC19
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 16:38:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8rFB6itgTzdz2RCgk7k3uf2lJ0djN5R8vRBk/qlNX6k=; b=MZuCDQImlAiQw1
	EqPYi9R0uz3QJ+eEzHigEBnUWGuvQ0mtRzoI+MfzQJMrljpHkZ7seNcUsn4Yn0EYOgPzzihiJTrBC
	yZyjDKFsFZDpONFls0B/oneLrrlYchHW04/aoaspYWCZ0H1d6ElNikYGt4S3l3wTzKYXLz/M6MJFc
	WY62YPOgFkZ2JWAm3M37cq7ijgmD9vIpTMFRsoxLetPNMHKwLf3oEyu77AhG19IG6dC4nmTyngKnF
	85HdBG5A9ewsesRAIk21aXfzPNdw40t8kqYsx6Xtbcg3gvVjxdKgC93dgUztk/L8wuhy7EZ/3gKIw
	oRJ870VaVI1k/iYayANQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1u5c-0003Ko-LX; Wed, 12 Feb 2020 15:38:12 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1u5S-0003JH-Ae
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 15:38:07 +0000
Received: from localhost.localdomain (unknown [46.183.103.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 49D871F0CD
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Feb 2020 16:37:57 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 12 Feb 2020 16:37:01 +0100
Message-Id: <20200212153702.11977-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_073802_659314_8DA44401 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] ath79: backport phy reset-controller
 patches
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

The Siemens WS-AP3610 asserts reset to the ethernet PHY with the
reset-register. Backport the necessary patches to de-assert reset
when probing the PHY.

These patches can be dropped when using kernel 5.4.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 ...net-phy-add-reset-controller-support.patch | 107 ++++++++++++++++++
 ...us-dont-use-managed-reset-controller.patch |  44 +++++++
 2 files changed, 151 insertions(+)
 create mode 100644 target/linux/ath79/patches-4.19/700-net-phy-add-reset-controller-support.patch
 create mode 100644 target/linux/ath79/patches-4.19/701-mdio-bus-dont-use-managed-reset-controller.patch

diff --git a/target/linux/ath79/patches-4.19/700-net-phy-add-reset-controller-support.patch b/target/linux/ath79/patches-4.19/700-net-phy-add-reset-controller-support.patch
new file mode 100644
index 0000000000..9f96390911
--- /dev/null
+++ b/target/linux/ath79/patches-4.19/700-net-phy-add-reset-controller-support.patch
@@ -0,0 +1,107 @@
+From 71dd6c0dff51b5f1fef2e9dfa6f6a948aac975f3 Mon Sep 17 00:00:00 2001
+From: David Bauer <mail@david-bauer.net>
+Date: Wed, 17 Apr 2019 23:59:21 +0200
+Subject: [PATCH] net: phy: add support for reset-controller
+
+This commit adds support for PHY reset pins handled by a reset controller.
+
+Signed-off-by: David Bauer <mail@david-bauer.net>
+Reviewed-by: Andrew Lunn <andrew@lunn.ch>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+---
+ drivers/net/phy/mdio_bus.c    | 27 +++++++++++++++++++++++++--
+ drivers/net/phy/mdio_device.c | 13 +++++++++++--
+ include/linux/mdio.h          |  1 +
+ 3 files changed, 37 insertions(+), 4 deletions(-)
+
+--- a/drivers/net/phy/mdio_bus.c
++++ b/drivers/net/phy/mdio_bus.c
+@@ -29,6 +29,7 @@
+ #include <linux/of_gpio.h>
+ #include <linux/netdevice.h>
+ #include <linux/etherdevice.h>
++#include <linux/reset.h>
+ #include <linux/skbuff.h>
+ #include <linux/spinlock.h>
+ #include <linux/mm.h>
+@@ -65,8 +66,23 @@ static int mdiobus_register_gpiod(struct
+ 
+ 	mdiodev->reset = gpiod;
+ 
+-	/* Assert the reset signal again */
+-	mdio_device_reset(mdiodev, 1);
++	return 0;
++}
++
++static int mdiobus_register_reset(struct mdio_device *mdiodev)
++{
++	struct reset_control *reset = NULL;
++
++	if (mdiodev->dev.of_node)
++		reset = devm_reset_control_get_exclusive(&mdiodev->dev,
++							 "phy");
++	if (PTR_ERR(reset) == -ENOENT ||
++	    PTR_ERR(reset) == -ENOTSUPP)
++		reset = NULL;
++	else if (IS_ERR(reset))
++		return PTR_ERR(reset);
++
++	mdiodev->reset_ctrl = reset;
+ 
+ 	return 0;
+ }
+@@ -82,6 +98,13 @@ int mdiobus_register_device(struct mdio_
+ 		err = mdiobus_register_gpiod(mdiodev);
+ 		if (err)
+ 			return err;
++
++		err = mdiobus_register_reset(mdiodev);
++		if (err)
++			return err;
++
++		/* Assert the reset signal */
++		mdio_device_reset(mdiodev, 1);
+ 	}
+ 
+ 	mdiodev->bus->mdio_map[mdiodev->addr] = mdiodev;
+--- a/drivers/net/phy/mdio_device.c
++++ b/drivers/net/phy/mdio_device.c
+@@ -21,6 +21,7 @@
+ #include <linux/mii.h>
+ #include <linux/module.h>
+ #include <linux/phy.h>
++#include <linux/reset.h>
+ #include <linux/slab.h>
+ #include <linux/string.h>
+ #include <linux/unistd.h>
+@@ -121,10 +122,18 @@ void mdio_device_reset(struct mdio_devic
+ {
+ 	unsigned int d;
+ 
+-	if (!mdiodev->reset)
++	if (!mdiodev->reset && !mdiodev->reset_ctrl)
+ 		return;
+ 
+-	gpiod_set_value(mdiodev->reset, value);
++	if (mdiodev->reset)
++		gpiod_set_value(mdiodev->reset, value);
++
++	if (mdiodev->reset_ctrl) {
++		if (value)
++			reset_control_assert(mdiodev->reset_ctrl);
++		else
++			reset_control_deassert(mdiodev->reset_ctrl);
++	}
+ 
+ 	d = value ? mdiodev->reset_assert_delay : mdiodev->reset_deassert_delay;
+ 	if (d)
+--- a/include/linux/mdio.h
++++ b/include/linux/mdio.h
+@@ -40,6 +40,7 @@ struct mdio_device {
+ 	int addr;
+ 	int flags;
+ 	struct gpio_desc *reset;
++	struct reset_control *reset_ctrl;
+ 	unsigned int reset_assert_delay;
+ 	unsigned int reset_deassert_delay;
+ };
diff --git a/target/linux/ath79/patches-4.19/701-mdio-bus-dont-use-managed-reset-controller.patch b/target/linux/ath79/patches-4.19/701-mdio-bus-dont-use-managed-reset-controller.patch
new file mode 100644
index 0000000000..16e7f20370
--- /dev/null
+++ b/target/linux/ath79/patches-4.19/701-mdio-bus-dont-use-managed-reset-controller.patch
@@ -0,0 +1,44 @@
+From 32085f25d7b68404055f3525c780142fc72e543f Mon Sep 17 00:00:00 2001
+From: David Bauer <mail@david-bauer.net>
+Date: Fri, 22 Nov 2019 22:44:51 +0100
+Subject: [PATCH] mdio_bus: don't use managed reset-controller
+
+Geert Uytterhoeven reported that using devm_reset_controller_get leads
+to a WARNING when probing a reset-controlled PHY. This is because the
+device devm_reset_controller_get gets supplied is not actually the
+one being probed.
+
+Acquire an unmanaged reset-control as well as free the reset_control on
+unregister to fix this.
+
+Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
+CC: Andrew Lunn <andrew@lunn.ch>
+Signed-off-by: David Bauer <mail@david-bauer.net>
+Reviewed-by: Andrew Lunn <andrew@lunn.ch>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+---
+ drivers/net/phy/mdio_bus.c | 6 ++++--
+ 1 file changed, 4 insertions(+), 2 deletions(-)
+
+--- a/drivers/net/phy/mdio_bus.c
++++ b/drivers/net/phy/mdio_bus.c
+@@ -74,8 +74,8 @@ static int mdiobus_register_reset(struct
+ 	struct reset_control *reset = NULL;
+ 
+ 	if (mdiodev->dev.of_node)
+-		reset = devm_reset_control_get_exclusive(&mdiodev->dev,
+-							 "phy");
++		reset = of_reset_control_get_exclusive(mdiodev->dev.of_node,
++						       "phy");
+ 	if (PTR_ERR(reset) == -ENOENT ||
+ 	    PTR_ERR(reset) == -ENOTSUPP)
+ 		reset = NULL;
+@@ -118,6 +118,8 @@ int mdiobus_unregister_device(struct mdi
+ 	if (mdiodev->bus->mdio_map[mdiodev->addr] != mdiodev)
+ 		return -EINVAL;
+ 
++	reset_control_put(mdiodev->reset_ctrl);
++
+ 	mdiodev->bus->mdio_map[mdiodev->addr] = NULL;
+ 
+ 	return 0;
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
