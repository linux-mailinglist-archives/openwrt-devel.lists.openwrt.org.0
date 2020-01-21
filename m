Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D70CE1445AB
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 21:12:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+gEdlh/XX4sCdJ0oGtL9sRFcI6lsK1ua9FEDZoF5Eo4=; b=XN/YGbW2GnJav+WBj8U2aWcUv5
	pPbTBA1IqgH1pAfys/xmgMNbzOML4W5MGJ5K3ZjsJpTvGQuvLzQH3GIv03GBvAt5bg+PBkcdWgPd5
	2hqRZsaeiXmNAAmsi5fFsd2M6hf5r57ejGl+OK965AX4jym7M0GWD29zqZyDlnFzadnwA59CvKCx5
	lX9bZIi9BzNPySdi2PMONBrK+eKfByyeFSQNdAg/+P6ry0+h6LlkUDjs7Kh3b5IdL07XVRYGIjNQ6
	sT2vlRo8JSvSAqWBBCdC/eNAdpxTzofiDWDXIo0NfRkKV2rDxp/DvuBOQIGUOzrKZc5Gyq2vlCmjr
	+JbSyW4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itzsW-00083Q-GQ; Tue, 21 Jan 2020 20:12:00 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1itzs8-0007vG-9G
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 20:11:42 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F0CC50095A36D6416EB1E82.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0c:c500:95a3:6d64:16eb:1e82])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 5023522F26
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 21:11:32 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 21 Jan 2020 21:11:20 +0100
Message-Id: <20200121201120.23516-2-mail@david-bauer.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200121201120.23516-1-mail@david-bauer.net>
References: <20200121201120.23516-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_121136_632083_599C7DA3 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] generic at803x: remove unneeded patches
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

 - Remove the "RGMII TX delay fixup" hack and the associated
   DT-property. It was never used in a DT-based platform and
   solved a problem which can be mitigated by using correct
   delays on the MAC side.

 - Remove the patch to enable platform-data support for the
   at803x driver. It was only used by ar71xx which does not
   (and never will) support kernel 4.19 or later.

 - Remove the SmartEEE DT-configuration patch. As explained
   previously, this patch never disabled the Atheros SmartEEE
   implementation, but rather "standard" EEE. This can be done
   on device-tree compatible platforms by adding the
   "eee-broken-1000t" or "eee-broken-100tx" properties to the PHY
   node. As all usages of the old properties are migrated, this
   patch can be removed.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 ...phy-at803x-allow-to-configure-via-dt.patch |  47 ------
 ...-at803x-allow-to-configure-via-pdata.patch | 142 ------------------
 ...phy-at803x-allow-to-configure-via-dt.patch |  47 ------
 3 files changed, 236 deletions(-)
 delete mode 100644 target/linux/generic/pending-4.14/736-net-phy-at803x-allow-to-configure-via-dt.patch
 delete mode 100644 target/linux/generic/pending-4.19/734-net-phy-at803x-allow-to-configure-via-pdata.patch
 delete mode 100644 target/linux/generic/pending-4.19/736-net-phy-at803x-allow-to-configure-via-dt.patch

