Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4BD10AEE6
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 12:48:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Date:Message-Id:MIME-Version:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M3OE77SjPHOTwzXNztCPn47ViEcdMf49ZEEuRMNNk6k=; b=ES5vUPRHNmdKQs
	+a9ntRBvLtskrzSp+1NCNc+JuZuBKi4xU7Plht23nZrhq4Q7OJocU1Z/PjR8Qiky4GdvRSzlKfwEr
	LVEOPFfAxpnp5z15wPBh50Io7kM1YYO7wfY2mpPltgB2nA/Er9GeUz0KpWDjlKsv3VHjfY1BJc9hQ
	IrPJOYelW85kYQk4N8HnRyzE/BO/ICTWdHNPRzymT/LriQlsXNGQJjXl8f+t4mJq4SEzLJcCSGisy
	YwK96DKdtXt9ti7+A+M5+DWilj/xRlshCs93N3QZCZoBqsIvUjb3TISVPyK1JPJjPSgkdKuXaYokS
	6PNWzrYPyQ28CCS4uaqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZvny-0000F5-6N; Wed, 27 Nov 2019 11:48:22 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvnU-0008Se-5M
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 11:47:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:Reply-To:Cc:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+gl9vjYwXtjFHbHDKyXOtOPWADyKo83zQJ3Fj0dbSmA=; b=HPnfPtociEIAUdKW5URcKOTgQA
 1H2DgNGwKO+Dlpq6VI514UGGdkdI+SjgFHnJAn9BrFzWa4Z7N+OZiWaOxOBP4mX0dDrtA9yu1d1UR
 lt0PBPXdQVM8TFusQcEcaA5zasG+EcCc7XJmoYRQpJVNacOZMXHFdfKNwVUwJvje76HQF2IXYAGlu
 LvdbBVXof0IJEtTD7WPT+M3prYroro5sJleWKXJogDQ0fnqPUtQo436n4vyw8iInS5TXKtViPX4Aa
 D3jGMFY6/9BZCc1jafhRup8uLgDK5ArDatAB5p8xOlAn4G7x6ARnoBY8T6Co4EgBK9BU9AG4aO/N/
 dIy2Rcpg==;
Received: from [2002:4e20:1eda:1:d263:b4ff:fe43:3701] (port=45920
 helo=cex7.armlinux.org.uk) by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1iZvnK-00037L-HE; Wed, 27 Nov 2019 11:47:42 +0000
Received: from rmk by ed063b4433701.dyn.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@ed063b4433701.dyn.armlinux.org.uk>)
 id 1iZvlC-0001RO-A2; Wed, 27 Nov 2019 11:45:30 +0000
From: Russell King <linux@armlinux.org.uk>
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1iZvlC-0001RO-A2@ed063b4433701.dyn.armlinux.org.uk>
Date: Wed, 27 Nov 2019 11:45:30 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_034753_707706_836369A6 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 4/5] kernel: add SFP support for Methode
 DM7052 NBASE-T module
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

Add support for Methode DM7052 NBASE-T module to OpenWRT. These
patches are taken from my "phy" branch, and will be sent for the
next kernel merge window.

Signed-off-by: Russell King <linux@armlinux.org.uk>
---
 package/kernel/linux/modules/netdevices.mk    |  17 +
 ...ncomplete-100BASE-FX-and-100BASE-LX-.patch |  59 +++
 ...nterface-mode-from-ethtool-link-mode.patch | 100 +++++
 ...p-add-more-extended-compliance-codes.patch | 260 +++++++++++++
 ...le-start-stop-upstream-notifications.patch | 142 ++++++++
 ...p-move-phy_start-phy_stop-to-phylink.patch |  79 ++++
 ...c-add-support-for-Clause-45-accesses.patch |  79 ++++
 ...ylink-re-split-__phylink_connect_phy.patch |  98 +++++
 ...upport-Clause-45-PHYs-on-SFP-modules.patch |  94 +++++
 ...t-link_an_mode-configured-and-curren.patch | 259 +++++++++++++
 ...link-split-phylink_sfp_module_insert.patch | 125 +++++++
 ...y-MAC-configuration-for-copper-SFP-m.patch | 213 +++++++++++
 ...ke-Broadcom-BCM84881-based-SFPs-work.patch |  63 ++++
 ...phy-add-Broadcom-BCM84881-PHY-driver.patch | 343 ++++++++++++++++++
 ...t-sfp-add-support-for-Clause-45-PHYs.patch |  99 +++++
 target/linux/generic/config-4.19              |   1 +
 16 files changed, 2031 insertions(+)
 create mode 100644 target/linux/generic/backport-4.19/745-net-sfp-remove-incomplete-100BASE-FX-and-100BASE-LX-.patch
 create mode 100644 target/linux/generic/backport-4.19/746-net-sfp-derive-interface-mode-from-ethtool-link-mode.patch
 create mode 100644 target/linux/generic/backport-4.19/747-net-sfp-add-more-extended-compliance-codes.patch
 create mode 100644 target/linux/generic/backport-4.19/748-net-sfp-add-module-start-stop-upstream-notifications.patch
 create mode 100644 target/linux/generic/backport-4.19/749-net-sfp-move-phy_start-phy_stop-to-phylink.patch
 create mode 100644 target/linux/generic/backport-4.19/750-net-mdio-i2c-add-support-for-Clause-45-accesses.patch
 create mode 100644 target/linux/generic/backport-4.19/751-net-phylink-re-split-__phylink_connect_phy.patch
 create mode 100644 target/linux/generic/backport-4.19/752-net-phylink-support-Clause-45-PHYs-on-SFP-modules.patch
 create mode 100644 target/linux/generic/backport-4.19/753-net-phylink-split-link_an_mode-configured-and-curren.patch
 create mode 100644 target/linux/generic/backport-4.19/754-net-phylink-split-phylink_sfp_module_insert.patch
 create mode 100644 target/linux/generic/backport-4.19/755-net-phylink-delay-MAC-configuration-for-copper-SFP-m.patch
 create mode 100644 target/linux/generic/backport-4.19/756-net-phylink-make-Broadcom-BCM84881-based-SFPs-work.patch
 create mode 100644 target/linux/generic/backport-4.19/757-net-phy-add-Broadcom-BCM84881-PHY-driver.patch
 create mode 100644 target/linux/generic/backport-4.19/758-net-sfp-add-support-for-Clause-45-PHYs.patch

diff --git a/package/kernel/linux/modules/netdevices.mk b/package/kernel/linux/modules/netdevices.mk
index 5f8d767679a0..6e2a0333f680 100644
--- a/package/kernel/linux/modules/netdevices.mk
+++ b/package/kernel/linux/modules/netdevices.mk
@@ -192,6 +192,23 @@ endef
 $(eval $(call KernelPackage,phy-broadcom))
 
 
+define KernelPackage/phy-bcm84881
+   SUBMENU:=$(NETWORK_DEVICES_MENU)
+   TITLE:=Broadcom BCM84881 PHY driver
+   KCONFIG:=CONFIG_BCM84881_PHY
+   DEPENDS:=+kmod-libphy
+   FILES:=$(LINUX_DIR)/drivers/net/phy/bcm84881.ko
+   AUTOLOAD:=$(call AutoLoad,18,bcm84881,1)
+endef
+
+define KernelPackage/phy-bcm84881/description
+   Supports the Broadcom 84881 PHY.
+endef
+
+$(eval $(call KernelPackage,phy-bcm84881))
+
+
+
 define KernelPackage/phy-realtek
    SUBMENU:=$(NETWORK_DEVICES_MENU)
    TITLE:=Realtek Ethernet PHY driver
