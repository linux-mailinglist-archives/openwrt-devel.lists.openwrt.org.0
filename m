Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD32E33A7
	for <lists+openwrt-devel@lfdr.de>; Thu, 24 Oct 2019 15:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/rZyJoVxag+jV5m+jWMdhSfPEbo/G3r4VpC77945BSc=; b=ODDhR88gU6ZBve
	BuztSLmccznZ/vnKOGjnQuV9Ve2kiu35puhHI9O2//ICI0YCyKPsb0NwTWQcJ7Gi7t58Mgg3KXVzK
	xQo6SsO6UBxVA+t31YTTVRSV3jjvrJUXo1mK4snOKKyPt5pqeDZX08OodHOZSIcy4uvCrhUVeNe0z
	r3FgAuZoDhELiaco8lao6ZWZBm31sTlN1HGgmW2OmGpnKw5ww0fhR6lOcTXOujzXThOPuX+9BsIh9
	BDxs5q6sHymGP0ad+XqLqxbtPMkxAPI1FrLGFN6lpsmKDd0KXbUVDGQlgG5txNiNp2xBnghGebDji
	IMChN0oIAtXj2OYpdmJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNcw6-0004fF-P3; Thu, 24 Oct 2019 13:13:54 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNcvr-0004ea-8t
 for openwrt-devel@lists.openwrt.org; Thu, 24 Oct 2019 13:13:41 +0000
Received: from dbauer-t470.tu-darmstadt.de (unknown
 [IPv6:2001:41b8:83c:fa01:5d47:84e4:b335:6505])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 1BFBD1E3D6
 for <openwrt-devel@lists.openwrt.org>; Thu, 24 Oct 2019 15:13:33 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 24 Oct 2019 15:13:24 +0200
Message-Id: <20191024131324.302958-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_061339_614492_1C010DE3 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: disable delays on AT803X config init
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

Until upstream commit 6d4cd041f0af("net: phy: at803x: disable delay
only for RGMII mode"), delays were not disabled on driver probe
for the Atheros AR803x PHYs, although the RX delay is enabled on
soft and hard reset.

In addition, the TX delay setting is retained on soft-reset.

This patch disables both delays on config init to align the behavior
with kernel 5.1 and higher. It can be safely dropped with kernel 5.1.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../0038-at803x-disable-delays.patch          | 27 +++++++++++++++++++
 .../0038-at803x-disable-delays.patch          | 27 +++++++++++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 target/linux/ath79/patches-4.14/0038-at803x-disable-delays.patch
 create mode 100644 target/linux/ath79/patches-4.19/0038-at803x-disable-delays.patch

diff --git a/target/linux/ath79/patches-4.14/0038-at803x-disable-delays.patch b/target/linux/ath79/patches-4.14/0038-at803x-disable-delays.patch
new file mode 100644
index 0000000000..be291adc0b
--- /dev/null
+++ b/target/linux/ath79/patches-4.14/0038-at803x-disable-delays.patch
@@ -0,0 +1,27 @@
+Until upstream commit 6d4cd041f0af("net: phy: at803x: disable delay
+only for RGMII mode"), delays were not disabled on driver probe
+for the Atheros AR803x PHYs, although the RX delay is enabled on
+soft and hard reset.
+
+In addition, the TX delay setting is retained on soft-reset.
+
+This patch disables both delays on config init to align the behavior
+with kernel 5.1 and higher. It can be safely dropped with kernel 5.1.
+
+--- a/drivers/net/phy/at803x.c
++++ b/drivers/net/phy/at803x.c
+@@ -320,6 +320,14 @@ static int at803x_config_init(struct phy
+ 	if (ret < 0)
+ 		return ret;
+ 
++	// Disable RX delay
++	at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_0,
++				AT803X_DEBUG_RX_CLK_DLY_EN, 0);
++
++	// Disable TX delay
++	at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_5,
++				AT803X_DEBUG_TX_CLK_DLY_EN, 0);
++
+ 	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID ||
+ 			phydev->interface == PHY_INTERFACE_MODE_RGMII_ID) {
+ 		ret = at803x_enable_rx_delay(phydev);
diff --git a/target/linux/ath79/patches-4.19/0038-at803x-disable-delays.patch b/target/linux/ath79/patches-4.19/0038-at803x-disable-delays.patch
new file mode 100644
index 0000000000..083ba9bb8a
--- /dev/null
+++ b/target/linux/ath79/patches-4.19/0038-at803x-disable-delays.patch
@@ -0,0 +1,27 @@
+Until upstream commit 6d4cd041f0af("net: phy: at803x: disable delay
+only for RGMII mode"), delays were not disabled on driver probe
+for the Atheros AR803x PHYs, although the RX delay is enabled on
+soft and hard reset.
+
+In addition, the TX delay setting is retained on soft-reset.
+
+This patch disables both delays on config init to align the behavior
+with kernel 5.1 and higher. It can be safely dropped with kernel 5.1.
+
+--- a/drivers/net/phy/at803x.c
++++ b/drivers/net/phy/at803x.c
+@@ -295,6 +295,14 @@ static int at803x_config_init(struct phy
+ 	if (ret < 0)
+ 		return ret;
+ 
++	// Disable RX delay
++	at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_0,
++				AT803X_DEBUG_RX_CLK_DLY_EN, 0);
++
++	// Disable TX delay
++	at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_5,
++				AT803X_DEBUG_TX_CLK_DLY_EN, 0);
++
+ 	if (phydev->interface == PHY_INTERFACE_MODE_RGMII_RXID ||
+ 			phydev->interface == PHY_INTERFACE_MODE_RGMII_ID) {
+ 		ret = at803x_enable_rx_delay(phydev);
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