diff --git a/target/linux/generic/pending-4.14/736-net-phy-at803x-allow-to-configure-via-dt.patch b/target/linux/generic/pending-4.14/736-net-phy-at803x-allow-to-configure-via-dt.patch
deleted file mode 100644
index 6bc626dd6a..0000000000
--- a/target/linux/generic/pending-4.14/736-net-phy-at803x-allow-to-configure-via-dt.patch
+++ /dev/null
@@ -1,47 +0,0 @@
---- a/drivers/net/phy/at803x.c
-+++ b/drivers/net/phy/at803x.c
-@@ -354,6 +354,14 @@ static int at803x_config_init(struct phy
- 				AT803X_DEBUG_TX_CLK_DLY_EN, 0);
- 	}
- 
-+#ifdef CONFIG_OF_MDIO
-+	if (phydev->mdio.dev.of_node &&
-+		of_property_read_bool(phydev->mdio.dev.of_node,
-+				      "at803x-disable-smarteee")) {
-+		at803x_disable_smarteee(phydev);
-+	}
-+#endif
-+
- 	return 0;
- }
- 
-@@ -392,6 +400,7 @@ static void at803x_link_change_notify(st
- {
- 	struct at803x_priv *priv = phydev->priv;
- 	struct at803x_platform_data *pdata;
-+	u8 fixup_rgmii_tx_delay = 0;
- 	pdata = dev_get_platdata(&phydev->mdio.dev);
- 
- 	/*
-@@ -421,8 +430,19 @@ static void at803x_link_change_notify(st
- 	} else {
- 		priv->phy_reset = false;
- 	}
--	if (pdata && pdata->fixup_rgmii_tx_delay &&
--	    phydev->speed != priv->prev_speed) {
-+
-+	if (pdata && pdata->fixup_rgmii_tx_delay)
-+		fixup_rgmii_tx_delay = 1;
-+
-+#ifdef CONFIG_OF_MDIO
-+	if (phydev->mdio.dev.of_node &&
-+		of_property_read_bool(phydev->mdio.dev.of_node,
-+				      "at803x-fixup-rgmii-tx-delay")) {
-+			fixup_rgmii_tx_delay = 1;
-+	}
-+#endif
-+
-+	if (fixup_rgmii_tx_delay && phydev->speed != priv->prev_speed) {
- 		switch (phydev->speed) {
- 		case SPEED_10:
- 		case SPEED_100:
diff --git a/target/linux/generic/pending-4.19/734-net-phy-at803x-allow-to-configure-via-pdata.patch b/target/linux/generic/pending-4.19/734-net-phy-at803x-allow-to-configure-via-pdata.patch
deleted file mode 100644
index e56e77addf..0000000000
--- a/target/linux/generic/pending-4.19/734-net-phy-at803x-allow-to-configure-via-pdata.patch
+++ /dev/null
@@ -1,142 +0,0 @@
-From: Gabor Juhos <juhosg@openwrt.org>
-Subject: net: phy: allow to configure AR803x PHYs via platform data
-
-Add a patch for the at803x phy driver, in order to be able
-to configure some register settings via platform data.
-
-Signed-off-by: Gabor Juhos <juhosg@openwrt.org>
----
- drivers/net/phy/at803x.c                 | 56 ++++++++++++++++++++++++++++++++
- include/linux/platform_data/phy-at803x.h | 11 +++++++
- 2 files changed, 67 insertions(+)
- create mode 100644 include/linux/platform_data/phy-at803x.h
-
---- a/drivers/net/phy/at803x.c
-+++ b/drivers/net/phy/at803x.c
-@@ -12,12 +12,14 @@
-  */
- 
- #include <linux/phy.h>
-+#include <linux/mdio.h>
- #include <linux/module.h>
- #include <linux/string.h>
- #include <linux/netdevice.h>
- #include <linux/etherdevice.h>
- #include <linux/of_gpio.h>
- #include <linux/gpio/consumer.h>
-+#include <linux/platform_data/phy-at803x.h>
- 
- #define AT803X_INTR_ENABLE			0x12
- #define AT803X_INTR_ENABLE_AUTONEG_ERR		BIT(15)
-@@ -45,6 +47,11 @@
- #define AT803X_REG_CHIP_CONFIG			0x1f
- #define AT803X_BT_BX_REG_SEL			0x8000
- 
-+#define AT803X_PCS_SMART_EEE_CTRL3			0x805D
-+#define AT803X_SMART_EEE_CTRL3_LPI_TX_DELAY_SEL_MASK	0x3
-+#define AT803X_SMART_EEE_CTRL3_LPI_TX_DELAY_SEL_SHIFT	12
-+#define AT803X_SMART_EEE_CTRL3_LPI_EN			BIT(8)
-+
- #define AT803X_DEBUG_ADDR			0x1D
- #define AT803X_DEBUG_DATA			0x1E
- 
-@@ -73,6 +80,7 @@ MODULE_LICENSE("GPL");
- 
- struct at803x_priv {
- 	bool phy_reset:1;
-+	int prev_speed;
- };
- 
- struct at803x_context {
-@@ -249,8 +257,16 @@ static int at803x_probe(struct phy_devic
- 	return 0;
- }
- 
-+static void at803x_disable_smarteee(struct phy_device *phydev)
-+{
-+	phy_write_mmd(phydev, MDIO_MMD_PCS, AT803X_PCS_SMART_EEE_CTRL3,
-+		1 << AT803X_SMART_EEE_CTRL3_LPI_TX_DELAY_SEL_SHIFT);
-+	phy_write_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV, 0);
-+}
-+
- static int at803x_config_init(struct phy_device *phydev)
- {
-+	struct at803x_platform_data *pdata;
- 	int ret;
- 
- 	ret = genphy_config_init(phydev);
-@@ -271,6 +287,26 @@ static int at803x_config_init(struct phy
- 			return ret;
- 	}
- 
-+	pdata = dev_get_platdata(&phydev->mdio.dev);
-+	if (pdata) {
-+		if (pdata->disable_smarteee)
-+			at803x_disable_smarteee(phydev);
-+
-+		if (pdata->enable_rgmii_rx_delay)
-+			at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_0, 0,
-+				AT803X_DEBUG_RX_CLK_DLY_EN);
-+		else
-+			at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_0,
-+				AT803X_DEBUG_RX_CLK_DLY_EN, 0);
-+
-+		if (pdata->enable_rgmii_tx_delay)
-+			at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_5, 0,
-+				AT803X_DEBUG_TX_CLK_DLY_EN);
-+		else
-+			at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_5,
-+				AT803X_DEBUG_TX_CLK_DLY_EN, 0);
-+	}
-+
- 	return 0;
- }
- 
-@@ -308,6 +344,8 @@ static int at803x_config_intr(struct phy
- static void at803x_link_change_notify(struct phy_device *phydev)
- {
- 	struct at803x_priv *priv = phydev->priv;
-+	struct at803x_platform_data *pdata;
-+	pdata = dev_get_platdata(&phydev->mdio.dev);
- 
- 	/*
- 	 * Conduct a hardware reset for AT8030/2 every time a link loss is
-@@ -336,6 +374,24 @@ static void at803x_link_change_notify(st
- 	} else {
- 		priv->phy_reset = false;
- 	}
-+	if (pdata && pdata->fixup_rgmii_tx_delay &&
-+	    phydev->speed != priv->prev_speed) {
-+		switch (phydev->speed) {
-+		case SPEED_10:
-+		case SPEED_100:
-+			at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_5, 0,
-+				AT803X_DEBUG_TX_CLK_DLY_EN);
-+			break;
-+		case SPEED_1000:
-+			at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_5,
-+				AT803X_DEBUG_TX_CLK_DLY_EN, 0);
-+			break;
-+		default:
-+			break;
-+		}
-+
-+		priv->prev_speed = phydev->speed;
-+	}
- }
- 
- static int at803x_aneg_done(struct phy_device *phydev)
---- /dev/null
-+++ b/include/linux/platform_data/phy-at803x.h
-@@ -0,0 +1,11 @@
-+#ifndef _PHY_AT803X_PDATA_H
-+#define _PHY_AT803X_PDATA_H
-+
-+struct at803x_platform_data {
-+	int disable_smarteee:1;
-+	int enable_rgmii_tx_delay:1;
-+	int enable_rgmii_rx_delay:1;
-+	int fixup_rgmii_tx_delay:1;
-+};
-+
-+#endif /* _PHY_AT803X_PDATA_H */
diff --git a/target/linux/generic/pending-4.19/736-net-phy-at803x-allow-to-configure-via-dt.patch b/target/linux/generic/pending-4.19/736-net-phy-at803x-allow-to-configure-via-dt.patch
deleted file mode 100644
index 496700f377..0000000000
--- a/target/linux/generic/pending-4.19/736-net-phy-at803x-allow-to-configure-via-dt.patch
+++ /dev/null
@@ -1,47 +0,0 @@
---- a/drivers/net/phy/at803x.c
-+++ b/drivers/net/phy/at803x.c
-@@ -329,6 +329,14 @@ static int at803x_config_init(struct phy
- 				AT803X_DEBUG_TX_CLK_DLY_EN, 0);
- 	}
- 
-+#ifdef CONFIG_OF_MDIO
-+	if (phydev->mdio.dev.of_node &&
-+		of_property_read_bool(phydev->mdio.dev.of_node,
-+				      "at803x-disable-smarteee")) {
-+		at803x_disable_smarteee(phydev);
-+	}
-+#endif
-+
- 	return 0;
- }
- 
-@@ -367,6 +375,7 @@ static void at803x_link_change_notify(st
- {
- 	struct at803x_priv *priv = phydev->priv;
- 	struct at803x_platform_data *pdata;
-+	u8 fixup_rgmii_tx_delay = 0;
- 	pdata = dev_get_platdata(&phydev->mdio.dev);
- 
- 	/*
-@@ -396,8 +405,19 @@ static void at803x_link_change_notify(st
- 	} else {
- 		priv->phy_reset = false;
- 	}
--	if (pdata && pdata->fixup_rgmii_tx_delay &&
--	    phydev->speed != priv->prev_speed) {
-+
-+	if (pdata && pdata->fixup_rgmii_tx_delay)
-+		fixup_rgmii_tx_delay = 1;
-+
-+#ifdef CONFIG_OF_MDIO
-+	if (phydev->mdio.dev.of_node &&
-+		of_property_read_bool(phydev->mdio.dev.of_node,
-+				      "at803x-fixup-rgmii-tx-delay")) {
-+			fixup_rgmii_tx_delay = 1;
-+	}
-+#endif
-+
-+	if (fixup_rgmii_tx_delay && phydev->speed != priv->prev_speed) {
- 		switch (phydev->speed) {
- 		case SPEED_10:
- 		case SPEED_100:
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