diff --git a/target/linux/generic/backport-4.19/745-net-sfp-remove-incomplete-100BASE-FX-and-100BASE-LX-.patch b/target/linux/generic/backport-4.19/745-net-sfp-remove-incomplete-100BASE-FX-and-100BASE-LX-.patch
new file mode 100644
index 000000000000..453efde3c915
--- /dev/null
+++ b/target/linux/generic/backport-4.19/745-net-sfp-remove-incomplete-100BASE-FX-and-100BASE-LX-.patch
@@ -0,0 +1,59 @@
+From 29cd215aaf6c2050c43e4de03aee436c16f90b96 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Thu, 21 Nov 2019 17:27:14 +0000
+Subject: [PATCH 643/660] net: sfp: remove incomplete 100BASE-FX and 100BASE-LX
+ support
+
+The 100BASE-FX and 100BASE-LX support assumes a PHY is present; this
+is probably an incorrect assumption. In any case, sfp_parse_support()
+will fail such a module. Let's stop pretending we support these
+modules.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp-bus.c |  4 +---
+ drivers/net/phy/sfp.c     | 13 +------------
+ 2 files changed, 2 insertions(+), 15 deletions(-)
+
+diff --git a/drivers/net/phy/sfp-bus.c b/drivers/net/phy/sfp-bus.c
+index 5136a7291368..fd0dd53f1821 100644
+--- a/drivers/net/phy/sfp-bus.c
++++ b/drivers/net/phy/sfp-bus.c
+@@ -341,9 +341,7 @@ phy_interface_t sfp_select_interface(struct sfp_bus *bus,
+ 	if (phylink_test(link_modes, 2500baseX_Full))
+ 		return PHY_INTERFACE_MODE_2500BASEX;
+ 
+-	if (id->base.e1000_base_t ||
+-	    id->base.e100_base_lx ||
+-	    id->base.e100_base_fx)
++	if (id->base.e1000_base_t)
+ 		return PHY_INTERFACE_MODE_SGMII;
+ 
+ 	if (phylink_test(link_modes, 1000baseX_Full))
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 982319c95e1f..31ad78df90d8 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -1413,18 +1413,7 @@ static void sfp_sm_fault(struct sfp *sfp, unsigned int next_state, bool warn)
+ 
+ static void sfp_sm_probe_for_phy(struct sfp *sfp)
+ {
+-	/* Setting the serdes link mode is guesswork: there's no
+-	 * field in the EEPROM which indicates what mode should
+-	 * be used.
+-	 *
+-	 * If it's a gigabit-only fiber module, it probably does
+-	 * not have a PHY, so switch to 802.3z negotiation mode.
+-	 * Otherwise, switch to SGMII mode (which is required to
+-	 * support non-gigabit speeds) and probe for a PHY.
+-	 */
+-	if (sfp->id.base.e1000_base_t ||
+-	    sfp->id.base.e100_base_lx ||
+-	    sfp->id.base.e100_base_fx)
++	if (sfp->id.base.e1000_base_t)
+ 		sfp_sm_probe_phy(sfp);
+ }
+ 
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/746-net-sfp-derive-interface-mode-from-ethtool-link-mode.patch b/target/linux/generic/backport-4.19/746-net-sfp-derive-interface-mode-from-ethtool-link-mode.patch
new file mode 100644
index 000000000000..cc361d61ac74
--- /dev/null
+++ b/target/linux/generic/backport-4.19/746-net-sfp-derive-interface-mode-from-ethtool-link-mode.patch
@@ -0,0 +1,100 @@
+From dc45d9e04572b5cd6d32f51cdf9f62b18022e6dd Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Thu, 21 Nov 2019 17:32:59 +0000
+Subject: [PATCH 644/660] net: sfp: derive interface mode from ethtool link
+ modes
+
+We don't need the EEPROM ID to derive the phy interface mode as we can
+derive it merely from the ethtool link modes.  Remove the EEPROM ID
+argument to sfp_select_interface().
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/marvell10g.c |  2 +-
+ drivers/net/phy/phylink.c    |  2 +-
+ drivers/net/phy/sfp-bus.c    | 11 ++++-------
+ include/linux/sfp.h          |  2 --
+ 4 files changed, 6 insertions(+), 11 deletions(-)
+
+diff --git a/drivers/net/phy/marvell10g.c b/drivers/net/phy/marvell10g.c
+index f7bba88ed506..b2043f563dfb 100644
+--- a/drivers/net/phy/marvell10g.c
++++ b/drivers/net/phy/marvell10g.c
+@@ -227,7 +227,7 @@ static int mv3310_sfp_insert(void *upstream, const struct sfp_eeprom_id *id)
+ 	phy_interface_t iface;
+ 
+ 	sfp_parse_support(phydev->sfp_bus, id, support);
+-	iface = sfp_select_interface(phydev->sfp_bus, id, support);
++	iface = sfp_select_interface(phydev->sfp_bus, support);
+ 
+ 	if (iface != PHY_INTERFACE_MODE_10GKR) {
+ 		dev_err(&phydev->mdio.dev, "incompatible SFP module inserted\n");
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index 78ab4412a328..3194764b91e6 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -1663,7 +1663,7 @@ static int phylink_sfp_module_insert(void *upstream,
+ 
+ 	linkmode_copy(support1, support);
+ 
+-	iface = sfp_select_interface(pl->sfp_bus, id, config.advertising);
++	iface = sfp_select_interface(pl->sfp_bus, config.advertising);
+ 	if (iface == PHY_INTERFACE_MODE_NA) {
+ 		netdev_err(pl->netdev,
+ 			   "selection of interface failed, advertisement %*pb\n",
+diff --git a/drivers/net/phy/sfp-bus.c b/drivers/net/phy/sfp-bus.c
+index fd0dd53f1821..242475bbd112 100644
+--- a/drivers/net/phy/sfp-bus.c
++++ b/drivers/net/phy/sfp-bus.c
+@@ -319,16 +319,12 @@ EXPORT_SYMBOL_GPL(sfp_parse_support);
+ /**
+  * sfp_select_interface() - Select appropriate phy_interface_t mode
+  * @bus: a pointer to the &struct sfp_bus structure for the sfp module
+- * @id: a pointer to the module's &struct sfp_eeprom_id
+  * @link_modes: ethtool link modes mask
+  *
+- * Derive the phy_interface_t mode for the information found in the
+- * module's identifying EEPROM and the link modes mask. There is no
+- * standard or defined way to derive this information, so we decide
+- * based upon the link mode mask.
++ * Derive the phy_interface_t mode for the SFP module from the link
++ * modes mask.
+  */
+ phy_interface_t sfp_select_interface(struct sfp_bus *bus,
+-				     const struct sfp_eeprom_id *id,
+ 				     unsigned long *link_modes)
+ {
+ 	if (phylink_test(link_modes, 10000baseCR_Full) ||
+@@ -341,7 +337,8 @@ phy_interface_t sfp_select_interface(struct sfp_bus *bus,
+ 	if (phylink_test(link_modes, 2500baseX_Full))
+ 		return PHY_INTERFACE_MODE_2500BASEX;
+ 
+-	if (id->base.e1000_base_t)
++	if (phylink_test(link_modes, 1000baseT_Half) ||
++	    phylink_test(link_modes, 1000baseT_Full))
+ 		return PHY_INTERFACE_MODE_SGMII;
+ 
+ 	if (phylink_test(link_modes, 1000baseX_Full))
+diff --git a/include/linux/sfp.h b/include/linux/sfp.h
+index aecafa5a07a1..7fee2f4536a4 100644
+--- a/include/linux/sfp.h
++++ b/include/linux/sfp.h
+@@ -504,7 +504,6 @@ int sfp_parse_port(struct sfp_bus *bus, const struct sfp_eeprom_id *id,
+ void sfp_parse_support(struct sfp_bus *bus, const struct sfp_eeprom_id *id,
+ 		       unsigned long *support);
+ phy_interface_t sfp_select_interface(struct sfp_bus *bus,
+-				     const struct sfp_eeprom_id *id,
+ 				     unsigned long *link_modes);
+ 
+ int sfp_get_module_info(struct sfp_bus *bus, struct ethtool_modinfo *modinfo);
+@@ -532,7 +531,6 @@ static inline void sfp_parse_support(struct sfp_bus *bus,
+ }
+ 
+ static inline phy_interface_t sfp_select_interface(struct sfp_bus *bus,
+-						   const struct sfp_eeprom_id *id,
+ 						   unsigned long *link_modes)
+ {
+ 	return PHY_INTERFACE_MODE_NA;
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/747-net-sfp-add-more-extended-compliance-codes.patch b/target/linux/generic/backport-4.19/747-net-sfp-add-more-extended-compliance-codes.patch
new file mode 100644
index 000000000000..b5aa654385fd
--- /dev/null
+++ b/target/linux/generic/backport-4.19/747-net-sfp-add-more-extended-compliance-codes.patch
@@ -0,0 +1,260 @@
+From c66a4e76c8554c84e64b9315314576ac403c6641 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Thu, 26 Sep 2019 15:14:18 +0100
+Subject: [PATCH 645/660] net: sfp: add more extended compliance codes
+
+SFF-8024 is used to define various constants re-used in several SFF
+SFP-related specifications.  Split these constants from the enum, and
+rename them to indicate that they're defined by SFF-8024.
+
+Add and use updated SFF-8024 extended compliance code definitions for
+10GBASE-T, 5GBASE-T and 2.5GBASE-T modules.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp-bus.c | 60 ++++++++++++++++------------
+ drivers/net/phy/sfp.c     |  4 +-
+ include/linux/sfp.h       | 82 ++++++++++++++++++++++++++-------------
+ 3 files changed, 93 insertions(+), 53 deletions(-)
+
+diff --git a/drivers/net/phy/sfp-bus.c b/drivers/net/phy/sfp-bus.c
+index 242475bbd112..7c37cb7a9ff1 100644
+--- a/drivers/net/phy/sfp-bus.c
++++ b/drivers/net/phy/sfp-bus.c
+@@ -123,35 +123,35 @@ int sfp_parse_port(struct sfp_bus *bus, const struct sfp_eeprom_id *id,
+ 
+ 	/* port is the physical connector, set this from the connector field. */
+ 	switch (id->base.connector) {
+-	case SFP_CONNECTOR_SC:
+-	case SFP_CONNECTOR_FIBERJACK:
+-	case SFP_CONNECTOR_LC:
+-	case SFP_CONNECTOR_MT_RJ:
+-	case SFP_CONNECTOR_MU:
+-	case SFP_CONNECTOR_OPTICAL_PIGTAIL:
++	case SFF8024_CONNECTOR_SC:
++	case SFF8024_CONNECTOR_FIBERJACK:
++	case SFF8024_CONNECTOR_LC:
++	case SFF8024_CONNECTOR_MT_RJ:
++	case SFF8024_CONNECTOR_MU:
++	case SFF8024_CONNECTOR_OPTICAL_PIGTAIL:
++	case SFF8024_CONNECTOR_MPO_1X12:
++	case SFF8024_CONNECTOR_MPO_2X16:
+ 		port = PORT_FIBRE;
+ 		break;
+ 
+-	case SFP_CONNECTOR_RJ45:
++	case SFF8024_CONNECTOR_RJ45:
+ 		port = PORT_TP;
+ 		break;
+ 
+-	case SFP_CONNECTOR_COPPER_PIGTAIL:
++	case SFF8024_CONNECTOR_COPPER_PIGTAIL:
+ 		port = PORT_DA;
+ 		break;
+ 
+-	case SFP_CONNECTOR_UNSPEC:
++	case SFF8024_CONNECTOR_UNSPEC:
+ 		if (id->base.e1000_base_t) {
+ 			port = PORT_TP;
+ 			break;
+ 		}
+ 		/* fallthrough */
+-	case SFP_CONNECTOR_SG: /* guess */
+-	case SFP_CONNECTOR_MPO_1X12:
+-	case SFP_CONNECTOR_MPO_2X16:
+-	case SFP_CONNECTOR_HSSDC_II:
+-	case SFP_CONNECTOR_NOSEPARATE:
+-	case SFP_CONNECTOR_MXC_2X16:
++	case SFF8024_CONNECTOR_SG: /* guess */
++	case SFF8024_CONNECTOR_HSSDC_II:
++	case SFF8024_CONNECTOR_NOSEPARATE:
++	case SFF8024_CONNECTOR_MXC_2X16:
+ 		port = PORT_OTHER;
+ 		break;
+ 	default:
+@@ -260,22 +260,33 @@ void sfp_parse_support(struct sfp_bus *bus, const struct sfp_eeprom_id *id,
+ 	}
+ 
+ 	switch (id->base.extended_cc) {
+-	case 0x00: /* Unspecified */
++	case SFF8024_ECC_UNSPEC:
+ 		break;
+-	case 0x02: /* 100Gbase-SR4 or 25Gbase-SR */
++	case SFF8024_ECC_100GBASE_SR4_25GBASE_SR:
+ 		phylink_set(modes, 100000baseSR4_Full);
+ 		phylink_set(modes, 25000baseSR_Full);
+ 		break;
+-	case 0x03: /* 100Gbase-LR4 or 25Gbase-LR */
+-	case 0x04: /* 100Gbase-ER4 or 25Gbase-ER */
++	case SFF8024_ECC_100GBASE_LR4_25GBASE_LR:
++	case SFF8024_ECC_100GBASE_ER4_25GBASE_ER:
+ 		phylink_set(modes, 100000baseLR4_ER4_Full);
+ 		break;
+-	case 0x0b: /* 100Gbase-CR4 or 25Gbase-CR CA-L */
+-	case 0x0c: /* 25Gbase-CR CA-S */
+-	case 0x0d: /* 25Gbase-CR CA-N */
++	case SFF8024_ECC_100GBASE_CR4:
+ 		phylink_set(modes, 100000baseCR4_Full);
++		/* fallthrough */
++	case SFF8024_ECC_25GBASE_CR_S:
++	case SFF8024_ECC_25GBASE_CR_N:
+ 		phylink_set(modes, 25000baseCR_Full);
+ 		break;
++	case SFF8024_ECC_10GBASE_T_SFI:
++	case SFF8024_ECC_10GBASE_T_SR:
++		phylink_set(modes, 10000baseT_Full);
++		break;
++	case SFF8024_ECC_5GBASE_T:
++		phylink_set(modes, 5000baseT_Full);
++		break;
++	case SFF8024_ECC_2_5GBASE_T:
++		phylink_set(modes, 2500baseT_Full);
++		break;
+ 	default:
+ 		dev_warn(bus->sfp_dev,
+ 			 "Unknown/unsupported extended compliance code: 0x%02x\n",
+@@ -300,7 +311,7 @@ void sfp_parse_support(struct sfp_bus *bus, const struct sfp_eeprom_id *id,
+ 	 */
+ 	if (bitmap_empty(modes, __ETHTOOL_LINK_MODE_MASK_NBITS)) {
+ 		/* If the encoding and bit rate allows 1000baseX */
+-		if (id->base.encoding == SFP_ENCODING_8B10B && br_nom &&
++		if (id->base.encoding == SFF8024_ENCODING_8B10B && br_nom &&
+ 		    br_min <= 1300 && br_max >= 1200)
+ 			phylink_set(modes, 1000baseX_Full);
+ 	}
+@@ -331,7 +342,8 @@ phy_interface_t sfp_select_interface(struct sfp_bus *bus,
+ 	    phylink_test(link_modes, 10000baseSR_Full) ||
+ 	    phylink_test(link_modes, 10000baseLR_Full) ||
+ 	    phylink_test(link_modes, 10000baseLRM_Full) ||
+-	    phylink_test(link_modes, 10000baseER_Full))
++	    phylink_test(link_modes, 10000baseER_Full) ||
++	    phylink_test(link_modes, 10000baseT_Full))
+ 		return PHY_INTERFACE_MODE_10GKR;
+ 
+ 	if (phylink_test(link_modes, 2500baseX_Full))
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 31ad78df90d8..bed40b5ba222 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -229,7 +229,7 @@ struct sfp {
+ 
+ static bool sff_module_supported(const struct sfp_eeprom_id *id)
+ {
+-	return id->base.phys_id == SFP_PHYS_ID_SFF &&
++	return id->base.phys_id == SFF8024_ID_SFF_8472 &&
+ 	       id->base.phys_ext_id == SFP_PHYS_EXT_ID_SFP;
+ }
+ 
+@@ -240,7 +240,7 @@ static const struct sff_data sff_data = {
+ 
+ static bool sfp_module_supported(const struct sfp_eeprom_id *id)
+ {
+-	return id->base.phys_id == SFP_PHYS_ID_SFP &&
++	return id->base.phys_id == SFF8024_ID_SFP &&
+ 	       id->base.phys_ext_id == SFP_PHYS_EXT_ID_SFP;
+ }
+ 
+diff --git a/include/linux/sfp.h b/include/linux/sfp.h
+index 7fee2f4536a4..6150b1d8402f 100644
+--- a/include/linux/sfp.h
++++ b/include/linux/sfp.h
+@@ -275,6 +275,61 @@ struct sfp_diag {
+ 	__be16 cal_v_offset;
+ } __packed;
+ 
++/* SFF8024 defined constants */
++enum {
++	SFF8024_ID_UNK			= 0x00,
++	SFF8024_ID_SFF_8472		= 0x02,
++	SFF8024_ID_SFP			= 0x03,
++	SFF8024_ID_DWDM_SFP		= 0x0b,
++	SFF8024_ID_QSFP_8438		= 0x0c,
++	SFF8024_ID_QSFP_8436_8636	= 0x0d,
++	SFF8024_ID_QSFP28_8636		= 0x11,
++
++	SFF8024_ENCODING_UNSPEC		= 0x00,
++	SFF8024_ENCODING_8B10B		= 0x01,
++	SFF8024_ENCODING_4B5B		= 0x02,
++	SFF8024_ENCODING_NRZ		= 0x03,
++	SFF8024_ENCODING_8472_MANCHESTER= 0x04,
++	SFF8024_ENCODING_8472_SONET	= 0x05,
++	SFF8024_ENCODING_8472_64B66B	= 0x06,
++	SFF8024_ENCODING_8436_MANCHESTER= 0x06,
++	SFF8024_ENCODING_8436_SONET	= 0x04,
++	SFF8024_ENCODING_8436_64B66B	= 0x05,
++	SFF8024_ENCODING_256B257B	= 0x07,
++	SFF8024_ENCODING_PAM4		= 0x08,
++
++	SFF8024_CONNECTOR_UNSPEC	= 0x00,
++	/* codes 01-05 not supportable on SFP, but some modules have single SC */
++	SFF8024_CONNECTOR_SC		= 0x01,
++	SFF8024_CONNECTOR_FIBERJACK	= 0x06,
++	SFF8024_CONNECTOR_LC		= 0x07,
++	SFF8024_CONNECTOR_MT_RJ		= 0x08,
++	SFF8024_CONNECTOR_MU		= 0x09,
++	SFF8024_CONNECTOR_SG		= 0x0a,
++	SFF8024_CONNECTOR_OPTICAL_PIGTAIL= 0x0b,
++	SFF8024_CONNECTOR_MPO_1X12	= 0x0c,
++	SFF8024_CONNECTOR_MPO_2X16	= 0x0d,
++	SFF8024_CONNECTOR_HSSDC_II	= 0x20,
++	SFF8024_CONNECTOR_COPPER_PIGTAIL= 0x21,
++	SFF8024_CONNECTOR_RJ45		= 0x22,
++	SFF8024_CONNECTOR_NOSEPARATE	= 0x23,
++	SFF8024_CONNECTOR_MXC_2X16	= 0x24,
++
++	SFF8024_ECC_UNSPEC		= 0x00,
++	SFF8024_ECC_100G_25GAUI_C2M_AOC	= 0x01,
++	SFF8024_ECC_100GBASE_SR4_25GBASE_SR = 0x02,
++	SFF8024_ECC_100GBASE_LR4_25GBASE_LR = 0x03,
++	SFF8024_ECC_100GBASE_ER4_25GBASE_ER = 0x04,
++	SFF8024_ECC_100GBASE_SR10	= 0x05,
++	SFF8024_ECC_100GBASE_CR4	= 0x0b,
++	SFF8024_ECC_25GBASE_CR_S	= 0x0c,
++	SFF8024_ECC_25GBASE_CR_N	= 0x0d,
++	SFF8024_ECC_10GBASE_T_SFI	= 0x16,
++	SFF8024_ECC_10GBASE_T_SR	= 0x1c,
++	SFF8024_ECC_5GBASE_T		= 0x1d,
++	SFF8024_ECC_2_5GBASE_T		= 0x1e,
++};
++
+ /* SFP EEPROM registers */
+ enum {
+ 	SFP_PHYS_ID			= 0x00,
+@@ -309,34 +364,7 @@ enum {
+ 	SFP_SFF8472_COMPLIANCE		= 0x5e,
+ 	SFP_CC_EXT			= 0x5f,
+ 
+-	SFP_PHYS_ID_SFF			= 0x02,
+-	SFP_PHYS_ID_SFP			= 0x03,
+ 	SFP_PHYS_EXT_ID_SFP		= 0x04,
+-	SFP_CONNECTOR_UNSPEC		= 0x00,
+-	/* codes 01-05 not supportable on SFP, but some modules have single SC */
+-	SFP_CONNECTOR_SC		= 0x01,
+-	SFP_CONNECTOR_FIBERJACK		= 0x06,
+-	SFP_CONNECTOR_LC		= 0x07,
+-	SFP_CONNECTOR_MT_RJ		= 0x08,
+-	SFP_CONNECTOR_MU		= 0x09,
+-	SFP_CONNECTOR_SG		= 0x0a,
+-	SFP_CONNECTOR_OPTICAL_PIGTAIL	= 0x0b,
+-	SFP_CONNECTOR_MPO_1X12		= 0x0c,
+-	SFP_CONNECTOR_MPO_2X16		= 0x0d,
+-	SFP_CONNECTOR_HSSDC_II		= 0x20,
+-	SFP_CONNECTOR_COPPER_PIGTAIL	= 0x21,
+-	SFP_CONNECTOR_RJ45		= 0x22,
+-	SFP_CONNECTOR_NOSEPARATE	= 0x23,
+-	SFP_CONNECTOR_MXC_2X16		= 0x24,
+-	SFP_ENCODING_UNSPEC		= 0x00,
+-	SFP_ENCODING_8B10B		= 0x01,
+-	SFP_ENCODING_4B5B		= 0x02,
+-	SFP_ENCODING_NRZ		= 0x03,
+-	SFP_ENCODING_8472_MANCHESTER	= 0x04,
+-	SFP_ENCODING_8472_SONET		= 0x05,
+-	SFP_ENCODING_8472_64B66B	= 0x06,
+-	SFP_ENCODING_256B257B		= 0x07,
+-	SFP_ENCODING_PAM4		= 0x08,
+ 	SFP_OPTIONS_HIGH_POWER_LEVEL	= BIT(13),
+ 	SFP_OPTIONS_PAGING_A2		= BIT(12),
+ 	SFP_OPTIONS_RETIMER		= BIT(11),
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/748-net-sfp-add-module-start-stop-upstream-notifications.patch b/target/linux/generic/backport-4.19/748-net-sfp-add-module-start-stop-upstream-notifications.patch
new file mode 100644
index 000000000000..d33fec6fc031
--- /dev/null
+++ b/target/linux/generic/backport-4.19/748-net-sfp-add-module-start-stop-upstream-notifications.patch
@@ -0,0 +1,142 @@
+From f9a5a54b59cb904b37bf7409a43635ab195d0214 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 19 Nov 2019 10:13:25 +0000
+Subject: [PATCH 646/660] net: sfp: add module start/stop upstream
+ notifications
+
+When dealing with some copper modules, we can't positively know the
+module capabilities are until we have probed the PHY. Without the full
+capabilities, we may end up failing a module that we could otherwise
+drive with a restricted set of capabilities.
+
+An example of this would be a module with a NBASE-T PHY plugged into
+a host that supports phy interface modes 2500BASE-X and SGMII. The
+PHY supports 10GBASE-R, 5000BASE-X, 2500BASE-X, SGMII interface modes,
+which means a subset of the capabilities are compatible with the host.
+
+However, reading the module EEPROM leads us to believe that the module
+only supports ethtool link mode 10GBASE-T, which is incompatible with
+the host - and thus results in the module being rejected.
+
+This patch adds an extra notification which are triggered after the
+SFP module's PHY probe, and a corresponding notification just before
+the PHY is removed.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp-bus.c | 21 +++++++++++++++++++++
+ drivers/net/phy/sfp.c     |  8 ++++++++
+ drivers/net/phy/sfp.h     |  2 ++
+ include/linux/sfp.h       |  4 ++++
+ 4 files changed, 35 insertions(+)
+
+diff --git a/drivers/net/phy/sfp-bus.c b/drivers/net/phy/sfp-bus.c
+index 7c37cb7a9ff1..c1ab40636611 100644
+--- a/drivers/net/phy/sfp-bus.c
++++ b/drivers/net/phy/sfp-bus.c
+@@ -711,6 +711,27 @@ void sfp_module_remove(struct sfp_bus *bus)
+ }
+ EXPORT_SYMBOL_GPL(sfp_module_remove);
+ 
++int sfp_module_start(struct sfp_bus *bus)
++{
++	const struct sfp_upstream_ops *ops = sfp_get_upstream_ops(bus);
++	int ret = 0;
++
++	if (ops && ops->module_start)
++		ret = ops->module_start(bus->upstream);
++
++	return ret;
++}
++EXPORT_SYMBOL_GPL(sfp_module_start);
++
++void sfp_module_stop(struct sfp_bus *bus)
++{
++	const struct sfp_upstream_ops *ops = sfp_get_upstream_ops(bus);
++
++	if (ops && ops->module_stop)
++		ops->module_stop(bus->upstream);
++}
++EXPORT_SYMBOL_GPL(sfp_module_stop);
++
+ static void sfp_socket_clear(struct sfp_bus *bus)
+ {
+ 	bus->sfp_dev = NULL;
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index bed40b5ba222..1bd0dae6c622 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -57,6 +57,7 @@ enum {
+ 	SFP_DEV_UP,
+ 
+ 	SFP_S_DOWN = 0,
++	SFP_S_FAIL,
+ 	SFP_S_WAIT,
+ 	SFP_S_INIT,
+ 	SFP_S_INIT_TX_FAULT,
+@@ -120,6 +121,7 @@ static const char *event_to_str(unsigned short event)
+ 
+ static const char * const sm_state_strings[] = {
+ 	[SFP_S_DOWN] = "down",
++	[SFP_S_FAIL] = "fail",
+ 	[SFP_S_WAIT] = "wait",
+ 	[SFP_S_INIT] = "init",
+ 	[SFP_S_INIT_TX_FAULT] = "init_tx_fault",
+@@ -1749,6 +1751,8 @@ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+ 		if (sfp->sm_state == SFP_S_LINK_UP &&
+ 		    sfp->sm_dev_state == SFP_DEV_UP)
+ 			sfp_sm_link_down(sfp);
++		if (sfp->sm_state > SFP_S_INIT)
++			sfp_module_stop(sfp->sfp_bus);
+ 		if (sfp->mod_phy)
+ 			sfp_sm_phy_detach(sfp);
+ 		sfp_module_tx_disable(sfp);
+@@ -1815,6 +1819,10 @@ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+ 			 * clear.  Probe for the PHY and check the LOS state.
+ 			 */
+ 			sfp_sm_probe_for_phy(sfp);
++			if (sfp_module_start(sfp->sfp_bus)) {
++				sfp_sm_next(sfp, SFP_S_FAIL, 0);
++				break;
++			}
+ 			sfp_sm_link_check_los(sfp);
+ 
+ 			/* Reset the fault retry count */
+diff --git a/drivers/net/phy/sfp.h b/drivers/net/phy/sfp.h
+index 64f54b0bbd8c..b83f70526270 100644
+--- a/drivers/net/phy/sfp.h
++++ b/drivers/net/phy/sfp.h
+@@ -22,6 +22,8 @@ void sfp_link_up(struct sfp_bus *bus);
+ void sfp_link_down(struct sfp_bus *bus);
+ int sfp_module_insert(struct sfp_bus *bus, const struct sfp_eeprom_id *id);
+ void sfp_module_remove(struct sfp_bus *bus);
++int sfp_module_start(struct sfp_bus *bus);
++void sfp_module_stop(struct sfp_bus *bus);
+ int sfp_link_configure(struct sfp_bus *bus, const struct sfp_eeprom_id *id);
+ struct sfp_bus *sfp_register_socket(struct device *dev, struct sfp *sfp,
+ 				    const struct sfp_socket_ops *ops);
+diff --git a/include/linux/sfp.h b/include/linux/sfp.h
+index 6150b1d8402f..bc65eadf7709 100644
+--- a/include/linux/sfp.h
++++ b/include/linux/sfp.h
+@@ -507,6 +507,8 @@ struct sfp_bus;
+  * @module_insert: called after a module has been detected to determine
+  *   whether the module is supported for the upstream device.
+  * @module_remove: called after the module has been removed.
++ * @module_start: called after the PHY probe step
++ * @module_stop: called before the PHY is removed
+  * @link_down: called when the link is non-operational for whatever
+  *   reason.
+  * @link_up: called when the link is operational.
+@@ -520,6 +522,8 @@ struct sfp_upstream_ops {
+ 	void (*detach)(void *priv, struct sfp_bus *bus);
+ 	int (*module_insert)(void *priv, const struct sfp_eeprom_id *id);
+ 	void (*module_remove)(void *priv);
++	int (*module_start)(void *priv);
++	void (*module_stop)(void *priv);
+ 	void (*link_down)(void *priv);
+ 	void (*link_up)(void *priv);
+ 	int (*connect_phy)(void *priv, struct phy_device *);
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/749-net-sfp-move-phy_start-phy_stop-to-phylink.patch b/target/linux/generic/backport-4.19/749-net-sfp-move-phy_start-phy_stop-to-phylink.patch
new file mode 100644
index 000000000000..89a21d9d5ef6
--- /dev/null
+++ b/target/linux/generic/backport-4.19/749-net-sfp-move-phy_start-phy_stop-to-phylink.patch
@@ -0,0 +1,79 @@
+From e2dc261b872a92a055eb2e86ac136baf9b20f2f2 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Thu, 21 Nov 2019 17:21:33 +0000
+Subject: [PATCH 647/660] net: sfp: move phy_start()/phy_stop() to phylink
+
+Move phy_start() and phy_stop() into the module_start and module_stop
+notifications in phylink, rather than having them in the SFP code.
+This gives phylink responsibility for controlling the PHY, rather
+than having SFP start and stop the PHY state machine.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c | 22 ++++++++++++++++++++++
+ drivers/net/phy/sfp.c     |  2 --
+ 2 files changed, 22 insertions(+), 2 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index 3194764b91e6..7c471114651f 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -1717,6 +1717,26 @@ static int phylink_sfp_module_insert(void *upstream,
+ 	return ret;
+ }
+ 
++static int phylink_sfp_module_start(void *upstream)
++{
++	struct phylink *pl = upstream;
++
++	/* If this SFP module has a PHY, start the PHY now. */
++	if (pl->phydev)
++		phy_start(pl->phydev);
++		
++	return 0;
++}
++
++static void phylink_sfp_module_stop(void *upstream)
++{
++	struct phylink *pl = upstream;
++
++	/* If this SFP module has a PHY, stop it. */
++	if (pl->phydev)
++		phy_stop(pl->phydev);
++}
++
+ static void phylink_sfp_link_down(void *upstream)
+ {
+ 	struct phylink *pl = upstream;
+@@ -1752,6 +1772,8 @@ static const struct sfp_upstream_ops sfp_phylink_ops = {
+ 	.attach = phylink_sfp_attach,
+ 	.detach = phylink_sfp_detach,
+ 	.module_insert = phylink_sfp_module_insert,
++	.module_start = phylink_sfp_module_start,
++	.module_stop = phylink_sfp_module_stop,
+ 	.link_up = phylink_sfp_link_up,
+ 	.link_down = phylink_sfp_link_down,
+ 	.connect_phy = phylink_sfp_connect_phy,
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 1bd0dae6c622..cc04b187cafa 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -1320,7 +1320,6 @@ static void sfp_sm_mod_next(struct sfp *sfp, unsigned int state,
+ 
+ static void sfp_sm_phy_detach(struct sfp *sfp)
+ {
+-	phy_stop(sfp->mod_phy);
+ 	sfp_remove_phy(sfp->sfp_bus);
+ 	phy_device_remove(sfp->mod_phy);
+ 	phy_device_free(sfp->mod_phy);
+@@ -1351,7 +1350,6 @@ static void sfp_sm_probe_phy(struct sfp *sfp)
+ 	}
+ 
+ 	sfp->mod_phy = phy;
+-	phy_start(phy);
+ }
+ 
+ static void sfp_sm_link_up(struct sfp *sfp)
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/750-net-mdio-i2c-add-support-for-Clause-45-accesses.patch b/target/linux/generic/backport-4.19/750-net-mdio-i2c-add-support-for-Clause-45-accesses.patch
new file mode 100644
index 000000000000..acde9f17d9ab
--- /dev/null
+++ b/target/linux/generic/backport-4.19/750-net-mdio-i2c-add-support-for-Clause-45-accesses.patch
@@ -0,0 +1,79 @@
+From c9de73988a35c6c85810a992954ac568cca503e5 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Wed, 2 Oct 2019 10:31:10 +0100
+Subject: [PATCH 648/660] net: mdio-i2c: add support for Clause 45 accesses
+
+Some SFP+ modules have PHYs on them just like SFP modules do, except
+they are Clause 45 PHYs.  The I2C protocol used to access them is
+modified slightly in order to send the device address and 16-bit
+register index.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/mdio-i2c.c | 28 ++++++++++++++++++++--------
+ 1 file changed, 20 insertions(+), 8 deletions(-)
+
+diff --git a/drivers/net/phy/mdio-i2c.c b/drivers/net/phy/mdio-i2c.c
+index 6d24fd13ca86..b2f09c8f9c3a 100644
+--- a/drivers/net/phy/mdio-i2c.c
++++ b/drivers/net/phy/mdio-i2c.c
+@@ -36,17 +36,24 @@ static int i2c_mii_read(struct mii_bus *bus, int phy_id, int reg)
+ {
+ 	struct i2c_adapter *i2c = bus->priv;
+ 	struct i2c_msg msgs[2];
+-	u8 data[2], dev_addr = reg;
++	u8 addr[3], data[2], *p;
+ 	int bus_addr, ret;
+ 
+ 	if (!i2c_mii_valid_phy_id(phy_id))
+ 		return 0xffff;
+ 
++	p = addr;
++	if (reg & MII_ADDR_C45) {
++		*p++ = 0x20 | ((reg >> 16) & 31);
++		*p++ = reg >> 8;
++	}
++	*p++ = reg;
++
+ 	bus_addr = i2c_mii_phy_addr(phy_id);
+ 	msgs[0].addr = bus_addr;
+ 	msgs[0].flags = 0;
+-	msgs[0].len = 1;
+-	msgs[0].buf = &dev_addr;
++	msgs[0].len = p - addr;
++	msgs[0].buf = addr;
+ 	msgs[1].addr = bus_addr;
+ 	msgs[1].flags = I2C_M_RD;
+ 	msgs[1].len = sizeof(data);
+@@ -64,18 +71,23 @@ static int i2c_mii_write(struct mii_bus *bus, int phy_id, int reg, u16 val)
+ 	struct i2c_adapter *i2c = bus->priv;
+ 	struct i2c_msg msg;
+ 	int ret;
+-	u8 data[3];
++	u8 data[5], *p;
+ 
+ 	if (!i2c_mii_valid_phy_id(phy_id))
+ 		return 0;
+ 
+-	data[0] = reg;
+-	data[1] = val >> 8;
+-	data[2] = val;
++	p = data;
++	if (reg & MII_ADDR_C45) {
++		*p++ = (reg >> 16) & 31;
++		*p++ = reg >> 8;
++	}
++	*p++ = reg;
++	*p++ = val >> 8;
++	*p++ = val;
+ 
+ 	msg.addr = i2c_mii_phy_addr(phy_id);
+ 	msg.flags = 0;
+-	msg.len = 3;
++	msg.len = p - data;
+ 	msg.buf = data;
+ 
+ 	ret = i2c_transfer(i2c, &msg, 1);
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/751-net-phylink-re-split-__phylink_connect_phy.patch b/target/linux/generic/backport-4.19/751-net-phylink-re-split-__phylink_connect_phy.patch
new file mode 100644
index 000000000000..3a9ecd848f4e
--- /dev/null
+++ b/target/linux/generic/backport-4.19/751-net-phylink-re-split-__phylink_connect_phy.patch
@@ -0,0 +1,98 @@
+From 0db7fba746b5608c30d4e2ba1c99a2a309e2d288 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 8 Nov 2019 15:22:48 +0000
+Subject: [PATCH 649/660] net: phylink: re-split __phylink_connect_phy()
+
+In order to support Clause 45 PHYs on SFP+ modules, which have an
+indeterminant phy interface mode, we need to be able to call
+phylink_bringup_phy() with a different interface mode to that used when
+binding the PHY. Reduce __phylink_connect_phy() to an attach operation,
+and move the call to phylink_bringup_phy() to its call sites.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c | 39 ++++++++++++++++++++++++---------------
+ 1 file changed, 24 insertions(+), 15 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index 7c471114651f..23e88117f552 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -728,11 +728,9 @@ static int phylink_bringup_phy(struct phylink *pl, struct phy_device *phy)
+ 	return 0;
+ }
+ 
+-static int __phylink_connect_phy(struct phylink *pl, struct phy_device *phy,
+-		phy_interface_t interface)
++static int phylink_attach_phy(struct phylink *pl, struct phy_device *phy,
++			      phy_interface_t interface)
+ {
+-	int ret;
+-
+ 	if (WARN_ON(pl->link_an_mode == MLO_AN_FIXED ||
+ 		    (pl->link_an_mode == MLO_AN_INBAND &&
+ 		     phy_interface_mode_is_8023z(interface))))
+@@ -741,15 +739,7 @@ static int __phylink_connect_phy(struct phylink *pl, struct phy_device *phy,
+ 	if (pl->phydev)
+ 		return -EBUSY;
+ 
+-	ret = phy_attach_direct(pl->netdev, phy, 0, interface);
+-	if (ret)
+-		return ret;
+-
+-	ret = phylink_bringup_phy(pl, phy);
+-	if (ret)
+-		phy_detach(phy);
+-
+-	return ret;
++	return phy_attach_direct(pl->netdev, phy, 0, interface);
+ }
+ 
+ /**
+@@ -769,13 +759,23 @@ static int __phylink_connect_phy(struct phylink *pl, struct phy_device *phy,
+  */
+ int phylink_connect_phy(struct phylink *pl, struct phy_device *phy)
+ {
++	int ret;
++
+ 	/* Use PHY device/driver interface */
+ 	if (pl->link_interface == PHY_INTERFACE_MODE_NA) {
+ 		pl->link_interface = phy->interface;
+ 		pl->link_config.interface = pl->link_interface;
+ 	}
+ 
+-	return __phylink_connect_phy(pl, phy, pl->link_interface);
++	ret = phylink_attach_phy(pl, phy, pl->link_interface);
++	if (ret < 0)
++		return ret;
++
++	ret = phylink_bringup_phy(pl, phy);
++	if (ret)
++		phy_detach(phy);
++
++	return ret;
+ }
+ EXPORT_SYMBOL_GPL(phylink_connect_phy);
+ 
+@@ -1759,8 +1759,17 @@ static void phylink_sfp_link_up(void *upstream)
+ static int phylink_sfp_connect_phy(void *upstream, struct phy_device *phy)
+ {
+ 	struct phylink *pl = upstream;
++	int ret;
+ 
+-	return __phylink_connect_phy(upstream, phy, pl->link_config.interface);
++	ret = phylink_attach_phy(pl, phy, pl->link_config.interface);
++	if (ret < 0)
++		return ret;
++
++	ret = phylink_bringup_phy(pl, phy);
++	if (ret)
++		phy_detach(phy);
++
++	return ret;
+ }
+ 
+ static void phylink_sfp_disconnect_phy(void *upstream)
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/752-net-phylink-support-Clause-45-PHYs-on-SFP-modules.patch b/target/linux/generic/backport-4.19/752-net-phylink-support-Clause-45-PHYs-on-SFP-modules.patch
new file mode 100644
index 000000000000..c31206ca245d
--- /dev/null
+++ b/target/linux/generic/backport-4.19/752-net-phylink-support-Clause-45-PHYs-on-SFP-modules.patch
@@ -0,0 +1,94 @@
+From caf32f96f13df7d3ae6cb8bf8001c88ae22025ca Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 8 Nov 2019 15:28:22 +0000
+Subject: [PATCH 650/660] net: phylink: support Clause 45 PHYs on SFP+ modules
+
+Some SFP+ modules have Clause 45 PHYs embedded on them, which need a
+little more handling in order to ensure that they are correctly setup,
+as they switch the PHY link mode according to the negotiated speed.
+
+With Clause 22 PHYs, we assumed that they would operate in SGMII mode,
+but this assumption is now false.  Adapt phylink to support Clause 45
+PHYs on SFP+ modules.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c | 21 ++++++++++++++++-----
+ 1 file changed, 16 insertions(+), 5 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index 23e88117f552..280512bad8ec 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -671,7 +671,8 @@ static void phylink_phy_change(struct phy_device *phydev, bool up,
+ 		   phy_duplex_to_str(phydev->duplex));
+ }
+ 
+-static int phylink_bringup_phy(struct phylink *pl, struct phy_device *phy)
++static int phylink_bringup_phy(struct phylink *pl, struct phy_device *phy,
++			       phy_interface_t interface)
+ {
+ 	struct phylink_link_state config;
+ 	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported);
+@@ -691,7 +692,7 @@ static int phylink_bringup_phy(struct phylink *pl, struct phy_device *phy)
+ 	ethtool_convert_legacy_u32_to_link_mode(supported, phy->supported);
+ 	ethtool_convert_legacy_u32_to_link_mode(config.advertising,
+ 						phy->advertising);
+-	config.interface = pl->link_config.interface;
++	config.interface = interface;
+ 
+ 	ret = phylink_validate(pl, supported, &config);
+ 	if (ret)
+@@ -707,6 +708,7 @@ static int phylink_bringup_phy(struct phylink *pl, struct phy_device *phy)
+ 	mutex_lock(&phy->lock);
+ 	mutex_lock(&pl->state_mutex);
+ 	pl->phydev = phy;
++	pl->phy_state.interface = interface;
+ 	linkmode_copy(pl->supported, supported);
+ 	linkmode_copy(pl->link_config.advertising, config.advertising);
+ 
+@@ -771,7 +773,7 @@ int phylink_connect_phy(struct phylink *pl, struct phy_device *phy)
+ 	if (ret < 0)
+ 		return ret;
+ 
+-	ret = phylink_bringup_phy(pl, phy);
++	ret = phylink_bringup_phy(pl, phy, pl->link_config.interface);
+ 	if (ret)
+ 		phy_detach(phy);
+ 
+@@ -824,7 +826,7 @@ int phylink_of_phy_connect(struct phylink *pl, struct device_node *dn,
+ 	if (!phy_dev)
+ 		return -ENODEV;
+ 
+-	ret = phylink_bringup_phy(pl, phy_dev);
++	ret = phylink_bringup_phy(pl, phy_dev, pl->link_config.interface);
+ 	if (ret)
+ 		phy_detach(phy_dev);
+ 
+@@ -1759,13 +1761,22 @@ static void phylink_sfp_link_up(void *upstream)
+ static int phylink_sfp_connect_phy(void *upstream, struct phy_device *phy)
+ {
+ 	struct phylink *pl = upstream;
++	phy_interface_t interface = pl->link_config.interface;
+ 	int ret;
+ 
+ 	ret = phylink_attach_phy(pl, phy, pl->link_config.interface);
+ 	if (ret < 0)
+ 		return ret;
+ 
+-	ret = phylink_bringup_phy(pl, phy);
++	/* Clause 45 PHYs switch their Serdes lane between several different
++	 * modes, normally 10GBASE-R, SGMII. Some use 2500BASE-X for 2.5G
++	 * speeds.  We really need to know which interface modes the PHY and
++	 * MAC supports to properly work out which linkmodes can be supported.
++	 */
++	if (phy->is_c45)
++		interface = PHY_INTERFACE_MODE_NA;
++
++	ret = phylink_bringup_phy(pl, phy, interface);
+ 	if (ret)
+ 		phy_detach(phy);
+ 
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/753-net-phylink-split-link_an_mode-configured-and-curren.patch b/target/linux/generic/backport-4.19/753-net-phylink-split-link_an_mode-configured-and-curren.patch
new file mode 100644
index 000000000000..d7076de8765e
--- /dev/null
+++ b/target/linux/generic/backport-4.19/753-net-phylink-split-link_an_mode-configured-and-curren.patch
@@ -0,0 +1,259 @@
+From d1339d6956f0255b6ce2412328a98945be8cc3ca Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Sat, 16 Nov 2019 11:30:18 +0000
+Subject: [PATCH 651/660] net: phylink: split link_an_mode configured and
+ current settings
+
+Split link_an_mode between the configured setting and the current
+operating setting.  This is an important distinction to make when we
+need to configure PHY mode for a plugged SFP+ module that does not
+use in-band signalling.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c | 59 ++++++++++++++++++++-------------------
+ 1 file changed, 31 insertions(+), 28 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index 280512bad8ec..9fac740c7c23 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -48,7 +48,8 @@ struct phylink {
+ 	unsigned long phylink_disable_state; /* bitmask of disables */
+ 	struct phy_device *phydev;
+ 	phy_interface_t link_interface;	/* PHY_INTERFACE_xxx */
+-	u8 link_an_mode;		/* MLO_AN_xxx */
++	u8 cfg_link_an_mode;		/* MLO_AN_xxx */
++	u8 cur_link_an_mode;
+ 	u8 link_port;			/* The current non-phy ethtool port */
+ 	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported);
+ 
+@@ -253,12 +254,12 @@ static int phylink_parse_mode(struct phylink *pl, struct fwnode_handle *fwnode)
+ 
+ 	dn = fwnode_get_named_child_node(fwnode, "fixed-link");
+ 	if (dn || fwnode_property_present(fwnode, "fixed-link"))
+-		pl->link_an_mode = MLO_AN_FIXED;
++		pl->cfg_link_an_mode = MLO_AN_FIXED;
+ 	fwnode_handle_put(dn);
+ 
+ 	if (fwnode_property_read_string(fwnode, "managed", &managed) == 0 &&
+ 	    strcmp(managed, "in-band-status") == 0) {
+-		if (pl->link_an_mode == MLO_AN_FIXED) {
++		if (pl->cfg_link_an_mode == MLO_AN_FIXED) {
+ 			netdev_err(pl->netdev,
+ 				   "can't use both fixed-link and in-band-status\n");
+ 			return -EINVAL;
+@@ -270,7 +271,7 @@ static int phylink_parse_mode(struct phylink *pl, struct fwnode_handle *fwnode)
+ 		phylink_set(pl->supported, Asym_Pause);
+ 		phylink_set(pl->supported, Pause);
+ 		pl->link_config.an_enabled = true;
+-		pl->link_an_mode = MLO_AN_INBAND;
++		pl->cfg_link_an_mode = MLO_AN_INBAND;
+ 
+ 		switch (pl->link_config.interface) {
+ 		case PHY_INTERFACE_MODE_SGMII:
+@@ -330,14 +331,14 @@ static void phylink_mac_config(struct phylink *pl,
+ {
+ 	netdev_dbg(pl->netdev,
+ 		   "%s: mode=%s/%s/%s/%s adv=%*pb pause=%02x link=%u an=%u\n",
+-		   __func__, phylink_an_mode_str(pl->link_an_mode),
++		   __func__, phylink_an_mode_str(pl->cur_link_an_mode),
+ 		   phy_modes(state->interface),
+ 		   phy_speed_to_str(state->speed),
+ 		   phy_duplex_to_str(state->duplex),
+ 		   __ETHTOOL_LINK_MODE_MASK_NBITS, state->advertising,
+ 		   state->pause, state->link, state->an_enabled);
+ 
+-	pl->ops->mac_config(pl->netdev, pl->link_an_mode, state);
++	pl->ops->mac_config(pl->netdev, pl->cur_link_an_mode, state);
+ }
+ 
+ static void phylink_mac_config_up(struct phylink *pl,
+@@ -446,7 +447,7 @@ static void phylink_resolve(struct work_struct *w)
+ 	} else if (pl->mac_link_dropped) {
+ 		link_state.link = false;
+ 	} else {
+-		switch (pl->link_an_mode) {
++		switch (pl->cur_link_an_mode) {
+ 		case MLO_AN_PHY:
+ 			link_state = pl->phy_state;
+ 			phylink_resolve_flow(pl, &link_state);
+@@ -483,12 +484,12 @@ static void phylink_resolve(struct work_struct *w)
+ 	if (link_state.link != netif_carrier_ok(ndev)) {
+ 		if (!link_state.link) {
+ 			netif_carrier_off(ndev);
+-			pl->ops->mac_link_down(ndev, pl->link_an_mode,
++			pl->ops->mac_link_down(ndev, pl->cur_link_an_mode,
+ 					       pl->cur_interface);
+ 			netdev_info(ndev, "Link is Down\n");
+ 		} else {
+ 			pl->cur_interface = link_state.interface;
+-			pl->ops->mac_link_up(ndev, pl->link_an_mode,
++			pl->ops->mac_link_up(ndev, pl->cur_link_an_mode,
+ 					     pl->cur_interface, pl->phydev);
+ 
+ 			netif_carrier_on(ndev);
+@@ -610,7 +611,7 @@ struct phylink *phylink_create(struct net_device *ndev,
+ 		return ERR_PTR(ret);
+ 	}
+ 
+-	if (pl->link_an_mode == MLO_AN_FIXED) {
++	if (pl->cfg_link_an_mode == MLO_AN_FIXED) {
+ 		ret = phylink_parse_fixedlink(pl, fwnode);
+ 		if (ret < 0) {
+ 			kfree(pl);
+@@ -618,6 +619,8 @@ struct phylink *phylink_create(struct net_device *ndev,
+ 		}
+ 	}
+ 
++	pl->cur_link_an_mode = pl->cfg_link_an_mode;
++
+ 	ret = phylink_register_sfp(pl, fwnode);
+ 	if (ret < 0) {
+ 		kfree(pl);
+@@ -733,8 +736,8 @@ static int phylink_bringup_phy(struct phylink *pl, struct phy_device *phy,
+ static int phylink_attach_phy(struct phylink *pl, struct phy_device *phy,
+ 			      phy_interface_t interface)
+ {
+-	if (WARN_ON(pl->link_an_mode == MLO_AN_FIXED ||
+-		    (pl->link_an_mode == MLO_AN_INBAND &&
++	if (WARN_ON(pl->cfg_link_an_mode == MLO_AN_FIXED ||
++		    (pl->cfg_link_an_mode == MLO_AN_INBAND &&
+ 		     phy_interface_mode_is_8023z(interface))))
+ 		return -EINVAL;
+ 
+@@ -801,8 +804,8 @@ int phylink_of_phy_connect(struct phylink *pl, struct device_node *dn,
+ 	int ret;
+ 
+ 	/* Fixed links and 802.3z are handled without needing a PHY */
+-	if (pl->link_an_mode == MLO_AN_FIXED ||
+-	    (pl->link_an_mode == MLO_AN_INBAND &&
++	if (pl->cfg_link_an_mode == MLO_AN_FIXED ||
++	    (pl->cfg_link_an_mode == MLO_AN_INBAND &&
+ 	     phy_interface_mode_is_8023z(pl->link_interface)))
+ 		return 0;
+ 
+@@ -813,7 +816,7 @@ int phylink_of_phy_connect(struct phylink *pl, struct device_node *dn,
+ 		phy_node = of_parse_phandle(dn, "phy-device", 0);
+ 
+ 	if (!phy_node) {
+-		if (pl->link_an_mode == MLO_AN_PHY)
++		if (pl->cfg_link_an_mode == MLO_AN_PHY)
+ 			return -ENODEV;
+ 		return 0;
+ 	}
+@@ -876,7 +879,7 @@ int phylink_fixed_state_cb(struct phylink *pl,
+ 	/* It does not make sense to let the link be overriden unless we use
+ 	 * MLO_AN_FIXED
+ 	 */
+-	if (pl->link_an_mode != MLO_AN_FIXED)
++	if (pl->cfg_link_an_mode != MLO_AN_FIXED)
+ 		return -EINVAL;
+ 
+ 	mutex_lock(&pl->state_mutex);
+@@ -926,7 +929,7 @@ void phylink_start(struct phylink *pl)
+ 	ASSERT_RTNL();
+ 
+ 	netdev_info(pl->netdev, "configuring for %s/%s link mode\n",
+-		    phylink_an_mode_str(pl->link_an_mode),
++		    phylink_an_mode_str(pl->cur_link_an_mode),
+ 		    phy_modes(pl->link_config.interface));
+ 
+ 	/* Always set the carrier off */
+@@ -948,7 +951,7 @@ void phylink_start(struct phylink *pl)
+ 	clear_bit(PHYLINK_DISABLE_STOPPED, &pl->phylink_disable_state);
+ 	phylink_run_resolve(pl);
+ 
+-	if (pl->link_an_mode == MLO_AN_FIXED && pl->link_gpio) {
++	if (pl->cfg_link_an_mode == MLO_AN_FIXED && pl->link_gpio) {
+ 		int irq = gpiod_to_irq(pl->link_gpio);
+ 
+ 		if (irq > 0) {
+@@ -963,7 +966,7 @@ void phylink_start(struct phylink *pl)
+ 		if (irq <= 0)
+ 			mod_timer(&pl->link_poll, jiffies + HZ);
+ 	}
+-	if (pl->link_an_mode == MLO_AN_FIXED && pl->get_fixed_state)
++	if (pl->cfg_link_an_mode == MLO_AN_FIXED && pl->get_fixed_state)
+ 		mod_timer(&pl->link_poll, jiffies + HZ);
+ 	if (pl->phydev)
+ 		phy_start(pl->phydev);
+@@ -1090,7 +1093,7 @@ int phylink_ethtool_ksettings_get(struct phylink *pl,
+ 
+ 	linkmode_copy(kset->link_modes.supported, pl->supported);
+ 
+-	switch (pl->link_an_mode) {
++	switch (pl->cur_link_an_mode) {
+ 	case MLO_AN_FIXED:
+ 		/* We are using fixed settings. Report these as the
+ 		 * current link settings - and note that these also
+@@ -1163,7 +1166,7 @@ int phylink_ethtool_ksettings_set(struct phylink *pl,
+ 		/* If we have a fixed link (as specified by firmware), refuse
+ 		 * to change link parameters.
+ 		 */
+-		if (pl->link_an_mode == MLO_AN_FIXED &&
++		if (pl->cur_link_an_mode == MLO_AN_FIXED &&
+ 		    (s->speed != pl->link_config.speed ||
+ 		     s->duplex != pl->link_config.duplex))
+ 			return -EINVAL;
+@@ -1175,7 +1178,7 @@ int phylink_ethtool_ksettings_set(struct phylink *pl,
+ 		__clear_bit(ETHTOOL_LINK_MODE_Autoneg_BIT, config.advertising);
+ 	} else {
+ 		/* If we have a fixed link, refuse to enable autonegotiation */
+-		if (pl->link_an_mode == MLO_AN_FIXED)
++		if (pl->cur_link_an_mode == MLO_AN_FIXED)
+ 			return -EINVAL;
+ 
+ 		config.speed = SPEED_UNKNOWN;
+@@ -1217,7 +1220,7 @@ int phylink_ethtool_ksettings_set(struct phylink *pl,
+ 	 * configuration. For a fixed link, this isn't able to change any
+ 	 * parameters, which just leaves inband mode.
+ 	 */
+-	if (pl->link_an_mode == MLO_AN_INBAND &&
++	if (pl->cur_link_an_mode == MLO_AN_INBAND &&
+ 	    !test_bit(PHYLINK_DISABLE_STOPPED, &pl->phylink_disable_state)) {
+ 		phylink_mac_config(pl, &pl->link_config);
+ 		phylink_mac_an_restart(pl);
+@@ -1307,7 +1310,7 @@ int phylink_ethtool_set_pauseparam(struct phylink *pl,
+ 				   pause->tx_pause);
+ 	} else if (!test_bit(PHYLINK_DISABLE_STOPPED,
+ 			     &pl->phylink_disable_state)) {
+-		switch (pl->link_an_mode) {
++		switch (pl->cur_link_an_mode) {
+ 		case MLO_AN_FIXED:
+ 			/* Should we allow fixed links to change against the config? */
+ 			phylink_resolve_flow(pl, config);
+@@ -1496,7 +1499,7 @@ static int phylink_mii_read(struct phylink *pl, unsigned int phy_id,
+ 	struct phylink_link_state state;
+ 	int val = 0xffff;
+ 
+-	switch (pl->link_an_mode) {
++	switch (pl->cur_link_an_mode) {
+ 	case MLO_AN_FIXED:
+ 		if (phy_id == 0) {
+ 			phylink_get_fixed_state(pl, &state);
+@@ -1524,7 +1527,7 @@ static int phylink_mii_read(struct phylink *pl, unsigned int phy_id,
+ static int phylink_mii_write(struct phylink *pl, unsigned int phy_id,
+ 			     unsigned int reg, unsigned int val)
+ {
+-	switch (pl->link_an_mode) {
++	switch (pl->cur_link_an_mode) {
+ 	case MLO_AN_FIXED:
+ 		break;
+ 
+@@ -1698,10 +1701,10 @@ static int phylink_sfp_module_insert(void *upstream,
+ 		linkmode_copy(pl->link_config.advertising, config.advertising);
+ 	}
+ 
+-	if (pl->link_an_mode != MLO_AN_INBAND ||
++	if (pl->cur_link_an_mode != MLO_AN_INBAND ||
+ 	    pl->link_config.interface != config.interface) {
+ 		pl->link_config.interface = config.interface;
+-		pl->link_an_mode = MLO_AN_INBAND;
++		pl->cur_link_an_mode = MLO_AN_INBAND;
+ 
+ 		changed = true;
+ 
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/754-net-phylink-split-phylink_sfp_module_insert.patch b/target/linux/generic/backport-4.19/754-net-phylink-split-phylink_sfp_module_insert.patch
new file mode 100644
index 000000000000..e6fdb03a0d13
--- /dev/null
+++ b/target/linux/generic/backport-4.19/754-net-phylink-split-phylink_sfp_module_insert.patch
@@ -0,0 +1,125 @@
+From 36569971241ae6b81376da4937d2c8760122d10b Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Thu, 21 Nov 2019 17:58:58 +0000
+Subject: [PATCH 652/660] net: phylink: split phylink_sfp_module_insert()
+
+Split out the configuration step from phylink_sfp_module_insert() so
+we can re-use this later.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c | 47 +++++++++++++++++++++++----------------
+ 1 file changed, 28 insertions(+), 19 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index 9fac740c7c23..21e3def853e5 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -1633,25 +1633,21 @@ static void phylink_sfp_detach(void *upstream, struct sfp_bus *bus)
+ 	pl->netdev->sfp_bus = NULL;
+ }
+ 
+-static int phylink_sfp_module_insert(void *upstream,
+-				     const struct sfp_eeprom_id *id)
++static int phylink_sfp_config(struct phylink *pl, u8 mode, u8 port,
++			      const unsigned long *supported,
++			      const unsigned long *advertising)
+ {
+-	struct phylink *pl = upstream;
+-	__ETHTOOL_DECLARE_LINK_MODE_MASK(support) = { 0, };
+ 	__ETHTOOL_DECLARE_LINK_MODE_MASK(support1);
++	__ETHTOOL_DECLARE_LINK_MODE_MASK(support);
+ 	struct phylink_link_state config;
+ 	phy_interface_t iface;
+-	int ret = 0;
+ 	bool changed;
+-	u8 port;
+-
+-	ASSERT_RTNL();
++	int ret;
+ 
+-	sfp_parse_support(pl->sfp_bus, id, support);
+-	port = sfp_parse_port(pl->sfp_bus, id, support);
++	linkmode_copy(support, supported);
+ 
+ 	memset(&config, 0, sizeof(config));
+-	linkmode_copy(config.advertising, support);
++	linkmode_copy(config.advertising, advertising);
+ 	config.interface = PHY_INTERFACE_MODE_NA;
+ 	config.speed = SPEED_UNKNOWN;
+ 	config.duplex = DUPLEX_UNKNOWN;
+@@ -1666,8 +1662,6 @@ static int phylink_sfp_module_insert(void *upstream,
+ 		return ret;
+ 	}
+ 
+-	linkmode_copy(support1, support);
+-
+ 	iface = sfp_select_interface(pl->sfp_bus, config.advertising);
+ 	if (iface == PHY_INTERFACE_MODE_NA) {
+ 		netdev_err(pl->netdev,
+@@ -1677,18 +1671,18 @@ static int phylink_sfp_module_insert(void *upstream,
+ 	}
+ 
+ 	config.interface = iface;
++	linkmode_copy(support1, support);
+ 	ret = phylink_validate(pl, support1, &config);
+ 	if (ret) {
+ 		netdev_err(pl->netdev, "validation of %s/%s with support %*pb failed: %d\n",
+-			   phylink_an_mode_str(MLO_AN_INBAND),
++			   phylink_an_mode_str(mode),
+ 			   phy_modes(config.interface),
+ 			   __ETHTOOL_LINK_MODE_MASK_NBITS, support, ret);
+ 		return ret;
+ 	}
+ 
+ 	netdev_dbg(pl->netdev, "requesting link mode %s/%s with support %*pb\n",
+-		   phylink_an_mode_str(MLO_AN_INBAND),
+-		   phy_modes(config.interface),
++		   phylink_an_mode_str(mode), phy_modes(config.interface),
+ 		   __ETHTOOL_LINK_MODE_MASK_NBITS, support);
+ 
+ 	if (phy_interface_mode_is_8023z(iface) && pl->phydev)
+@@ -1701,15 +1695,15 @@ static int phylink_sfp_module_insert(void *upstream,
+ 		linkmode_copy(pl->link_config.advertising, config.advertising);
+ 	}
+ 
+-	if (pl->cur_link_an_mode != MLO_AN_INBAND ||
++	if (pl->cur_link_an_mode != mode ||
+ 	    pl->link_config.interface != config.interface) {
+ 		pl->link_config.interface = config.interface;
+-		pl->cur_link_an_mode = MLO_AN_INBAND;
++		pl->cur_link_an_mode = mode;
+ 
+ 		changed = true;
+ 
+ 		netdev_info(pl->netdev, "switched to %s/%s link mode\n",
+-			    phylink_an_mode_str(MLO_AN_INBAND),
++			    phylink_an_mode_str(mode),
+ 			    phy_modes(config.interface));
+ 	}
+ 
+@@ -1722,6 +1716,21 @@ static int phylink_sfp_module_insert(void *upstream,
+ 	return ret;
+ }
+ 
++static int phylink_sfp_module_insert(void *upstream,
++				     const struct sfp_eeprom_id *id)
++{
++	struct phylink *pl = upstream;
++	__ETHTOOL_DECLARE_LINK_MODE_MASK(support) = { 0, };
++	u8 port;
++
++	ASSERT_RTNL();
++
++	sfp_parse_support(pl->sfp_bus, id, support);
++	port = sfp_parse_port(pl->sfp_bus, id, support);
++
++	return phylink_sfp_config(pl, MLO_AN_INBAND, port, support, support);
++}
++
+ static int phylink_sfp_module_start(void *upstream)
+ {
+ 	struct phylink *pl = upstream;
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/755-net-phylink-delay-MAC-configuration-for-copper-SFP-m.patch b/target/linux/generic/backport-4.19/755-net-phylink-delay-MAC-configuration-for-copper-SFP-m.patch
new file mode 100644
index 000000000000..ba661c30e727
--- /dev/null
+++ b/target/linux/generic/backport-4.19/755-net-phylink-delay-MAC-configuration-for-copper-SFP-m.patch
@@ -0,0 +1,213 @@
+From eb514428f75bc67d12ff019c44a8f8ca9f33c54c Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Thu, 21 Nov 2019 17:42:49 +0000
+Subject: [PATCH 653/660] net: phylink: delay MAC configuration for copper SFP
+ modules
+
+Knowing whether we need to delay the MAC configuration because a module
+may have a PHY is useful to phylink to allow NBASE-T modules to work on
+systems supporting no more than 2.5G speeds.
+
+This commit allows us to delay such configuration until after the PHY
+has been probed by recording the parsed capabilities, and if the module
+may have a PHY, doing no more until the module_start() notification is
+called.  At that point, we either have a PHY, or we don't.
+
+We move the PHY-based setup a little later, and use the PHYs support
+capabilities rather than the EEPROM parsed capabilities to determine
+whether we can support the PHY.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c | 59 +++++++++++++++++++++++++++++++--------
+ drivers/net/phy/sfp-bus.c | 28 +++++++++++++++++++
+ include/linux/sfp.h       |  7 +++++
+ 3 files changed, 83 insertions(+), 11 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index 21e3def853e5..7a7fdb8a7c3d 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -72,6 +72,9 @@ struct phylink {
+ 	bool mac_link_dropped;
+ 
+ 	struct sfp_bus *sfp_bus;
++	bool sfp_may_have_phy;
++	__ETHTOOL_DECLARE_LINK_MODE_MASK(sfp_support);
++	u8 sfp_port;
+ };
+ 
+ static inline void linkmode_zero(unsigned long *dst)
+@@ -1633,7 +1636,7 @@ static void phylink_sfp_detach(void *upstream, struct sfp_bus *bus)
+ 	pl->netdev->sfp_bus = NULL;
+ }
+ 
+-static int phylink_sfp_config(struct phylink *pl, u8 mode, u8 port,
++static int phylink_sfp_config(struct phylink *pl, u8 mode,
+ 			      const unsigned long *supported,
+ 			      const unsigned long *advertising)
+ {
+@@ -1707,7 +1710,7 @@ static int phylink_sfp_config(struct phylink *pl, u8 mode, u8 port,
+ 			    phy_modes(config.interface));
+ 	}
+ 
+-	pl->link_port = port;
++	pl->link_port = pl->sfp_port;
+ 
+ 	if (changed && !test_bit(PHYLINK_DISABLE_STOPPED,
+ 				 &pl->phylink_disable_state))
+@@ -1720,15 +1723,20 @@ static int phylink_sfp_module_insert(void *upstream,
+ 				     const struct sfp_eeprom_id *id)
+ {
+ 	struct phylink *pl = upstream;
+-	__ETHTOOL_DECLARE_LINK_MODE_MASK(support) = { 0, };
+-	u8 port;
++	unsigned long *support = pl->sfp_support;
+ 
+ 	ASSERT_RTNL();
+ 
++	linkmode_zero(support);
+ 	sfp_parse_support(pl->sfp_bus, id, support);
+-	port = sfp_parse_port(pl->sfp_bus, id, support);
++	pl->sfp_port = sfp_parse_port(pl->sfp_bus, id, support);
+ 
+-	return phylink_sfp_config(pl, MLO_AN_INBAND, port, support, support);
++	/* If this module may have a PHY connecting later, defer until later */
++	pl->sfp_may_have_phy = sfp_may_have_phy(pl->sfp_bus, id);
++	if (pl->sfp_may_have_phy)
++		return 0;
++
++	return phylink_sfp_config(pl, MLO_AN_INBAND, support, support);
+ }
+ 
+ static int phylink_sfp_module_start(void *upstream)
+@@ -1736,10 +1744,19 @@ static int phylink_sfp_module_start(void *upstream)
+ 	struct phylink *pl = upstream;
+ 
+ 	/* If this SFP module has a PHY, start the PHY now. */
+-	if (pl->phydev)
++	if (pl->phydev) {
+ 		phy_start(pl->phydev);
+-		
+-	return 0;
++		return 0;
++	}
++
++	/* If the module may have a PHY but we didn't detect one we
++	 * need to configure the MAC here.
++	 */
++	if (!pl->sfp_may_have_phy)
++		return 0;
++
++	return phylink_sfp_config(pl, MLO_AN_INBAND,
++				  pl->sfp_support, pl->sfp_support);
+ }
+ 
+ static void phylink_sfp_module_stop(void *upstream)
+@@ -1773,10 +1790,30 @@ static void phylink_sfp_link_up(void *upstream)
+ static int phylink_sfp_connect_phy(void *upstream, struct phy_device *phy)
+ {
+ 	struct phylink *pl = upstream;
+-	phy_interface_t interface = pl->link_config.interface;
++	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported);
++	__ETHTOOL_DECLARE_LINK_MODE_MASK(advertising);
++	phy_interface_t interface;
+ 	int ret;
+ 
+-	ret = phylink_attach_phy(pl, phy, pl->link_config.interface);
++	/*
++	 * This is the new way of dealing with flow control for PHYs,
++	 * as described by Timur Tabi in commit 529ed1275263 ("net: phy:
++	 * phy drivers should not set SUPPORTED_[Asym_]Pause") except
++	 * using our validate call to the MAC, we rely upon the MAC
++	 * clearing the bits from both supported and advertising fields.
++	 */
++	phy_support_asym_pause(phy);
++
++	ethtool_convert_legacy_u32_to_link_mode(supported, phy->supported);
++	ethtool_convert_legacy_u32_to_link_mode(advertising, phy->advertising);
++
++	/* Do the initial configuration */
++	ret = phylink_sfp_config(pl, ML_AN_INBAND, supported, advertising);
++	if (ret < 0)
++		return ret;
++
++	interface = pl->link_config.interface;
++	ret = phylink_attach_phy(pl, phy, interface);
+ 	if (ret < 0)
+ 		return ret;
+ 
+diff --git a/drivers/net/phy/sfp-bus.c b/drivers/net/phy/sfp-bus.c
+index c1ab40636611..75ef8722e15c 100644
+--- a/drivers/net/phy/sfp-bus.c
++++ b/drivers/net/phy/sfp-bus.c
+@@ -102,6 +102,7 @@ static const struct sfp_quirk *sfp_lookup_quirk(const struct sfp_eeprom_id *id)
+ 
+ 	return NULL;
+ }
++
+ /**
+  * sfp_parse_port() - Parse the EEPROM base ID, setting the port type
+  * @bus: a pointer to the &struct sfp_bus structure for the sfp module
+@@ -177,6 +178,33 @@ int sfp_parse_port(struct sfp_bus *bus, const struct sfp_eeprom_id *id,
+ }
+ EXPORT_SYMBOL_GPL(sfp_parse_port);
+ 
++/**
++ * sfp_may_have_phy() - indicate whether the module may have a PHY
++ * @bus: a pointer to the &struct sfp_bus structure for the sfp module
++ * @id: a pointer to the module's &struct sfp_eeprom_id
++ *
++ * Parse the EEPROM identification given in @id, and return whether
++ * this module may have a PHY.
++ */
++bool sfp_may_have_phy(struct sfp_bus *bus, const struct sfp_eeprom_id *id)
++{
++	if (id->base.e1000_base_t)
++		return true;
++
++	if (id->base.phys_id != SFF8024_ID_DWDM_SFP) {
++		switch (id->base.extended_cc) {
++		case SFF8024_ECC_10GBASE_T_SFI:
++		case SFF8024_ECC_10GBASE_T_SR:
++		case SFF8024_ECC_5GBASE_T:
++		case SFF8024_ECC_2_5GBASE_T:
++			return true;
++		}
++	}
++
++	return false;
++}
++EXPORT_SYMBOL_GPL(sfp_may_have_phy);
++
+ /**
+  * sfp_parse_support() - Parse the eeprom id for supported link modes
+  * @bus: a pointer to the &struct sfp_bus structure for the sfp module
+diff --git a/include/linux/sfp.h b/include/linux/sfp.h
+index bc65eadf7709..aae45ea43953 100644
+--- a/include/linux/sfp.h
++++ b/include/linux/sfp.h
+@@ -533,6 +533,7 @@ struct sfp_upstream_ops {
+ #if IS_ENABLED(CONFIG_SFP)
+ int sfp_parse_port(struct sfp_bus *bus, const struct sfp_eeprom_id *id,
+ 		   unsigned long *support);
++bool sfp_may_have_phy(struct sfp_bus *bus, const struct sfp_eeprom_id *id);
+ void sfp_parse_support(struct sfp_bus *bus, const struct sfp_eeprom_id *id,
+ 		       unsigned long *support);
+ phy_interface_t sfp_select_interface(struct sfp_bus *bus,
+@@ -556,6 +557,12 @@ static inline int sfp_parse_port(struct sfp_bus *bus,
+ 	return PORT_OTHER;
+ }
+ 
++static inline bool sfp_may_have_phy(struct sfp_bus *bus,
++				    const struct sfp_eeprom_id *id)
++{
++	return false;
++}
++
+ static inline void sfp_parse_support(struct sfp_bus *bus,
+ 				     const struct sfp_eeprom_id *id,
+ 				     unsigned long *support)
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/756-net-phylink-make-Broadcom-BCM84881-based-SFPs-work.patch b/target/linux/generic/backport-4.19/756-net-phylink-make-Broadcom-BCM84881-based-SFPs-work.patch
new file mode 100644
index 000000000000..b2d8e1543ee1
--- /dev/null
+++ b/target/linux/generic/backport-4.19/756-net-phylink-make-Broadcom-BCM84881-based-SFPs-work.patch
@@ -0,0 +1,63 @@
+From 3d8592a23dd67fb78ad85ddf711a059d3880fcb4 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 8 Nov 2019 17:19:16 +0000
+Subject: [PATCH 654/660] net: phylink: make Broadcom BCM84881 based SFPs work
+
+The Broadcom BCM84881 does not appear to send the SGMII control word
+when operating in SGMII mode, which causes network adapters to fail
+to link with the PHY, or decide to operate at fixed 1G speed, even if
+the PHY negotiated 100M.
+
+Work around this by detecting the Broadcom BCM84881 and switch to phy
+mode rather than inband mode.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c | 17 ++++++++++++++++-
+ 1 file changed, 16 insertions(+), 1 deletion(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index 7a7fdb8a7c3d..7495342747f9 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -1787,12 +1787,22 @@ static void phylink_sfp_link_up(void *upstream)
+ 	phylink_run_resolve(pl);
+ }
+ 
++/* The Broadcom BCM84881 in the Methode DM7052 is unable to provide a SGMII
++ * or 802.3z control word, so inband will not work.
++ */
++static bool phylink_phy_no_inband(struct phy_device *phy)
++{
++	return phy->is_c45 &&
++		(phy->c45_ids.device_ids[1] & 0xfffffff0) == 0xae025150;
++}
++
+ static int phylink_sfp_connect_phy(void *upstream, struct phy_device *phy)
+ {
+ 	struct phylink *pl = upstream;
+ 	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported);
+ 	__ETHTOOL_DECLARE_LINK_MODE_MASK(advertising);
+ 	phy_interface_t interface;
++	u8 mode;
+ 	int ret;
+ 
+ 	/*
+@@ -1807,8 +1817,13 @@ static int phylink_sfp_connect_phy(void *upstream, struct phy_device *phy)
+ 	ethtool_convert_legacy_u32_to_link_mode(supported, phy->supported);
+ 	ethtool_convert_legacy_u32_to_link_mode(advertising, phy->advertising);
+ 
++	if (phylink_phy_no_inband(phy))
++		mode = MLO_AN_PHY;
++	else
++		mode = MLO_AN_INBAND;
++
+ 	/* Do the initial configuration */
+-	ret = phylink_sfp_config(pl, ML_AN_INBAND, supported, advertising);
++	ret = phylink_sfp_config(pl, mode, supported, advertising);
+ 	if (ret < 0)
+ 		return ret;
+ 
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/757-net-phy-add-Broadcom-BCM84881-PHY-driver.patch b/target/linux/generic/backport-4.19/757-net-phy-add-Broadcom-BCM84881-PHY-driver.patch
new file mode 100644
index 000000000000..f582096300b3
--- /dev/null
+++ b/target/linux/generic/backport-4.19/757-net-phy-add-Broadcom-BCM84881-PHY-driver.patch
@@ -0,0 +1,343 @@
+From 0f669e10ede7f06bb998373de6a9d169f47fcc66 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 5 Nov 2019 11:54:30 +0000
+Subject: [PATCH 655/660] net: phy: add Broadcom BCM84881 PHY driver
+
+Add a rudimentary Clause 45 driver for the BCM84881 PHY, found on
+Methode DM7052 SFPs.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/Kconfig    |   5 +
+ drivers/net/phy/Makefile   |   1 +
+ drivers/net/phy/bcm84881.c | 290 +++++++++++++++++++++++++++++++++++++
+ 3 files changed, 296 insertions(+)
+ create mode 100644 drivers/net/phy/bcm84881.c
+
+diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
+index 060c3be1686e..ae007ecb6b7c 100644
+--- a/drivers/net/phy/Kconfig
++++ b/drivers/net/phy/Kconfig
+@@ -363,6 +363,11 @@ config BROADCOM_PHY
+ 	  Currently supports the BCM5411, BCM5421, BCM5461, BCM54616S, BCM5464,
+ 	  BCM5481, BCM54810 and BCM5482 PHYs.
+ 
++config BCM84881_PHY
++	tristate "Broadcom BCM84881 PHY"
++	---help---
++	  Support the Broadcom BCM84881 PHY.
++
+ config CICADA_PHY
+ 	tristate "Cicada PHYs"
+ 	---help---
+diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
+index 54a9cadb91d5..1fa78855157b 100644
+--- a/drivers/net/phy/Makefile
++++ b/drivers/net/phy/Makefile
+@@ -69,6 +69,7 @@ obj-$(CONFIG_BCM87XX_PHY)	+= bcm87xx.o
+ obj-$(CONFIG_BCM_CYGNUS_PHY)	+= bcm-cygnus.o
+ obj-$(CONFIG_BCM_NET_PHYLIB)	+= bcm-phy-lib.o
+ obj-$(CONFIG_BROADCOM_PHY)	+= broadcom.o
++obj-$(CONFIG_BCM84881_PHY)	+= bcm84881.o
+ obj-$(CONFIG_CICADA_PHY)	+= cicada.o
+ obj-$(CONFIG_CORTINA_PHY)	+= cortina.o
+ obj-$(CONFIG_DAVICOM_PHY)	+= davicom.o
+diff --git a/drivers/net/phy/bcm84881.c b/drivers/net/phy/bcm84881.c
+new file mode 100644
+index 000000000000..4ece4c8207f2
+--- /dev/null
++++ b/drivers/net/phy/bcm84881.c
+@@ -0,0 +1,290 @@
++// SPDX-License-Identifier: GPL-2.0
++// Broadcom BCM84881 NBASE-T PHY driver, as found on a SFP+ module.
++// Copyright (C) 2019 Russell King, Deep Blue Solutions Ltd.
++//
++// Like the Marvell 88x3310, the Broadcom 84881 changes its host-side
++// interface according to the operating speed between 10GBASE-R,
++// 2500BASE-X and SGMII (but unlike the 88x3310, without the control
++// word).
++//
++// This driver only supports those aspects of the PHY that I'm able to
++// observe and test with the SFP+ module, which is an incomplete subset
++// of what this PHY is able to support. For example, I only assume it
++// supports a single lane Serdes connection, but it may be that the PHY
++// is able to support more than that.
++#include <linux/delay.h>
++#include <linux/module.h>
++#include <linux/phy.h>
++
++enum {
++	MDIO_AN_C22 = 0xffe0,
++};
++
++static int bcm84881_wait_init(struct phy_device *phydev)
++{
++	unsigned int tries = 20;
++	int ret, val;
++
++	do {
++		val = phy_read_mmd(phydev, MDIO_MMD_PMAPMD, MDIO_CTRL1);
++		if (val < 0) {
++			ret = val;
++			break;
++		}
++		if (!(val & MDIO_CTRL1_RESET)) {
++			ret = 0;
++			break;
++		}
++		if (!--tries) {
++			ret = -ETIMEDOUT;
++			break;
++		}
++		msleep(100);
++	} while (1);
++
++	if (ret)
++		phydev_err(phydev, "%s failed: %d\n", __func__, ret);
++
++	return ret;
++}
++
++static int bcm84881_config_init(struct phy_device *phydev)
++{
++	switch (phydev->interface) {
++	case PHY_INTERFACE_MODE_SGMII:
++	case PHY_INTERFACE_MODE_2500BASEX:
++	case PHY_INTERFACE_MODE_10GKR:
++		break;
++	default:
++		return -ENODEV;
++	}
++	return 0;
++}
++
++static int bcm84881_probe(struct phy_device *phydev)
++{
++	/* This driver requires PMAPMD and AN blocks */
++	const u32 mmd_mask = MDIO_DEVS_PMAPMD | MDIO_DEVS_AN;
++
++	if (!phydev->is_c45 ||
++	    (phydev->c45_ids.devices_in_package & mmd_mask) != mmd_mask)
++		return -ENODEV;
++
++	return 0;
++}
++
++static int genphy_c45_an_config_aneg(struct phy_device *phydev)
++{
++	bool changed = false;
++	u32 advertising;
++	int ret;
++
++	phydev->advertising &= phydev->supported;
++	advertising = phydev->advertising;
++
++	ret = phy_modify_mmd_changed(phydev, MDIO_MMD_AN, MDIO_AN_ADVERTISE,
++				     ADVERTISE_ALL | ADVERTISE_100BASE4 |
++				     ADVERTISE_PAUSE_CAP | ADVERTISE_PAUSE_ASYM,
++				     ethtool_adv_to_mii_adv_t(advertising));
++	if (ret < 0)
++		return ret;
++	if (ret > 0)
++		changed = true;
++
++	ret = phy_modify_mmd_changed(phydev, MDIO_MMD_AN, MDIO_AN_10GBT_CTRL,
++				     MDIO_AN_10GBT_CTRL_ADV10G,
++				     advertising & ADVERTISED_10000baseT_Full ?
++					MDIO_AN_10GBT_CTRL_ADV10G : 0);
++	if (ret < 0)
++		return ret;
++	if (ret > 0)
++		changed = true;
++
++	return genphy_c45_check_and_restart_aneg(phydev, changed);
++}
++
++static int bcm84881_config_aneg(struct phy_device *phydev)
++{
++	bool changed = false;
++	u32 adv;
++	int ret;
++
++	/* Wait for the PHY to finish initialising, otherwise our
++	 * advertisement may be overwritten.
++	 */
++	ret = bcm84881_wait_init(phydev);
++	if (ret)
++		return ret;
++
++	/* We don't support manual MDI control */
++	phydev->mdix_ctrl = ETH_TP_MDI_AUTO;
++
++	/* disabled autoneg doesn't seem to work with this PHY */
++	if (phydev->autoneg == AUTONEG_DISABLE)
++		return -EINVAL;
++
++	ret = genphy_c45_an_config_aneg(phydev);
++	if (ret < 0)
++		return ret;
++	if (ret > 0)
++		changed = true;
++
++	adv = ethtool_adv_to_mii_ctrl1000_t(phydev->advertising);
++	ret = phy_modify_mmd_changed(phydev, MDIO_MMD_AN,
++				     MDIO_AN_C22 + MII_CTRL1000,
++				     ADVERTISE_1000FULL | ADVERTISE_1000HALF,
++				     adv);
++	if (ret < 0)
++		return ret;
++	if (ret > 0)
++		changed = true;
++
++	return genphy_c45_check_and_restart_aneg(phydev, changed);
++}
++
++static int bcm84881_aneg_done(struct phy_device *phydev)
++{
++	int bmsr, val;
++
++	val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_STAT1);
++	if (val < 0)
++		return val;
++
++	bmsr = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_C22 + MII_BMSR);
++	if (bmsr < 0)
++		return val;
++
++	return !!(val & MDIO_AN_STAT1_COMPLETE) &&
++	       !!(bmsr & BMSR_ANEGCOMPLETE);
++}
++
++static int bcm84881_read_status(struct phy_device *phydev)
++{
++	bool autoneg_complete;
++	unsigned int mode;
++	int bmsr, val;
++
++	val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_CTRL1);
++	if (val < 0)
++		return val;
++
++	if (val & MDIO_AN_CTRL1_RESTART) {
++		phydev->link = 0;
++		return 0;
++	}
++
++	val = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_STAT1);
++	if (val < 0)
++		return val;
++
++	bmsr = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_AN_C22 + MII_BMSR);
++	if (bmsr < 0)
++		return val;
++
++	autoneg_complete = !!(val & MDIO_AN_STAT1_COMPLETE) &&
++			   !!(bmsr & BMSR_ANEGCOMPLETE);
++	phydev->link = !!(val & MDIO_STAT1_LSTATUS) &&
++		       !!(bmsr & BMSR_LSTATUS);
++	if (phydev->autoneg == AUTONEG_ENABLE && !autoneg_complete)
++		phydev->link = false;
++
++	if (!phydev->link)
++		return 0;
++
++	phydev->lp_advertising = 0;
++	phydev->speed = SPEED_UNKNOWN;
++	phydev->duplex = DUPLEX_UNKNOWN;
++	phydev->pause = 0;
++	phydev->asym_pause = 0;
++	phydev->mdix = 0;
++
++	if (autoneg_complete) {
++		val = genphy_c45_read_lpa(phydev);
++		if (val < 0)
++			return val;
++
++		val = phy_read_mmd(phydev, MDIO_MMD_AN,
++				   MDIO_AN_C22 + MII_STAT1000);
++		if (val < 0)
++			return val;
++
++		phydev->lp_advertising |= mii_stat1000_to_ethtool_lpa_t(val);
++
++		if (phydev->autoneg == AUTONEG_ENABLE)
++			phy_resolve_aneg_linkmode(phydev);
++	}
++
++	if (phydev->autoneg == AUTONEG_DISABLE) {
++		/* disabled autoneg doesn't seem to work, so force the link
++		 * down.
++		 */
++		phydev->link = 0;
++		return 0;
++	}
++
++	/* Set the host link mode - we set the phy interface mode and
++	 * the speed according to this register so that downshift works.
++	 * We leave the duplex setting as per the resolution from the
++	 * above.
++	 */
++	val = phy_read_mmd(phydev, MDIO_MMD_VEND1, 0x4011);
++	mode = (val & 0x1e) >> 1;
++	if (mode == 1 || mode == 2)
++		phydev->interface = PHY_INTERFACE_MODE_SGMII;
++	else if (mode == 3)
++		phydev->interface = PHY_INTERFACE_MODE_10GKR;
++	else if (mode == 4)
++		phydev->interface = PHY_INTERFACE_MODE_2500BASEX;
++	switch (mode & 7) {
++	case 1:
++		phydev->speed = SPEED_100;
++		break;
++	case 2:
++		phydev->speed = SPEED_1000;
++		break;
++	case 3:
++		phydev->speed = SPEED_10000;
++		break;
++	case 4:
++		phydev->speed = SPEED_2500;
++		break;
++	case 5:
++		phydev->speed = SPEED_5000;
++		break;
++	}
++
++	return genphy_c45_read_mdix(phydev);
++}
++
++static struct phy_driver bcm84881_drivers[] = {
++	{
++		.phy_id		= 0xae025150,
++		.phy_id_mask	= 0xfffffff0,
++		.name		= "Broadcom BCM84881",
++		.features	= SUPPORTED_100baseT_Full |
++				  SUPPORTED_100baseT_Half |
++				  SUPPORTED_1000baseT_Full |
++				  SUPPORTED_Autoneg |
++				  SUPPORTED_TP |
++				  SUPPORTED_FIBRE |
++				  SUPPORTED_10000baseT_Full |
++				  SUPPORTED_Backplane,
++		.config_init	= bcm84881_config_init,
++		.probe		= bcm84881_probe,
++		.config_aneg	= bcm84881_config_aneg,
++		.aneg_done	= bcm84881_aneg_done,
++		.read_status	= bcm84881_read_status,
++	},
++};
++
++module_phy_driver(bcm84881_drivers);
++
++/* FIXME: module auto-loading for Clause 45 PHYs seems non-functional */
++static struct mdio_device_id __maybe_unused bcm84881_tbl[] = {
++	{ 0xae025150, 0xfffffff0 },
++	{ },
++};
++MODULE_AUTHOR("Russell King");
++MODULE_DESCRIPTION("Broadcom BCM84881 PHY driver");
++MODULE_DEVICE_TABLE(mdio, bcm84881_tbl);
++MODULE_LICENSE("GPL");
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/758-net-sfp-add-support-for-Clause-45-PHYs.patch b/target/linux/generic/backport-4.19/758-net-sfp-add-support-for-Clause-45-PHYs.patch
new file mode 100644
index 000000000000..abfc784f6fe3
--- /dev/null
+++ b/target/linux/generic/backport-4.19/758-net-sfp-add-support-for-Clause-45-PHYs.patch
@@ -0,0 +1,99 @@
+From 6df6709dc3d00e0bc948d45dfa8d8f18ba379c48 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 5 Nov 2019 11:56:18 +0000
+Subject: [PATCH 656/660] net: sfp: add support for Clause 45 PHYs
+
+Some SFP+ modules have a Clause 45 PHY onboard, which is accessible via
+the normal I2C address.  Detect 10G BASE-T PHYs which may have an
+accessible PHY and probe for it.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 44 +++++++++++++++++++++++++++++++++++++++----
+ 1 file changed, 40 insertions(+), 4 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index cc04b187cafa..b5e790870d12 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -1326,12 +1326,12 @@ static void sfp_sm_phy_detach(struct sfp *sfp)
+ 	sfp->mod_phy = NULL;
+ }
+ 
+-static void sfp_sm_probe_phy(struct sfp *sfp)
++static void sfp_sm_probe_phy(struct sfp *sfp, bool is_c45)
+ {
+ 	struct phy_device *phy;
+ 	int err;
+ 
+-	phy = mdiobus_scan(sfp->i2c_mii, SFP_PHY_ADDR);
++	phy = get_phy_device(sfp->i2c_mii, SFP_PHY_ADDR, is_c45);
+ 	if (phy == ERR_PTR(-ENODEV)) {
+ 		dev_info(sfp->dev, "no PHY detected\n");
+ 		return;
+@@ -1341,6 +1341,13 @@ static void sfp_sm_probe_phy(struct sfp *sfp)
+ 		return;
+ 	}
+ 
++	err = phy_device_register(phy);
++	if (err) {
++		phy_device_free(phy);
++		dev_err(sfp->dev, "phy_device_register failed: %d\n", err);
++		return;
++	}
++
+ 	err = sfp_add_phy(sfp->sfp_bus, phy);
+ 	if (err) {
+ 		phy_device_remove(phy);
+@@ -1411,10 +1418,32 @@ static void sfp_sm_fault(struct sfp *sfp, unsigned int next_state, bool warn)
+ 	}
+ }
+ 
++/* Probe a SFP for a PHY device if the module supports copper - the PHY
++ * normally sits at I2C bus address 0x56, and may either be a clause 22
++ * or clause 45 PHY.
++ *
++ * Clause 22 copper SFP modules normally operate in Cisco SGMII mode with
++ * negotiation enabled, but some may be in 1000base-X - which is for the
++ * PHY driver to determine.
++ *
++ * Clause 45 copper SFP+ modules (10G) appear to switch their interface
++ * mode according to the negotiated line speed.
++ */
+ static void sfp_sm_probe_for_phy(struct sfp *sfp)
+ {
+-	if (sfp->id.base.e1000_base_t)
+-		sfp_sm_probe_phy(sfp);
++	switch (sfp->id.base.extended_cc) {
++	case SFF8024_ECC_10GBASE_T_SFI:
++	case SFF8024_ECC_10GBASE_T_SR:
++	case SFF8024_ECC_5GBASE_T:
++	case SFF8024_ECC_2_5GBASE_T:
++		sfp_sm_probe_phy(sfp, true);
++		break;
++
++	default:
++		if (sfp->id.base.e1000_base_t)
++			sfp_sm_probe_phy(sfp, false);
++		break;
++	}
+ }
+ 
+ static int sfp_module_parse_power(struct sfp *sfp)
+@@ -1474,6 +1503,13 @@ static int sfp_sm_mod_hpower(struct sfp *sfp, bool enable)
+ 		return -EAGAIN;
+ 	}
+ 
++	/* DM7052 reports as a high power module, responds to reads (with
++	 * all bytes 0xff) at 0x51 but does not accept writes.  In any case,
++	 * if the bit is already set, we're already in high power mode.
++	 */
++	if (!!(val & BIT(0)) == enable)
++		return 0;
++
+ 	if (enable)
+ 		val |= BIT(0);
+ 	else
+-- 
+2.20.1
+
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index 13b7fd11213a..cdf5cc1c2884 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -479,6 +479,7 @@ CONFIG_BASE_SMALL=0
 # CONFIG_BCM63XX_PHY is not set
 # CONFIG_BCM7038_WDT is not set
 # CONFIG_BCM7XXX_PHY is not set
+# CONFIG_BCM84881_PHY is not set
 # CONFIG_BCM87XX_PHY is not set
 # CONFIG_BCMA is not set
 # CONFIG_BCMA_DRIVER_GPIO is not set
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
