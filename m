Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DAA10AEF0
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 12:49:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Date:Message-Id:MIME-Version:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=butXewNpJx4NPopkY51wPJlyy1D3FDKm7EZUQlqe9DE=; b=m5yvFqbGB4V5UX
	PK9+exhXP0QVsEOKkWhD1ZGC4SEnHIyXM/obXRNd1hA+vd7qiV5wATploWglBrMFiSYP69fQYuPIV
	dFfdQ36lbWrEGNlZGlkfjJWROcupozNGX/kyUgkSy5L0muUqitGr3zm9wPyqRDMyRVkDWuOQ4PL0n
	fs2ofSLr697UBqgRNiqSLnCjtG4hMoQqAri42msnlNJ2P2u3F6fOPz070bs6lrlsGDyiAR+0qSUs7
	eY65e4Iv4K+uzq//cE5fuFfy9tVyN0Q4QlrHMDb/A61XnwwW2JPeuDf4aW1ozlwRaliFZA/sfNBpk
	NxpoSdonmynAIPOk33Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZvom-0001FJ-OD; Wed, 27 Nov 2019 11:49:12 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvnZ-0008T6-Mc
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 11:48:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:Reply-To:Cc:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qNOpDBYhMWOg6qcBYsgmFnXOtI9xJ4zxRO/vfZNQbAU=; b=S9AmO0dKoQN1xn1WSlrU3zSZqV
 vSyIERhHE5MoakbmBja7czyp6Llkdbtp0ykS2nZUQYm3LBxD0ixBTYDZCqBNBmG0cH5brPjB7PkpZ
 qVLqFRGiVds28SXqhu7sFmz1W/OoHuUxU77KC8vd4nXr4+yfyLF4fTQoMA9dSOn+DlWcpGZzkgwo9
 4Vls0gIQbw9wZMr3sV2G+IsBuel7zTgbzKR1JCDMsZfcQr+P4M8hKA9hr38lV4SVNiJihmpI72Ecs
 gI8y4A7q9VnaQJBSSV811vgnVKVPGylQj/AGWfIF/XLT7R9X3knrCgQsQT3VHA4Lgr1em5N0WTa+X
 N47wxgQw==;
Received: from [2002:4e20:1eda:1:d263:b4ff:fe43:3701] (port=45920
 helo=cex7.armlinux.org.uk) by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1iZvnQ-00037L-Mx; Wed, 27 Nov 2019 11:47:49 +0000
Received: from rmk by ed063b4433701.dyn.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@ed063b4433701.dyn.armlinux.org.uk>)
 id 1iZvl7-0001RG-8h; Wed, 27 Nov 2019 11:45:25 +0000
From: Russell King <linux@armlinux.org.uk>
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1iZvl7-0001RG-8h@ed063b4433701.dyn.armlinux.org.uk>
Date: Wed, 27 Nov 2019 11:45:25 +0000
X-Spam-Note: CRM114 run bypassed due to message size (184944 bytes)
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
Subject: [OpenWrt-Devel] [PATCH v2 3/5] kernel: add backported
 phy/phylink/sfp patches
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

Backport the phy/phylink/sfp patches currently queued in netdev or in
mainline necessary to support GPON popular modules, specifically to
support Huawei and Nokia GPON modules.

Signed-off-by: Russell King <linux@armlinux.org.uk>
---
 ...-helper-for-MACs-which-support-asym-.patch |  56 +++
 ...-helper-for-set_pauseparam-for-Asym-.patch |  73 ++++
 ...t-phy-Stop-with-excessive-soft-reset.patch |  45 +++
 ...full-set-of-accessor-functions-to-MM.patch | 382 ++++++++++++++++++
 ...ster-modifying-helpers-returning-1-o.patch | 224 ++++++++++
 ...dd-genphy_c45_check_and_restart_aneg.patch |  71 ++++
 ...ve-netdev-from-phylink-mii-ioctl-emu.patch |  64 +++
 ...link-support-for-link-gpio-interrupt.patch |  95 +++++
 ...allow-Clause-45-access-via-mii-ioctl.patch |  82 ++++
 ...atory-attach-detach-methods-for-sfp-.patch | 103 +++++
 ...et-sfp-remove-sfp-bus-use-of-netdevs.patch | 127 ++++++
 ...-phylink-avoid-reducing-support-mask.patch |  89 ++++
 ...-polling-and-interrupt-handling-duri.patch |  99 +++++
 ...t-start-and-stop-SGMII-PHYs-in-SFP-m.patch | 146 +++++++
 ...ve-fwnode-parsing-into-sfp-bus-layer.patch | 186 +++++++++
 ...17-net-sfp-rework-upstream-interface.patch | 263 ++++++++++++
 ...fix-sfp_bus_put-kernel-documentation.patch |  32 ++
 ...sfp-fix-sfp_bus_add_upstream-warning.patch |  32 ++
 ...-sub-state-machines-into-separate-fu.patch | 129 ++++++
 ...disable-on-device-down-to-main-state.patch |  46 +++
 ...e-sfp_sm_ins_next-as-sfp_sm_mod_next.patch |  76 ++++
 ...-module-remove-outside-state-machine.patch |  58 +++
 ...-sfp-rename-T_PROBE_WAIT-to-T_SERIAL.patch |  56 +++
 ...-parse-SFP-power-requirement-earlier.patch | 120 ++++++
 ...wer-switch-on-address-change-modules.patch |  70 ++++
 ...TX_DISABLE-and-phy-only-from-main-st.patch |  57 +++
 ...t-the-PHY-probe-from-sfp_sm_mod_init.patch |  58 +++
 ...-sfp-eliminate-mdelay-from-PHY-probe.patch | 135 +++++++
 ...ult-processing-to-transition-to-othe.patch |  74 ++++
 ...X_FAULT-has-deasserted-before-probin.patch |  85 ++++
 ...stream-s-attachment-state-in-state-m.patch | 158 ++++++++
 ...plit-power-mode-switching-from-probe.patch | 190 +++++++++
 ...module-insert-reporting-out-of-probe.patch | 164 ++++++++
 ...p-to-probe-slow-to-initialise-GPON-m.patch | 115 ++++++
 ...dules-with-slow-diagnostics-to-probe.patch | 203 ++++++++++
 ...-net-phy-add-core-phylib-sfp-support.patch | 192 +++++++++
 ...8-net-phy-marvell10g-add-SFP-support.patch |  72 ++++
 ...update-to-use-phy_support_asym_pause.patch |  50 +++
 ...-matching-all-ones-clause-45-PHY-IDs.patch |  68 ++++
 ...x-link-mode-modification-in-PHY-mode.patch |  71 ++++
 ...et-sfp-add-support-for-module-quirks.patch | 116 ++++++
 ...sfp-add-some-quirks-for-GPON-modules.patch |  57 +++
 ...-sfp-soft-status-and-control-support.patch | 232 +++++++++++
 43 files changed, 4821 insertions(+)
 create mode 100644 target/linux/generic/backport-4.19/702-net-ethernet-Add-helper-for-MACs-which-support-asym-.patch
 create mode 100644 target/linux/generic/backport-4.19/703-net-ethernet-Add-helper-for-set_pauseparam-for-Asym-.patch
 create mode 100644 target/linux/generic/backport-4.19/704-net-phy-Stop-with-excessive-soft-reset.patch
 create mode 100644 target/linux/generic/backport-4.19/705-net-phy-provide-full-set-of-accessor-functions-to-MM.patch
 create mode 100644 target/linux/generic/backport-4.19/706-net-phy-add-register-modifying-helpers-returning-1-o.patch
 create mode 100644 target/linux/generic/backport-4.19/707-net-phy-add-genphy_c45_check_and_restart_aneg.patch
 create mode 100644 target/linux/generic/backport-4.19/708-net-phylink-remove-netdev-from-phylink-mii-ioctl-emu.patch
 create mode 100644 target/linux/generic/backport-4.19/709-net-phylink-support-for-link-gpio-interrupt.patch
 create mode 100644 target/linux/generic/backport-4.19/710-net-phy-allow-Clause-45-access-via-mii-ioctl.patch
 create mode 100644 target/linux/generic/backport-4.19/711-net-sfp-add-mandatory-attach-detach-methods-for-sfp-.patch
 create mode 100644 target/linux/generic/backport-4.19/712-net-sfp-remove-sfp-bus-use-of-netdevs.patch
 create mode 100644 target/linux/generic/backport-4.19/713-net-phylink-avoid-reducing-support-mask.patch
 create mode 100644 target/linux/generic/backport-4.19/714-net-sfp-Stop-SFP-polling-and-interrupt-handling-duri.patch
 create mode 100644 target/linux/generic/backport-4.19/715-net-phylink-don-t-start-and-stop-SGMII-PHYs-in-SFP-m.patch
 create mode 100644 target/linux/generic/backport-4.19/716-net-sfp-move-fwnode-parsing-into-sfp-bus-layer.patch
 create mode 100644 target/linux/generic/backport-4.19/717-net-sfp-rework-upstream-interface.patch
 create mode 100644 target/linux/generic/backport-4.19/718-net-sfp-fix-sfp_bus_put-kernel-documentation.patch
 create mode 100644 target/linux/generic/backport-4.19/719-net-sfp-fix-sfp_bus_add_upstream-warning.patch
 create mode 100644 target/linux/generic/backport-4.19/720-net-sfp-move-sfp-sub-state-machines-into-separate-fu.patch
 create mode 100644 target/linux/generic/backport-4.19/721-net-sfp-move-tx-disable-on-device-down-to-main-state.patch
 create mode 100644 target/linux/generic/backport-4.19/722-net-sfp-rename-sfp_sm_ins_next-as-sfp_sm_mod_next.patch
 create mode 100644 target/linux/generic/backport-4.19/723-net-sfp-handle-module-remove-outside-state-machine.patch
 create mode 100644 target/linux/generic/backport-4.19/724-net-sfp-rename-T_PROBE_WAIT-to-T_SERIAL.patch
 create mode 100644 target/linux/generic/backport-4.19/725-net-sfp-parse-SFP-power-requirement-earlier.patch
 create mode 100644 target/linux/generic/backport-4.19/726-net-sfp-avoid-power-switch-on-address-change-modules.patch
 create mode 100644 target/linux/generic/backport-4.19/727-net-sfp-control-TX_DISABLE-and-phy-only-from-main-st.patch
 create mode 100644 target/linux/generic/backport-4.19/728-net-sfp-split-the-PHY-probe-from-sfp_sm_mod_init.patch
 create mode 100644 target/linux/generic/backport-4.19/729-net-sfp-eliminate-mdelay-from-PHY-probe.patch
 create mode 100644 target/linux/generic/backport-4.19/730-net-sfp-allow-fault-processing-to-transition-to-othe.patch
 create mode 100644 target/linux/generic/backport-4.19/731-net-sfp-ensure-TX_FAULT-has-deasserted-before-probin.patch
 create mode 100644 target/linux/generic/backport-4.19/732-net-sfp-track-upstream-s-attachment-state-in-state-m.patch
 create mode 100644 target/linux/generic/backport-4.19/733-net-sfp-split-power-mode-switching-from-probe.patch
 create mode 100644 target/linux/generic/backport-4.19/734-net-sfp-move-module-insert-reporting-out-of-probe.patch
 create mode 100644 target/linux/generic/backport-4.19/735-net-sfp-allow-sfp-to-probe-slow-to-initialise-GPON-m.patch
 create mode 100644 target/linux/generic/backport-4.19/736-net-sfp-allow-modules-with-slow-diagnostics-to-probe.patch
 create mode 100644 target/linux/generic/backport-4.19/737-net-phy-add-core-phylib-sfp-support.patch
 create mode 100644 target/linux/generic/backport-4.19/738-net-phy-marvell10g-add-SFP-support.patch
 create mode 100644 target/linux/generic/backport-4.19/739-net-phylink-update-to-use-phy_support_asym_pause.patch
 create mode 100644 target/linux/generic/backport-4.19/740-net-phy-avoid-matching-all-ones-clause-45-PHY-IDs.patch
 create mode 100644 target/linux/generic/backport-4.19/741-net-phylink-fix-link-mode-modification-in-PHY-mode.patch
 create mode 100644 target/linux/generic/backport-4.19/742-net-sfp-add-support-for-module-quirks.patch
 create mode 100644 target/linux/generic/backport-4.19/743-net-sfp-add-some-quirks-for-GPON-modules.patch
 create mode 100644 target/linux/generic/backport-4.19/744-net-sfp-soft-status-and-control-support.patch

diff --git a/target/linux/generic/backport-4.19/702-net-ethernet-Add-helper-for-MACs-which-support-asym-.patch b/target/linux/generic/backport-4.19/702-net-ethernet-Add-helper-for-MACs-which-support-asym-.patch
new file mode 100644
index 000000000000..d23dbdd3cdab
--- /dev/null
+++ b/target/linux/generic/backport-4.19/702-net-ethernet-Add-helper-for-MACs-which-support-asym-.patch
@@ -0,0 +1,56 @@
+From 1da223db3a0c522300b519ecbe1dc45927e28088 Mon Sep 17 00:00:00 2001
+From: Andrew Lunn <andrew@lunn.ch>
+Date: Wed, 12 Sep 2018 01:53:15 +0200
+Subject: [PATCH 600/660] net: ethernet: Add helper for MACs which support asym
+ pause
+
+Rather than have the MAC drivers manipulate phydev members to indicate
+they support Asym Pause, add a helper function.
+
+Signed-off-by: Andrew Lunn <andrew@lunn.ch>
+Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+---
+ drivers/net/phy/phy_device.c | 13 +++++++++++++
+ include/linux/phy.h          |  1 +
+ 2 files changed, 14 insertions(+)
+
+diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
+index 7f25364cd034..55ae630f9a7b 100644
+--- a/drivers/net/phy/phy_device.c
++++ b/drivers/net/phy/phy_device.c
+@@ -1782,6 +1782,19 @@ int phy_set_max_speed(struct phy_device *phydev, u32 max_speed)
+ }
+ EXPORT_SYMBOL(phy_set_max_speed);
+ 
++/**
++ * phy_support_asym_pause - Enable support of asym pause
++ * @phydev: target phy_device struct
++ *
++ * Description: Called by the MAC to indicate is supports Asym Pause.
++ */
++void phy_support_asym_pause(struct phy_device *phydev)
++{
++	phydev->supported |= SUPPORTED_Pause | SUPPORTED_Asym_Pause;
++	phydev->advertising = phydev->supported;
++}
++EXPORT_SYMBOL(phy_support_asym_pause);
++
+ static void of_set_phy_supported(struct phy_device *phydev)
+ {
+ 	struct device_node *node = phydev->mdio.dev.of_node;
+diff --git a/include/linux/phy.h b/include/linux/phy.h
+index 0200d26702b8..54df9a062df1 100644
+--- a/include/linux/phy.h
++++ b/include/linux/phy.h
+@@ -1061,6 +1061,7 @@ int phy_mii_ioctl(struct phy_device *phydev, struct ifreq *ifr, int cmd);
+ int phy_start_interrupts(struct phy_device *phydev);
+ void phy_print_status(struct phy_device *phydev);
+ int phy_set_max_speed(struct phy_device *phydev, u32 max_speed);
++void phy_support_asym_pause(struct phy_device *phydev);
+ 
+ int phy_register_fixup(const char *bus_id, u32 phy_uid, u32 phy_uid_mask,
+ 		       int (*run)(struct phy_device *));
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/703-net-ethernet-Add-helper-for-set_pauseparam-for-Asym-.patch b/target/linux/generic/backport-4.19/703-net-ethernet-Add-helper-for-set_pauseparam-for-Asym-.patch
new file mode 100644
index 000000000000..fe0107da74bf
--- /dev/null
+++ b/target/linux/generic/backport-4.19/703-net-ethernet-Add-helper-for-set_pauseparam-for-Asym-.patch
@@ -0,0 +1,73 @@
+From ce825df56e0480a2cbb296e38976babafb57e503 Mon Sep 17 00:00:00 2001
+From: Andrew Lunn <andrew@lunn.ch>
+Date: Wed, 12 Sep 2018 01:53:17 +0200
+Subject: [PATCH 601/660] net: ethernet: Add helper for set_pauseparam for Asym
+ Pause
+
+ethtool can be used to enable/disable pause. Add a helper to configure
+the PHY when asym pause is supported.
+
+Signed-off-by: Andrew Lunn <andrew@lunn.ch>
+Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+---
+ drivers/net/phy/phy_device.c | 30 ++++++++++++++++++++++++++++++
+ include/linux/phy.h          |  1 +
+ 2 files changed, 31 insertions(+)
+
+diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
+index 55ae630f9a7b..ac62c6df4c1c 100644
+--- a/drivers/net/phy/phy_device.c
++++ b/drivers/net/phy/phy_device.c
+@@ -1795,6 +1795,36 @@ void phy_support_asym_pause(struct phy_device *phydev)
+ }
+ EXPORT_SYMBOL(phy_support_asym_pause);
+ 
++/**
++ * phy_set_asym_pause - Configure Pause and Asym Pause
++ * @phydev: target phy_device struct
++ * @rx: Receiver Pause is supported
++ * @tx: Transmit Pause is supported
++ *
++ * Description: Configure advertised Pause support depending on if
++ * transmit and receiver pause is supported. If there has been a
++ * change in adverting, trigger a new autoneg. Generally called from
++ * the set_pauseparam .ndo.
++ */
++void phy_set_asym_pause(struct phy_device *phydev, bool rx, bool tx)
++{
++	u16 oldadv = phydev->advertising;
++	u16 newadv = oldadv &= ~(SUPPORTED_Pause | SUPPORTED_Asym_Pause);
++
++	if (rx)
++		newadv |= SUPPORTED_Pause | SUPPORTED_Asym_Pause;
++	if (tx)
++		newadv ^= SUPPORTED_Asym_Pause;
++
++	if (oldadv != newadv) {
++		phydev->advertising = newadv;
++
++		if (phydev->autoneg)
++			phy_start_aneg(phydev);
++	}
++}
++EXPORT_SYMBOL(phy_set_asym_pause);
++
+ static void of_set_phy_supported(struct phy_device *phydev)
+ {
+ 	struct device_node *node = phydev->mdio.dev.of_node;
+diff --git a/include/linux/phy.h b/include/linux/phy.h
+index 54df9a062df1..9e72fe181d10 100644
+--- a/include/linux/phy.h
++++ b/include/linux/phy.h
+@@ -1062,6 +1062,7 @@ int phy_start_interrupts(struct phy_device *phydev);
+ void phy_print_status(struct phy_device *phydev);
+ int phy_set_max_speed(struct phy_device *phydev, u32 max_speed);
+ void phy_support_asym_pause(struct phy_device *phydev);
++void phy_set_asym_pause(struct phy_device *phydev, bool rx, bool tx);
+ 
+ int phy_register_fixup(const char *bus_id, u32 phy_uid, u32 phy_uid_mask,
+ 		       int (*run)(struct phy_device *));
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/704-net-phy-Stop-with-excessive-soft-reset.patch b/target/linux/generic/backport-4.19/704-net-phy-Stop-with-excessive-soft-reset.patch
new file mode 100644
index 000000000000..badfc859e64a
--- /dev/null
+++ b/target/linux/generic/backport-4.19/704-net-phy-Stop-with-excessive-soft-reset.patch
@@ -0,0 +1,45 @@
+From 1541649a9dd79e9b941d399de564475e426a2d0b Mon Sep 17 00:00:00 2001
+From: Florian Fainelli <f.fainelli@gmail.com>
+Date: Tue, 25 Sep 2018 11:28:45 -0700
+Subject: [PATCH 602/660] net: phy: Stop with excessive soft reset
+
+While consolidating the PHY reset in phy_init_hw() an unconditionaly
+BMCR soft-reset I became quite trigger happy with those. This was later
+on deactivated for the Generic PHY driver on the premise that a prior
+software entity (e.g: bootloader) might have applied workarounds in
+commit 0878fff1f42c ("net: phy: Do not perform software reset for
+Generic PHY").
+
+Since we have a hook to wire-up a soft_reset callback, just use that and
+get rid of the call to genphy_soft_reset() entirely. This speeds up
+initialization and link establishment for most PHYs out there that do
+not require a reset.
+
+Fixes: 87aa9f9c61ad ("net: phy: consolidate PHY reset in phy_init_hw()")
+Tested-by: Wang, Dongsheng <dongsheng.wang@hxt-semitech.com>
+Tested-by: Chris Healy <cphealy@gmail.com>
+Tested-by: Andrew Lunn <andrew@lunn.ch>
+Tested-by: Clemens Gruber <clemens.gruber@pqgruber.com>
+Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phy_device.c | 2 --
+ 1 file changed, 2 deletions(-)
+
+diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
+index ac62c6df4c1c..55ad814ed87e 100644
+--- a/drivers/net/phy/phy_device.c
++++ b/drivers/net/phy/phy_device.c
+@@ -885,8 +885,6 @@ int phy_init_hw(struct phy_device *phydev)
+ 
+ 	if (phydev->drv->soft_reset)
+ 		ret = phydev->drv->soft_reset(phydev);
+-	else
+-		ret = genphy_soft_reset(phydev);
+ 
+ 	if (ret < 0)
+ 		return ret;
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/705-net-phy-provide-full-set-of-accessor-functions-to-MM.patch b/target/linux/generic/backport-4.19/705-net-phy-provide-full-set-of-accessor-functions-to-MM.patch
new file mode 100644
index 000000000000..537e893f7d11
--- /dev/null
+++ b/target/linux/generic/backport-4.19/705-net-phy-provide-full-set-of-accessor-functions-to-MM.patch
@@ -0,0 +1,382 @@
+From 80758d9542205cd2e9fa730067bc3888d4f5a096 Mon Sep 17 00:00:00 2001
+From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
+Date: Wed, 6 Feb 2019 07:36:40 +0100
+Subject: [PATCH 603/660] net: phy: provide full set of accessor functions to
+ MMD registers
+
+This adds full set of locked and unlocked accessor functions to read and
+write PHY MMD registers and/or bitfields.
+
+Set of functions exactly matches what is already available for PHY
+legacy registers.
+
+Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
+Signed-off-by: Andrew Lunn <andrew@lunn.ch>
+Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phy-core.c | 116 ++++++++++++++++++++++++++++----
+ include/linux/phy.h        | 134 ++++++++++++++++++++++++++++++-------
+ 2 files changed, 214 insertions(+), 36 deletions(-)
+
+diff --git a/drivers/net/phy/phy-core.c b/drivers/net/phy/phy-core.c
+index c7da4cbb1103..7822db2fac4d 100644
+--- a/drivers/net/phy/phy-core.c
++++ b/drivers/net/phy/phy-core.c
+@@ -247,15 +247,15 @@ static void mmd_phy_indirect(struct mii_bus *bus, int phy_addr, int devad,
+ }
+ 
+ /**
+- * phy_read_mmd - Convenience function for reading a register
++ * __phy_read_mmd - Convenience function for reading a register
+  * from an MMD on a given PHY.
+  * @phydev: The phy_device struct
+  * @devad: The MMD to read from (0..31)
+  * @regnum: The register on the MMD to read (0..65535)
+  *
+- * Same rules as for phy_read();
++ * Same rules as for __phy_read();
+  */
+-int phy_read_mmd(struct phy_device *phydev, int devad, u32 regnum)
++int __phy_read_mmd(struct phy_device *phydev, int devad, u32 regnum)
+ {
+ 	int val;
+ 
+@@ -267,33 +267,52 @@ int phy_read_mmd(struct phy_device *phydev, int devad, u32 regnum)
+ 	} else if (phydev->is_c45) {
+ 		u32 addr = MII_ADDR_C45 | (devad << 16) | (regnum & 0xffff);
+ 
+-		val = mdiobus_read(phydev->mdio.bus, phydev->mdio.addr, addr);
++		val = __mdiobus_read(phydev->mdio.bus, phydev->mdio.addr, addr);
+ 	} else {
+ 		struct mii_bus *bus = phydev->mdio.bus;
+ 		int phy_addr = phydev->mdio.addr;
+ 
+-		mutex_lock(&bus->mdio_lock);
+ 		mmd_phy_indirect(bus, phy_addr, devad, regnum);
+ 
+ 		/* Read the content of the MMD's selected register */
+ 		val = __mdiobus_read(bus, phy_addr, MII_MMD_DATA);
+-		mutex_unlock(&bus->mdio_lock);
+ 	}
+ 	return val;
+ }
++EXPORT_SYMBOL(__phy_read_mmd);
++
++/**
++ * phy_read_mmd - Convenience function for reading a register
++ * from an MMD on a given PHY.
++ * @phydev: The phy_device struct
++ * @devad: The MMD to read from
++ * @regnum: The register on the MMD to read
++ *
++ * Same rules as for phy_read();
++ */
++int phy_read_mmd(struct phy_device *phydev, int devad, u32 regnum)
++{
++	int ret;
++
++	mutex_lock(&phydev->mdio.bus->mdio_lock);
++	ret = __phy_read_mmd(phydev, devad, regnum);
++	mutex_unlock(&phydev->mdio.bus->mdio_lock);
++
++	return ret;
++}
+ EXPORT_SYMBOL(phy_read_mmd);
+ 
+ /**
+- * phy_write_mmd - Convenience function for writing a register
++ * __phy_write_mmd - Convenience function for writing a register
+  * on an MMD on a given PHY.
+  * @phydev: The phy_device struct
+  * @devad: The MMD to read from
+  * @regnum: The register on the MMD to read
+  * @val: value to write to @regnum
+  *
+- * Same rules as for phy_write();
++ * Same rules as for __phy_write();
+  */
+-int phy_write_mmd(struct phy_device *phydev, int devad, u32 regnum, u16 val)
++int __phy_write_mmd(struct phy_device *phydev, int devad, u32 regnum, u16 val)
+ {
+ 	int ret;
+ 
+@@ -305,23 +324,43 @@ int phy_write_mmd(struct phy_device *phydev, int devad, u32 regnum, u16 val)
+ 	} else if (phydev->is_c45) {
+ 		u32 addr = MII_ADDR_C45 | (devad << 16) | (regnum & 0xffff);
+ 
+-		ret = mdiobus_write(phydev->mdio.bus, phydev->mdio.addr,
+-				    addr, val);
++		ret = __mdiobus_write(phydev->mdio.bus, phydev->mdio.addr,
++				      addr, val);
+ 	} else {
+ 		struct mii_bus *bus = phydev->mdio.bus;
+ 		int phy_addr = phydev->mdio.addr;
+ 
+-		mutex_lock(&bus->mdio_lock);
+ 		mmd_phy_indirect(bus, phy_addr, devad, regnum);
+ 
+ 		/* Write the data into MMD's selected register */
+ 		__mdiobus_write(bus, phy_addr, MII_MMD_DATA, val);
+-		mutex_unlock(&bus->mdio_lock);
+ 
+ 		ret = 0;
+ 	}
+ 	return ret;
+ }
++EXPORT_SYMBOL(__phy_write_mmd);
++
++/**
++ * phy_write_mmd - Convenience function for writing a register
++ * on an MMD on a given PHY.
++ * @phydev: The phy_device struct
++ * @devad: The MMD to read from
++ * @regnum: The register on the MMD to read
++ * @val: value to write to @regnum
++ *
++ * Same rules as for phy_write();
++ */
++int phy_write_mmd(struct phy_device *phydev, int devad, u32 regnum, u16 val)
++{
++	int ret;
++
++	mutex_lock(&phydev->mdio.bus->mdio_lock);
++	ret = __phy_write_mmd(phydev, devad, regnum, val);
++	mutex_unlock(&phydev->mdio.bus->mdio_lock);
++
++	return ret;
++}
+ EXPORT_SYMBOL(phy_write_mmd);
+ 
+ /**
+@@ -371,6 +410,57 @@ int phy_modify(struct phy_device *phydev, u32 regnum, u16 mask, u16 set)
+ }
+ EXPORT_SYMBOL_GPL(phy_modify);
+ 
++/**
++ * __phy_modify_mmd - Convenience function for modifying a register on MMD
++ * @phydev: the phy_device struct
++ * @devad: the MMD containing register to modify
++ * @regnum: register number to modify
++ * @mask: bit mask of bits to clear
++ * @set: new value of bits set in mask to write to @regnum
++ *
++ * Unlocked helper function which allows a MMD register to be modified as
++ * new register value = (old register value & ~mask) | set
++ */
++int __phy_modify_mmd(struct phy_device *phydev, int devad, u32 regnum,
++		     u16 mask, u16 set)
++{
++	int ret;
++
++	ret = __phy_read_mmd(phydev, devad, regnum);
++	if (ret < 0)
++		return ret;
++
++	ret = __phy_write_mmd(phydev, devad, regnum, (ret & ~mask) | set);
++
++	return ret < 0 ? ret : 0;
++}
++EXPORT_SYMBOL_GPL(__phy_modify_mmd);
++
++/**
++ * phy_modify_mmd - Convenience function for modifying a register on MMD
++ * @phydev: the phy_device struct
++ * @devad: the MMD containing register to modify
++ * @regnum: register number to modify
++ * @mask: bit mask of bits to clear
++ * @set: new value of bits set in mask to write to @regnum
++ *
++ * NOTE: MUST NOT be called from interrupt context,
++ * because the bus read/write functions may wait for an interrupt
++ * to conclude the operation.
++ */
++int phy_modify_mmd(struct phy_device *phydev, int devad, u32 regnum,
++		   u16 mask, u16 set)
++{
++	int ret;
++
++	mutex_lock(&phydev->mdio.bus->mdio_lock);
++	ret = __phy_modify_mmd(phydev, devad, regnum, mask, set);
++	mutex_unlock(&phydev->mdio.bus->mdio_lock);
++
++	return ret;
++}
++EXPORT_SYMBOL_GPL(phy_modify_mmd);
++
+ static int __phy_read_page(struct phy_device *phydev)
+ {
+ 	return phydev->drv->read_page(phydev);
+diff --git a/include/linux/phy.h b/include/linux/phy.h
+index 9e72fe181d10..b96376791c89 100644
+--- a/include/linux/phy.h
++++ b/include/linux/phy.h
+@@ -706,17 +706,6 @@ size_t phy_speeds(unsigned int *speeds, size_t size,
+ 
+ void phy_resolve_aneg_linkmode(struct phy_device *phydev);
+ 
+-/**
+- * phy_read_mmd - Convenience function for reading a register
+- * from an MMD on a given PHY.
+- * @phydev: The phy_device struct
+- * @devad: The MMD to read from
+- * @regnum: The register on the MMD to read
+- *
+- * Same rules as for phy_read();
+- */
+-int phy_read_mmd(struct phy_device *phydev, int devad, u32 regnum);
+-
+ /**
+  * phy_read - Convenience function for reading a given PHY register
+  * @phydev: the phy_device struct
+@@ -772,9 +761,60 @@ static inline int __phy_write(struct phy_device *phydev, u32 regnum, u16 val)
+ 			       val);
+ }
+ 
++/**
++ * phy_read_mmd - Convenience function for reading a register
++ * from an MMD on a given PHY.
++ * @phydev: The phy_device struct
++ * @devad: The MMD to read from
++ * @regnum: The register on the MMD to read
++ *
++ * Same rules as for phy_read();
++ */
++int phy_read_mmd(struct phy_device *phydev, int devad, u32 regnum);
++
++/**
++ * __phy_read_mmd - Convenience function for reading a register
++ * from an MMD on a given PHY.
++ * @phydev: The phy_device struct
++ * @devad: The MMD to read from
++ * @regnum: The register on the MMD to read
++ *
++ * Same rules as for __phy_read();
++ */
++int __phy_read_mmd(struct phy_device *phydev, int devad, u32 regnum);
++
++/**
++ * phy_write_mmd - Convenience function for writing a register
++ * on an MMD on a given PHY.
++ * @phydev: The phy_device struct
++ * @devad: The MMD to write to
++ * @regnum: The register on the MMD to read
++ * @val: value to write to @regnum
++ *
++ * Same rules as for phy_write();
++ */
++int phy_write_mmd(struct phy_device *phydev, int devad, u32 regnum, u16 val);
++
++/**
++ * __phy_write_mmd - Convenience function for writing a register
++ * on an MMD on a given PHY.
++ * @phydev: The phy_device struct
++ * @devad: The MMD to write to
++ * @regnum: The register on the MMD to read
++ * @val: value to write to @regnum
++ *
++ * Same rules as for __phy_write();
++ */
++int __phy_write_mmd(struct phy_device *phydev, int devad, u32 regnum, u16 val);
++
+ int __phy_modify(struct phy_device *phydev, u32 regnum, u16 mask, u16 set);
+ int phy_modify(struct phy_device *phydev, u32 regnum, u16 mask, u16 set);
+ 
++int __phy_modify_mmd(struct phy_device *phydev, int devad, u32 regnum,
++		u16 mask, u16 set);
++int phy_modify_mmd(struct phy_device *phydev, int devad, u32 regnum,
++		u16 mask, u16 set);
++
+ /**
+  * __phy_set_bits - Convenience function for setting bits in a PHY register
+  * @phydev: the phy_device struct
+@@ -824,6 +864,66 @@ static inline int phy_clear_bits(struct phy_device *phydev, u32 regnum, u16 val)
+ 	return phy_modify(phydev, regnum, val, 0);
+ }
+ 
++/**
++ * __phy_set_bits_mmd - Convenience function for setting bits in a register
++ * on MMD
++ * @phydev: the phy_device struct
++ * @devad: the MMD containing register to modify
++ * @regnum: register number to modify
++ * @val: bits to set
++ *
++ * The caller must have taken the MDIO bus lock.
++ */
++static inline int __phy_set_bits_mmd(struct phy_device *phydev, int devad,
++		u32 regnum, u16 val)
++{
++	return __phy_modify_mmd(phydev, devad, regnum, 0, val);
++}
++
++/**
++ * __phy_clear_bits_mmd - Convenience function for clearing bits in a register
++ * on MMD
++ * @phydev: the phy_device struct
++ * @devad: the MMD containing register to modify
++ * @regnum: register number to modify
++ * @val: bits to clear
++ *
++ * The caller must have taken the MDIO bus lock.
++ */
++static inline int __phy_clear_bits_mmd(struct phy_device *phydev, int devad,
++		u32 regnum, u16 val)
++{
++	return __phy_modify_mmd(phydev, devad, regnum, val, 0);
++}
++
++/**
++ * phy_set_bits_mmd - Convenience function for setting bits in a register
++ * on MMD
++ * @phydev: the phy_device struct
++ * @devad: the MMD containing register to modify
++ * @regnum: register number to modify
++ * @val: bits to set
++ */
++static inline int phy_set_bits_mmd(struct phy_device *phydev, int devad,
++		u32 regnum, u16 val)
++{
++	return phy_modify_mmd(phydev, devad, regnum, 0, val);
++}
++
++/**
++ * phy_clear_bits_mmd - Convenience function for clearing bits in a register
++ * on MMD
++ * @phydev: the phy_device struct
++ * @devad: the MMD containing register to modify
++ * @regnum: register number to modify
++ * @val: bits to clear
++ */
++static inline int phy_clear_bits_mmd(struct phy_device *phydev, int devad,
++		u32 regnum, u16 val)
++{
++	return phy_modify_mmd(phydev, devad, regnum, val, 0);
++}
++
+ /**
+  * phy_interrupt_is_valid - Convenience function for testing a given PHY irq
+  * @phydev: the phy_device struct
+@@ -900,18 +1000,6 @@ static inline bool phy_is_pseudo_fixed_link(struct phy_device *phydev)
+ 	return phydev->is_pseudo_fixed_link;
+ }
+ 
+-/**
+- * phy_write_mmd - Convenience function for writing a register
+- * on an MMD on a given PHY.
+- * @phydev: The phy_device struct
+- * @devad: The MMD to read from
+- * @regnum: The register on the MMD to read
+- * @val: value to write to @regnum
+- *
+- * Same rules as for phy_write();
+- */
+-int phy_write_mmd(struct phy_device *phydev, int devad, u32 regnum, u16 val);
+-
+ int phy_save_page(struct phy_device *phydev);
+ int phy_select_page(struct phy_device *phydev, int page);
+ int phy_restore_page(struct phy_device *phydev, int oldpage, int ret);
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/706-net-phy-add-register-modifying-helpers-returning-1-o.patch b/target/linux/generic/backport-4.19/706-net-phy-add-register-modifying-helpers-returning-1-o.patch
new file mode 100644
index 000000000000..7f95ce817ab3
--- /dev/null
+++ b/target/linux/generic/backport-4.19/706-net-phy-add-register-modifying-helpers-returning-1-o.patch
@@ -0,0 +1,224 @@
+From c1e3f753f6b85d7636024159bb78f764e09492f1 Mon Sep 17 00:00:00 2001
+From: Heiner Kallweit <hkallweit1@gmail.com>
+Date: Sun, 10 Feb 2019 19:57:56 +0100
+Subject: [PATCH 604/660] net: phy: add register modifying helpers returning 1
+ on change
+
+When modifying registers there are scenarios where we need to know
+whether the register content actually changed. This patch adds
+new helpers to not break users of the current ones, phy_modify() etc.
+
+Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
+Reviewed-by: Andrew Lunn <andrew@lunn.ch>
+Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phy-core.c | 127 ++++++++++++++++++++++++++++++++++---
+ include/linux/phy.h        |  12 +++-
+ 2 files changed, 128 insertions(+), 11 deletions(-)
+
+diff --git a/drivers/net/phy/phy-core.c b/drivers/net/phy/phy-core.c
+index 7822db2fac4d..1000977612c6 100644
+--- a/drivers/net/phy/phy-core.c
++++ b/drivers/net/phy/phy-core.c
+@@ -364,7 +364,7 @@ int phy_write_mmd(struct phy_device *phydev, int devad, u32 regnum, u16 val)
+ EXPORT_SYMBOL(phy_write_mmd);
+ 
+ /**
+- * __phy_modify() - Convenience function for modifying a PHY register
++ * __phy_modify_changed() - Convenience function for modifying a PHY register
+  * @phydev: a pointer to a &struct phy_device
+  * @regnum: register number
+  * @mask: bit mask of bits to clear
+@@ -372,16 +372,69 @@ EXPORT_SYMBOL(phy_write_mmd);
+  *
+  * Unlocked helper function which allows a PHY register to be modified as
+  * new register value = (old register value & ~mask) | set
++ *
++ * Returns negative errno, 0 if there was no change, and 1 in case of change
+  */
+-int __phy_modify(struct phy_device *phydev, u32 regnum, u16 mask, u16 set)
++int __phy_modify_changed(struct phy_device *phydev, u32 regnum, u16 mask,
++			 u16 set)
+ {
+-	int ret;
++	int new, ret;
+ 
+ 	ret = __phy_read(phydev, regnum);
+ 	if (ret < 0)
+ 		return ret;
+ 
+-	ret = __phy_write(phydev, regnum, (ret & ~mask) | set);
++	new = (ret & ~mask) | set;
++	if (new == ret)
++		return 0;
++
++	ret = __phy_write(phydev, regnum, new);
++
++	return ret < 0 ? ret : 1;
++}
++EXPORT_SYMBOL_GPL(__phy_modify_changed);
++
++/**
++ * phy_modify_changed - Function for modifying a PHY register
++ * @phydev: the phy_device struct
++ * @regnum: register number to modify
++ * @mask: bit mask of bits to clear
++ * @set: new value of bits set in mask to write to @regnum
++ *
++ * NOTE: MUST NOT be called from interrupt context,
++ * because the bus read/write functions may wait for an interrupt
++ * to conclude the operation.
++ *
++ * Returns negative errno, 0 if there was no change, and 1 in case of change
++ */
++int phy_modify_changed(struct phy_device *phydev, u32 regnum, u16 mask, u16 set)
++{
++	int ret;
++
++	mutex_lock(&phydev->mdio.bus->mdio_lock);
++	ret = __phy_modify_changed(phydev, regnum, mask, set);
++	mutex_unlock(&phydev->mdio.bus->mdio_lock);
++
++	return ret;
++}
++EXPORT_SYMBOL_GPL(phy_modify_changed);
++
++/**
++ * __phy_modify - Convenience function for modifying a PHY register
++ * @phydev: the phy_device struct
++ * @regnum: register number to modify
++ * @mask: bit mask of bits to clear
++ * @set: new value of bits set in mask to write to @regnum
++ *
++ * NOTE: MUST NOT be called from interrupt context,
++ * because the bus read/write functions may wait for an interrupt
++ * to conclude the operation.
++ */
++int __phy_modify(struct phy_device *phydev, u32 regnum, u16 mask, u16 set)
++{
++	int ret;
++
++	ret = __phy_modify_changed(phydev, regnum, mask, set);
+ 
+ 	return ret < 0 ? ret : 0;
+ }
+@@ -411,7 +464,7 @@ int phy_modify(struct phy_device *phydev, u32 regnum, u16 mask, u16 set)
+ EXPORT_SYMBOL_GPL(phy_modify);
+ 
+ /**
+- * __phy_modify_mmd - Convenience function for modifying a register on MMD
++ * __phy_modify_mmd_changed - Function for modifying a register on MMD
+  * @phydev: the phy_device struct
+  * @devad: the MMD containing register to modify
+  * @regnum: register number to modify
+@@ -420,17 +473,73 @@ EXPORT_SYMBOL_GPL(phy_modify);
+  *
+  * Unlocked helper function which allows a MMD register to be modified as
+  * new register value = (old register value & ~mask) | set
++ *
++ * Returns negative errno, 0 if there was no change, and 1 in case of change
+  */
+-int __phy_modify_mmd(struct phy_device *phydev, int devad, u32 regnum,
+-		     u16 mask, u16 set)
++int __phy_modify_mmd_changed(struct phy_device *phydev, int devad, u32 regnum,
++			     u16 mask, u16 set)
+ {
+-	int ret;
++	int new, ret;
+ 
+ 	ret = __phy_read_mmd(phydev, devad, regnum);
+ 	if (ret < 0)
+ 		return ret;
+ 
+-	ret = __phy_write_mmd(phydev, devad, regnum, (ret & ~mask) | set);
++	new = (ret & ~mask) | set;
++	if (new == ret)
++		return 0;
++
++	ret = __phy_write_mmd(phydev, devad, regnum, new);
++
++	return ret < 0 ? ret : 1;
++}
++EXPORT_SYMBOL_GPL(__phy_modify_mmd_changed);
++
++/**
++ * phy_modify_mmd_changed - Function for modifying a register on MMD
++ * @phydev: the phy_device struct
++ * @devad: the MMD containing register to modify
++ * @regnum: register number to modify
++ * @mask: bit mask of bits to clear
++ * @set: new value of bits set in mask to write to @regnum
++ *
++ * NOTE: MUST NOT be called from interrupt context,
++ * because the bus read/write functions may wait for an interrupt
++ * to conclude the operation.
++ *
++ * Returns negative errno, 0 if there was no change, and 1 in case of change
++ */
++int phy_modify_mmd_changed(struct phy_device *phydev, int devad, u32 regnum,
++			   u16 mask, u16 set)
++{
++	int ret;
++
++	mutex_lock(&phydev->mdio.bus->mdio_lock);
++	ret = __phy_modify_mmd_changed(phydev, devad, regnum, mask, set);
++	mutex_unlock(&phydev->mdio.bus->mdio_lock);
++
++	return ret;
++}
++EXPORT_SYMBOL_GPL(phy_modify_mmd_changed);
++
++/**
++ * __phy_modify_mmd - Convenience function for modifying a register on MMD
++ * @phydev: the phy_device struct
++ * @devad: the MMD containing register to modify
++ * @regnum: register number to modify
++ * @mask: bit mask of bits to clear
++ * @set: new value of bits set in mask to write to @regnum
++ *
++ * NOTE: MUST NOT be called from interrupt context,
++ * because the bus read/write functions may wait for an interrupt
++ * to conclude the operation.
++ */
++int __phy_modify_mmd(struct phy_device *phydev, int devad, u32 regnum,
++		     u16 mask, u16 set)
++{
++	int ret;
++
++	ret = __phy_modify_mmd_changed(phydev, devad, regnum, mask, set);
+ 
+ 	return ret < 0 ? ret : 0;
+ }
+diff --git a/include/linux/phy.h b/include/linux/phy.h
+index b96376791c89..8fd6f3d71268 100644
+--- a/include/linux/phy.h
++++ b/include/linux/phy.h
+@@ -807,13 +807,21 @@ int phy_write_mmd(struct phy_device *phydev, int devad, u32 regnum, u16 val);
+  */
+ int __phy_write_mmd(struct phy_device *phydev, int devad, u32 regnum, u16 val);
+ 
++int __phy_modify_changed(struct phy_device *phydev, u32 regnum, u16 mask,
++			 u16 set);
++int phy_modify_changed(struct phy_device *phydev, u32 regnum, u16 mask,
++		       u16 set);
+ int __phy_modify(struct phy_device *phydev, u32 regnum, u16 mask, u16 set);
+ int phy_modify(struct phy_device *phydev, u32 regnum, u16 mask, u16 set);
+ 
++int __phy_modify_mmd_changed(struct phy_device *phydev, int devad, u32 regnum,
++			     u16 mask, u16 set);
++int phy_modify_mmd_changed(struct phy_device *phydev, int devad, u32 regnum,
++			   u16 mask, u16 set);
+ int __phy_modify_mmd(struct phy_device *phydev, int devad, u32 regnum,
+-		u16 mask, u16 set);
++		     u16 mask, u16 set);
+ int phy_modify_mmd(struct phy_device *phydev, int devad, u32 regnum,
+-		u16 mask, u16 set);
++		   u16 mask, u16 set);
+ 
+ /**
+  * __phy_set_bits - Convenience function for setting bits in a PHY register
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/707-net-phy-add-genphy_c45_check_and_restart_aneg.patch b/target/linux/generic/backport-4.19/707-net-phy-add-genphy_c45_check_and_restart_aneg.patch
new file mode 100644
index 000000000000..18e7cbb465e9
--- /dev/null
+++ b/target/linux/generic/backport-4.19/707-net-phy-add-genphy_c45_check_and_restart_aneg.patch
@@ -0,0 +1,71 @@
+From 2c3db705737cf52d7d24c993f0889b25b956c718 Mon Sep 17 00:00:00 2001
+From: Heiner Kallweit <hkallweit1@gmail.com>
+Date: Mon, 18 Feb 2019 21:27:18 +0100
+Subject: [PATCH 605/660] net: phy: add genphy_c45_check_and_restart_aneg
+
+This function will be used by config_aneg callback implementations of
+PHY drivers and allows to reduce boilerplate code.
+
+Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+---
+ drivers/net/phy/phy-c45.c | 30 ++++++++++++++++++++++++++++++
+ include/linux/phy.h       |  1 +
+ 2 files changed, 31 insertions(+)
+
+diff --git a/drivers/net/phy/phy-c45.c b/drivers/net/phy/phy-c45.c
+index 0ba3607585bd..0fe7fc7a9905 100644
+--- a/drivers/net/phy/phy-c45.c
++++ b/drivers/net/phy/phy-c45.c
+@@ -109,6 +109,36 @@ int genphy_c45_restart_aneg(struct phy_device *phydev)
+ }
+ EXPORT_SYMBOL_GPL(genphy_c45_restart_aneg);
+ 
++/**
++ * genphy_c45_check_and_restart_aneg - Enable and restart auto-negotiation
++ * @phydev: target phy_device struct
++ * @restart: whether aneg restart is requested
++ *
++ * This assumes that the auto-negotiation MMD is present.
++ *
++ * Check, and restart auto-negotiation if needed.
++ */
++int genphy_c45_check_and_restart_aneg(struct phy_device *phydev, bool restart)
++{
++	int ret = 0;
++
++	if (!restart) {
++		/* Configure and restart aneg if it wasn't set before */
++		ret = phy_read_mmd(phydev, MDIO_MMD_AN, MDIO_CTRL1);
++		if (ret < 0)
++			return ret;
++
++		if (!(ret & MDIO_AN_CTRL1_ENABLE))
++			restart = true;
++	}
++
++	if (restart)
++		ret = genphy_c45_restart_aneg(phydev);
++
++	return ret;
++}
++EXPORT_SYMBOL_GPL(genphy_c45_check_and_restart_aneg);
++
+ /**
+  * genphy_c45_aneg_done - return auto-negotiation complete status
+  * @phydev: target phy_device struct
+diff --git a/include/linux/phy.h b/include/linux/phy.h
+index 8fd6f3d71268..4d3ee3954ce3 100644
+--- a/include/linux/phy.h
++++ b/include/linux/phy.h
+@@ -1110,6 +1110,7 @@ int genphy_write_mmd_unsupported(struct phy_device *phdev, int devnum,
+ 
+ /* Clause 45 PHY */
+ int genphy_c45_restart_aneg(struct phy_device *phydev);
++int genphy_c45_check_and_restart_aneg(struct phy_device *phydev, bool restart);
+ int genphy_c45_aneg_done(struct phy_device *phydev);
+ int genphy_c45_read_link(struct phy_device *phydev, u32 mmd_mask);
+ int genphy_c45_read_lpa(struct phy_device *phydev);
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/708-net-phylink-remove-netdev-from-phylink-mii-ioctl-emu.patch b/target/linux/generic/backport-4.19/708-net-phylink-remove-netdev-from-phylink-mii-ioctl-emu.patch
new file mode 100644
index 000000000000..c8c4a38f3b3a
--- /dev/null
+++ b/target/linux/generic/backport-4.19/708-net-phylink-remove-netdev-from-phylink-mii-ioctl-emu.patch
@@ -0,0 +1,64 @@
+From 4c4323084e9a67210c8d269dceba1be99356c414 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 28 May 2019 10:57:18 +0100
+Subject: [PATCH 606/660] net: phylink: remove netdev from phylink mii ioctl
+ emulation
+
+The netdev used in the phylink ioctl emulation is never used, so let's
+remove it.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+Reviewed-by: Andrew Lunn <andrew@lunn.ch>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c | 12 ++++--------
+ 1 file changed, 4 insertions(+), 8 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index 750fe8b5e225..2fc3bf8dfd12 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -1360,8 +1360,8 @@ EXPORT_SYMBOL_GPL(phylink_ethtool_set_eee);
+  *
+  * FIXME: should deal with negotiation state too.
+  */
+-static int phylink_mii_emul_read(struct net_device *ndev, unsigned int reg,
+-				 struct phylink_link_state *state, bool aneg)
++static int phylink_mii_emul_read(unsigned int reg,
++				 struct phylink_link_state *state)
+ {
+ 	struct fixed_phy_status fs;
+ 	int val;
+@@ -1376,8 +1376,6 @@ static int phylink_mii_emul_read(struct net_device *ndev, unsigned int reg,
+ 	if (reg == MII_BMSR) {
+ 		if (!state->an_complete)
+ 			val &= ~BMSR_ANEGCOMPLETE;
+-		if (!aneg)
+-			val &= ~BMSR_ANEGCAPABLE;
+ 	}
+ 	return val;
+ }
+@@ -1473,8 +1471,7 @@ static int phylink_mii_read(struct phylink *pl, unsigned int phy_id,
+ 	case MLO_AN_FIXED:
+ 		if (phy_id == 0) {
+ 			phylink_get_fixed_state(pl, &state);
+-			val = phylink_mii_emul_read(pl->netdev, reg, &state,
+-						    true);
++			val = phylink_mii_emul_read(reg, &state);
+ 		}
+ 		break;
+ 
+@@ -1487,8 +1484,7 @@ static int phylink_mii_read(struct phylink *pl, unsigned int phy_id,
+ 			if (val < 0)
+ 				return val;
+ 
+-			val = phylink_mii_emul_read(pl->netdev, reg, &state,
+-						    true);
++			val = phylink_mii_emul_read(reg, &state);
+ 		}
+ 		break;
+ 	}
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/709-net-phylink-support-for-link-gpio-interrupt.patch b/target/linux/generic/backport-4.19/709-net-phylink-support-for-link-gpio-interrupt.patch
new file mode 100644
index 000000000000..9832d99c2f1c
--- /dev/null
+++ b/target/linux/generic/backport-4.19/709-net-phylink-support-for-link-gpio-interrupt.patch
@@ -0,0 +1,95 @@
+From cba0aba37d2228556e0d1f776d403435868cdbfa Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 28 May 2019 10:57:23 +0100
+Subject: [PATCH 607/660] net: phylink: support for link gpio interrupt
+
+Add support for using GPIO interrupts with a fixed-link GPIO rather than
+polling the GPIO every second and invoking the phylink resolution.  This
+avoids unnecessary calls to mac_config().
+
+Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c | 36 ++++++++++++++++++++++++++++++++----
+ 1 file changed, 32 insertions(+), 4 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index 2fc3bf8dfd12..d22d8ef5b766 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -59,6 +59,7 @@ struct phylink {
+ 	phy_interface_t cur_interface;
+ 
+ 	struct gpio_desc *link_gpio;
++	unsigned int link_irq;
+ 	struct timer_list link_poll;
+ 	void (*get_fixed_state)(struct net_device *dev,
+ 				struct phylink_link_state *s);
+@@ -645,7 +646,7 @@ void phylink_destroy(struct phylink *pl)
+ {
+ 	if (pl->sfp_bus)
+ 		sfp_unregister_upstream(pl->sfp_bus);
+-	if (!IS_ERR_OR_NULL(pl->link_gpio))
++	if (pl->link_gpio)
+ 		gpiod_put(pl->link_gpio);
+ 
+ 	cancel_work_sync(&pl->resolve);
+@@ -912,6 +913,15 @@ void phylink_mac_change(struct phylink *pl, bool up)
+ }
+ EXPORT_SYMBOL_GPL(phylink_mac_change);
+ 
++static irqreturn_t phylink_link_handler(int irq, void *data)
++{
++	struct phylink *pl = data;
++
++	phylink_run_resolve(pl);
++
++	return IRQ_HANDLED;
++}
++
+ /**
+  * phylink_start() - start a phylink instance
+  * @pl: a pointer to a &struct phylink returned from phylink_create()
+@@ -947,7 +957,22 @@ void phylink_start(struct phylink *pl)
+ 	clear_bit(PHYLINK_DISABLE_STOPPED, &pl->phylink_disable_state);
+ 	phylink_run_resolve(pl);
+ 
+-	if (pl->link_an_mode == MLO_AN_FIXED && !IS_ERR(pl->link_gpio))
++	if (pl->link_an_mode == MLO_AN_FIXED && pl->link_gpio) {
++		int irq = gpiod_to_irq(pl->link_gpio);
++
++		if (irq > 0) {
++			if (!request_irq(irq, phylink_link_handler,
++					 IRQF_TRIGGER_RISING |
++					 IRQF_TRIGGER_FALLING,
++					 "netdev link", pl))
++				pl->link_irq = irq;
++			else
++				irq = 0;
++		}
++		if (irq <= 0)
++			mod_timer(&pl->link_poll, jiffies + HZ);
++	}
++	if (pl->link_an_mode == MLO_AN_FIXED && pl->get_fixed_state)
+ 		mod_timer(&pl->link_poll, jiffies + HZ);
+ 	if (pl->sfp_bus)
+ 		sfp_upstream_start(pl->sfp_bus);
+@@ -973,8 +998,11 @@ void phylink_stop(struct phylink *pl)
+ 		phy_stop(pl->phydev);
+ 	if (pl->sfp_bus)
+ 		sfp_upstream_stop(pl->sfp_bus);
+-	if (pl->link_an_mode == MLO_AN_FIXED && !IS_ERR(pl->link_gpio))
+-		del_timer_sync(&pl->link_poll);
++	del_timer_sync(&pl->link_poll);
++	if (pl->link_irq) {
++		free_irq(pl->link_irq, pl);
++		pl->link_irq = 0;
++	}
+ 
+ 	phylink_run_resolve_and_disable(pl, PHYLINK_DISABLE_STOPPED);
+ }
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/710-net-phy-allow-Clause-45-access-via-mii-ioctl.patch b/target/linux/generic/backport-4.19/710-net-phy-allow-Clause-45-access-via-mii-ioctl.patch
new file mode 100644
index 000000000000..4633fbf88be9
--- /dev/null
+++ b/target/linux/generic/backport-4.19/710-net-phy-allow-Clause-45-access-via-mii-ioctl.patch
@@ -0,0 +1,82 @@
+From eb5df3d026824832831376bbdf04e01a52776eea Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 28 May 2019 10:57:29 +0100
+Subject: [PATCH 608/660] net: phy: allow Clause 45 access via mii ioctl
+
+Allow userspace to generate Clause 45 MII access cycles via phylib.
+This is useful for tools such as mii-diag to be able to inspect Clause
+45 PHYs.
+
+Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phy.c | 33 ++++++++++++++++++++++++---------
+ 1 file changed, 24 insertions(+), 9 deletions(-)
+
+diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
+index 1ee25877c4d1..e17ce54344c1 100644
+--- a/drivers/net/phy/phy.c
++++ b/drivers/net/phy/phy.c
+@@ -397,6 +397,7 @@ int phy_mii_ioctl(struct phy_device *phydev, struct ifreq *ifr, int cmd)
+ 	struct mii_ioctl_data *mii_data = if_mii(ifr);
+ 	u16 val = mii_data->val_in;
+ 	bool change_autoneg = false;
++	int prtad, devad;
+ 
+ 	switch (cmd) {
+ 	case SIOCGMIIPHY:
+@@ -404,14 +405,29 @@ int phy_mii_ioctl(struct phy_device *phydev, struct ifreq *ifr, int cmd)
+ 		/* fall through */
+ 
+ 	case SIOCGMIIREG:
+-		mii_data->val_out = mdiobus_read(phydev->mdio.bus,
+-						 mii_data->phy_id,
+-						 mii_data->reg_num);
++		if (mdio_phy_id_is_c45(mii_data->phy_id)) {
++			prtad = mdio_phy_id_prtad(mii_data->phy_id);
++			devad = mdio_phy_id_devad(mii_data->phy_id);
++			devad = MII_ADDR_C45 | devad << 16 | mii_data->reg_num;
++		} else {
++			prtad = mii_data->phy_id;
++			devad = mii_data->reg_num;
++		}
++		mii_data->val_out = mdiobus_read(phydev->mdio.bus, prtad,
++						 devad);
+ 		return 0;
+ 
+ 	case SIOCSMIIREG:
+-		if (mii_data->phy_id == phydev->mdio.addr) {
+-			switch (mii_data->reg_num) {
++		if (mdio_phy_id_is_c45(mii_data->phy_id)) {
++			prtad = mdio_phy_id_prtad(mii_data->phy_id);
++			devad = mdio_phy_id_devad(mii_data->phy_id);
++			devad = MII_ADDR_C45 | devad << 16 | mii_data->reg_num;
++		} else {
++			prtad = mii_data->phy_id;
++			devad = mii_data->reg_num;
++		}
++		if (prtad == phydev->mdio.addr) {
++			switch (devad) {
+ 			case MII_BMCR:
+ 				if ((val & (BMCR_RESET | BMCR_ANENABLE)) == 0) {
+ 					if (phydev->autoneg == AUTONEG_ENABLE)
+@@ -443,11 +459,10 @@ int phy_mii_ioctl(struct phy_device *phydev, struct ifreq *ifr, int cmd)
+ 			}
+ 		}
+ 
+-		mdiobus_write(phydev->mdio.bus, mii_data->phy_id,
+-			      mii_data->reg_num, val);
++		mdiobus_write(phydev->mdio.bus, prtad, devad, val);
+ 
+-		if (mii_data->phy_id == phydev->mdio.addr &&
+-		    mii_data->reg_num == MII_BMCR &&
++		if (prtad == phydev->mdio.addr &&
++		    devad == MII_BMCR &&
+ 		    val & BMCR_RESET)
+ 			return phy_init_hw(phydev);
+ 
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/711-net-sfp-add-mandatory-attach-detach-methods-for-sfp-.patch b/target/linux/generic/backport-4.19/711-net-sfp-add-mandatory-attach-detach-methods-for-sfp-.patch
new file mode 100644
index 000000000000..5bce5b4016f5
--- /dev/null
+++ b/target/linux/generic/backport-4.19/711-net-sfp-add-mandatory-attach-detach-methods-for-sfp-.patch
@@ -0,0 +1,103 @@
+From aeabfaa63285470e81fa341e14f92d68880aa160 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 28 May 2019 10:57:34 +0100
+Subject: [PATCH 609/660] net: sfp: add mandatory attach/detach methods for sfp
+ buses
+
+Add attach and detach methods for SFP buses, which will allow us to get
+rid of the netdev storage in sfp-bus.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+Reviewed-by: Andrew Lunn <andrew@lunn.ch>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c | 16 ++++++++++++++++
+ drivers/net/phy/sfp-bus.c |  4 ++--
+ include/linux/sfp.h       |  6 ++++++
+ 3 files changed, 24 insertions(+), 2 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index d22d8ef5b766..905b4dffe086 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -1615,6 +1615,20 @@ int phylink_mii_ioctl(struct phylink *pl, struct ifreq *ifr, int cmd)
+ }
+ EXPORT_SYMBOL_GPL(phylink_mii_ioctl);
+ 
++static void phylink_sfp_attach(void *upstream, struct sfp_bus *bus)
++{
++	struct phylink *pl = upstream;
++
++	pl->netdev->sfp_bus = bus;
++}
++
++static void phylink_sfp_detach(void *upstream, struct sfp_bus *bus)
++{
++	struct phylink *pl = upstream;
++
++	pl->netdev->sfp_bus = NULL;
++}
++
+ static int phylink_sfp_module_insert(void *upstream,
+ 				     const struct sfp_eeprom_id *id)
+ {
+@@ -1733,6 +1747,8 @@ static void phylink_sfp_disconnect_phy(void *upstream)
+ }
+ 
+ static const struct sfp_upstream_ops sfp_phylink_ops = {
++	.attach = phylink_sfp_attach,
++	.detach = phylink_sfp_detach,
+ 	.module_insert = phylink_sfp_module_insert,
+ 	.link_up = phylink_sfp_link_up,
+ 	.link_down = phylink_sfp_link_down,
+diff --git a/drivers/net/phy/sfp-bus.c b/drivers/net/phy/sfp-bus.c
+index fef701bfad62..c664c905830a 100644
+--- a/drivers/net/phy/sfp-bus.c
++++ b/drivers/net/phy/sfp-bus.c
+@@ -350,7 +350,7 @@ static int sfp_register_bus(struct sfp_bus *bus)
+ 	bus->socket_ops->attach(bus->sfp);
+ 	if (bus->started)
+ 		bus->socket_ops->start(bus->sfp);
+-	bus->netdev->sfp_bus = bus;
++	bus->upstream_ops->attach(bus->upstream, bus);
+ 	bus->registered = true;
+ 	return 0;
+ }
+@@ -359,8 +359,8 @@ static void sfp_unregister_bus(struct sfp_bus *bus)
+ {
+ 	const struct sfp_upstream_ops *ops = bus->upstream_ops;
+ 
+-	bus->netdev->sfp_bus = NULL;
+ 	if (bus->registered) {
++		bus->upstream_ops->detach(bus->upstream, bus);
+ 		if (bus->started)
+ 			bus->socket_ops->stop(bus->sfp);
+ 		bus->socket_ops->detach(bus->sfp);
+diff --git a/include/linux/sfp.h b/include/linux/sfp.h
+index d37518e89db2..6d696aab926e 100644
+--- a/include/linux/sfp.h
++++ b/include/linux/sfp.h
+@@ -469,6 +469,10 @@ struct sfp_bus;
+ 
+ /**
+  * struct sfp_upstream_ops - upstream operations structure
++ * @attach: called when the sfp socket driver is bound to the upstream
++ *   (mandatory).
++ * @detach: called when the sfp socket driver is unbound from the upstream
++ *   (mandatory).
+  * @module_insert: called after a module has been detected to determine
+  *   whether the module is supported for the upstream device.
+  * @module_remove: called after the module has been removed.
+@@ -481,6 +485,8 @@ struct sfp_bus;
+  *   been removed.
+  */
+ struct sfp_upstream_ops {
++	void (*attach)(void *priv, struct sfp_bus *bus);
++	void (*detach)(void *priv, struct sfp_bus *bus);
+ 	int (*module_insert)(void *priv, const struct sfp_eeprom_id *id);
+ 	void (*module_remove)(void *priv);
+ 	void (*link_down)(void *priv);
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/712-net-sfp-remove-sfp-bus-use-of-netdevs.patch b/target/linux/generic/backport-4.19/712-net-sfp-remove-sfp-bus-use-of-netdevs.patch
new file mode 100644
index 000000000000..c8010d65bc49
--- /dev/null
+++ b/target/linux/generic/backport-4.19/712-net-sfp-remove-sfp-bus-use-of-netdevs.patch
@@ -0,0 +1,127 @@
+From 60d756717d772be90d07a07cd2cc140c76da3e4a Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 28 May 2019 10:57:39 +0100
+Subject: [PATCH 610/660] net: sfp: remove sfp-bus use of netdevs
+
+The sfp-bus code now no longer has any use for the network device
+structure, so remove its use.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+Reviewed-by: Andrew Lunn <andrew@lunn.ch>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c |  3 +--
+ drivers/net/phy/sfp-bus.c | 10 +++-------
+ include/linux/sfp.h       |  6 ++----
+ 3 files changed, 6 insertions(+), 13 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index 905b4dffe086..3a70d4c351c0 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -555,8 +555,7 @@ static int phylink_register_sfp(struct phylink *pl,
+ 		return ret;
+ 	}
+ 
+-	pl->sfp_bus = sfp_register_upstream(ref.fwnode, pl->netdev, pl,
+-					    &sfp_phylink_ops);
++	pl->sfp_bus = sfp_register_upstream(ref.fwnode, pl, &sfp_phylink_ops);
+ 	if (!pl->sfp_bus)
+ 		return -ENOMEM;
+ 
+diff --git a/drivers/net/phy/sfp-bus.c b/drivers/net/phy/sfp-bus.c
+index c664c905830a..5bc8099eaaf1 100644
+--- a/drivers/net/phy/sfp-bus.c
++++ b/drivers/net/phy/sfp-bus.c
+@@ -23,7 +23,6 @@ struct sfp_bus {
+ 
+ 	const struct sfp_upstream_ops *upstream_ops;
+ 	void *upstream;
+-	struct net_device *netdev;
+ 	struct phy_device *phydev;
+ 
+ 	bool registered;
+@@ -442,13 +441,11 @@ static void sfp_upstream_clear(struct sfp_bus *bus)
+ {
+ 	bus->upstream_ops = NULL;
+ 	bus->upstream = NULL;
+-	bus->netdev = NULL;
+ }
+ 
+ /**
+  * sfp_register_upstream() - Register the neighbouring device
+  * @fwnode: firmware node for the SFP bus
+- * @ndev: network device associated with the interface
+  * @upstream: the upstream private data
+  * @ops: the upstream's &struct sfp_upstream_ops
+  *
+@@ -459,7 +456,7 @@ static void sfp_upstream_clear(struct sfp_bus *bus)
+  * On error, returns %NULL.
+  */
+ struct sfp_bus *sfp_register_upstream(struct fwnode_handle *fwnode,
+-				      struct net_device *ndev, void *upstream,
++				      void *upstream,
+ 				      const struct sfp_upstream_ops *ops)
+ {
+ 	struct sfp_bus *bus = sfp_bus_get(fwnode);
+@@ -469,7 +466,6 @@ struct sfp_bus *sfp_register_upstream(struct fwnode_handle *fwnode,
+ 		rtnl_lock();
+ 		bus->upstream_ops = ops;
+ 		bus->upstream = upstream;
+-		bus->netdev = ndev;
+ 
+ 		if (bus->sfp) {
+ 			ret = sfp_register_bus(bus);
+@@ -591,7 +587,7 @@ struct sfp_bus *sfp_register_socket(struct device *dev, struct sfp *sfp,
+ 		bus->sfp = sfp;
+ 		bus->socket_ops = ops;
+ 
+-		if (bus->netdev) {
++		if (bus->upstream_ops) {
+ 			ret = sfp_register_bus(bus);
+ 			if (ret)
+ 				sfp_socket_clear(bus);
+@@ -611,7 +607,7 @@ EXPORT_SYMBOL_GPL(sfp_register_socket);
+ void sfp_unregister_socket(struct sfp_bus *bus)
+ {
+ 	rtnl_lock();
+-	if (bus->netdev)
++	if (bus->upstream_ops)
+ 		sfp_unregister_bus(bus);
+ 	sfp_socket_clear(bus);
+ 	rtnl_unlock();
+diff --git a/include/linux/sfp.h b/include/linux/sfp.h
+index 6d696aab926e..fb3eeec347a9 100644
+--- a/include/linux/sfp.h
++++ b/include/linux/sfp.h
+@@ -464,7 +464,6 @@ enum {
+ struct fwnode_handle;
+ struct ethtool_eeprom;
+ struct ethtool_modinfo;
+-struct net_device;
+ struct sfp_bus;
+ 
+ /**
+@@ -510,7 +509,7 @@ int sfp_get_module_eeprom(struct sfp_bus *bus, struct ethtool_eeprom *ee,
+ void sfp_upstream_start(struct sfp_bus *bus);
+ void sfp_upstream_stop(struct sfp_bus *bus);
+ struct sfp_bus *sfp_register_upstream(struct fwnode_handle *fwnode,
+-				      struct net_device *ndev, void *upstream,
++				      void *upstream,
+ 				      const struct sfp_upstream_ops *ops);
+ void sfp_unregister_upstream(struct sfp_bus *bus);
+ #else
+@@ -555,8 +554,7 @@ static inline void sfp_upstream_stop(struct sfp_bus *bus)
+ }
+ 
+ static inline struct sfp_bus *sfp_register_upstream(
+-	struct fwnode_handle *fwnode,
+-	struct net_device *ndev, void *upstream,
++	struct fwnode_handle *fwnode, void *upstream,
+ 	const struct sfp_upstream_ops *ops)
+ {
+ 	return (struct sfp_bus *)-1;
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/713-net-phylink-avoid-reducing-support-mask.patch b/target/linux/generic/backport-4.19/713-net-phylink-avoid-reducing-support-mask.patch
new file mode 100644
index 000000000000..8aadc5ad6fc6
--- /dev/null
+++ b/target/linux/generic/backport-4.19/713-net-phylink-avoid-reducing-support-mask.patch
@@ -0,0 +1,89 @@
+From 8ac1d3e5cf7d277769ba3403d99f643fab1e3fae Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Sat, 23 Nov 2019 14:19:54 +0000
+Subject: [PATCH 611/660] net: phylink: avoid reducing support mask
+
+Avoid reducing the support mask as a result of the interface type
+selected for SFP modules, or when setting the link settings through
+ethtool - this should only change when the supported link modes of
+the hardware combination change.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+---
+ drivers/net/phy/phylink.c | 13 +++++++++----
+ 1 file changed, 9 insertions(+), 4 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index 3a70d4c351c0..702dcc142372 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -1137,6 +1137,7 @@ EXPORT_SYMBOL_GPL(phylink_ethtool_ksettings_get);
+ int phylink_ethtool_ksettings_set(struct phylink *pl,
+ 				  const struct ethtool_link_ksettings *kset)
+ {
++	__ETHTOOL_DECLARE_LINK_MODE_MASK(support);
+ 	struct ethtool_link_ksettings our_kset;
+ 	struct phylink_link_state config;
+ 	int ret;
+@@ -1147,11 +1148,12 @@ int phylink_ethtool_ksettings_set(struct phylink *pl,
+ 	    kset->base.autoneg != AUTONEG_ENABLE)
+ 		return -EINVAL;
+ 
++	linkmode_copy(support, pl->supported);
+ 	config = pl->link_config;
+ 
+ 	/* Mask out unsupported advertisements */
+ 	linkmode_and(config.advertising, kset->link_modes.advertising,
+-		     pl->supported);
++		     support);
+ 
+ 	/* FIXME: should we reject autoneg if phy/mac does not support it? */
+ 	if (kset->base.autoneg == AUTONEG_DISABLE) {
+@@ -1161,7 +1163,7 @@ int phylink_ethtool_ksettings_set(struct phylink *pl,
+ 		 * duplex.
+ 		 */
+ 		s = phy_lookup_setting(kset->base.speed, kset->base.duplex,
+-				       pl->supported,
++				       support,
+ 				       __ETHTOOL_LINK_MODE_MASK_NBITS, false);
+ 		if (!s)
+ 			return -EINVAL;
+@@ -1191,7 +1193,7 @@ int phylink_ethtool_ksettings_set(struct phylink *pl,
+ 		__set_bit(ETHTOOL_LINK_MODE_Autoneg_BIT, config.advertising);
+ 	}
+ 
+-	if (phylink_validate(pl, pl->supported, &config))
++	if (phylink_validate(pl, support, &config))
+ 		return -EINVAL;
+ 
+ 	/* If autonegotiation is enabled, we must have an advertisement */
+@@ -1633,6 +1635,7 @@ static int phylink_sfp_module_insert(void *upstream,
+ {
+ 	struct phylink *pl = upstream;
+ 	__ETHTOOL_DECLARE_LINK_MODE_MASK(support) = { 0, };
++	__ETHTOOL_DECLARE_LINK_MODE_MASK(support1);
+ 	struct phylink_link_state config;
+ 	phy_interface_t iface;
+ 	int ret = 0;
+@@ -1660,6 +1663,8 @@ static int phylink_sfp_module_insert(void *upstream,
+ 		return ret;
+ 	}
+ 
++	linkmode_copy(support1, support);
++
+ 	iface = sfp_select_interface(pl->sfp_bus, id, config.advertising);
+ 	if (iface == PHY_INTERFACE_MODE_NA) {
+ 		netdev_err(pl->netdev,
+@@ -1669,7 +1674,7 @@ static int phylink_sfp_module_insert(void *upstream,
+ 	}
+ 
+ 	config.interface = iface;
+-	ret = phylink_validate(pl, support, &config);
++	ret = phylink_validate(pl, support1, &config);
+ 	if (ret) {
+ 		netdev_err(pl->netdev, "validation of %s/%s with support %*pb failed: %d\n",
+ 			   phylink_an_mode_str(MLO_AN_INBAND),
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/714-net-sfp-Stop-SFP-polling-and-interrupt-handling-duri.patch b/target/linux/generic/backport-4.19/714-net-sfp-Stop-SFP-polling-and-interrupt-handling-duri.patch
new file mode 100644
index 000000000000..f9575099d121
--- /dev/null
+++ b/target/linux/generic/backport-4.19/714-net-sfp-Stop-SFP-polling-and-interrupt-handling-duri.patch
@@ -0,0 +1,99 @@
+From 254236a22109efa84c9e9f5a9c76a1719439e309 Mon Sep 17 00:00:00 2001
+From: Robert Hancock <hancock@sedsystems.ca>
+Date: Fri, 7 Jun 2019 10:42:35 -0600
+Subject: [PATCH 612/660] net: sfp: Stop SFP polling and interrupt handling
+ during shutdown
+
+SFP device polling can cause problems during the shutdown process if the
+parent devices of the network controller have been shut down already.
+This problem was seen on the iMX6 platform with PCIe devices, where
+accessing the device after the bus is shut down causes a hang.
+
+Free any acquired GPIO interrupts and stop all delayed work in the SFP
+driver during the shutdown process, so that we ensure that no pending
+operations are still occurring after the SFP shutdown completes.
+
+Signed-off-by: Robert Hancock <hancock@sedsystems.ca>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+---
+ drivers/net/phy/sfp.c | 31 ++++++++++++++++++++++++++-----
+ 1 file changed, 26 insertions(+), 5 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 998d08ae7431..4fc06c4fc48e 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -183,6 +183,7 @@ struct sfp {
+ 	int (*write)(struct sfp *, bool, u8, void *, size_t);
+ 
+ 	struct gpio_desc *gpio[GPIO_MAX];
++	int gpio_irq[GPIO_MAX];
+ 
+ 	bool attached;
+ 	struct mutex st_mutex;			/* Protects state */
+@@ -1803,7 +1804,7 @@ static int sfp_probe(struct platform_device *pdev)
+ 	const struct sff_data *sff;
+ 	struct sfp *sfp;
+ 	bool poll = false;
+-	int irq, err, i;
++	int err, i;
+ 
+ 	sfp = sfp_alloc(&pdev->dev);
+ 	if (IS_ERR(sfp))
+@@ -1885,19 +1886,22 @@ static int sfp_probe(struct platform_device *pdev)
+ 		if (gpio_flags[i] != GPIOD_IN || !sfp->gpio[i])
+ 			continue;
+ 
+-		irq = gpiod_to_irq(sfp->gpio[i]);
+-		if (!irq) {
++		sfp->gpio_irq[i] = gpiod_to_irq(sfp->gpio[i]);
++		if (!sfp->gpio_irq[i]) {
+ 			poll = true;
+ 			continue;
+ 		}
+ 
+-		err = devm_request_threaded_irq(sfp->dev, irq, NULL, sfp_irq,
++		err = devm_request_threaded_irq(sfp->dev, sfp->gpio_irq[i],
++						NULL, sfp_irq,
+ 						IRQF_ONESHOT |
+ 						IRQF_TRIGGER_RISING |
+ 						IRQF_TRIGGER_FALLING,
+ 						dev_name(sfp->dev), sfp);
+-		if (err)
++		if (err) {
++			sfp->gpio_irq[i] = 0;
+ 			poll = true;
++		}
+ 	}
+ 
+ 	if (poll)
+@@ -1928,9 +1932,26 @@ static int sfp_remove(struct platform_device *pdev)
+ 	return 0;
+ }
+ 
++static void sfp_shutdown(struct platform_device *pdev)
++{
++	struct sfp *sfp = platform_get_drvdata(pdev);
++	int i;
++
++	for (i = 0; i < GPIO_MAX; i++) {
++		if (!sfp->gpio_irq[i])
++			continue;
++
++		devm_free_irq(sfp->dev, sfp->gpio_irq[i], sfp);
++	}
++
++	cancel_delayed_work_sync(&sfp->poll);
++	cancel_delayed_work_sync(&sfp->timeout);
++}
++
+ static struct platform_driver sfp_driver = {
+ 	.probe = sfp_probe,
+ 	.remove = sfp_remove,
++	.shutdown = sfp_shutdown,
+ 	.driver = {
+ 		.name = "sfp",
+ 		.of_match_table = sfp_of_match,
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/715-net-phylink-don-t-start-and-stop-SGMII-PHYs-in-SFP-m.patch b/target/linux/generic/backport-4.19/715-net-phylink-don-t-start-and-stop-SGMII-PHYs-in-SFP-m.patch
new file mode 100644
index 000000000000..37620e930471
--- /dev/null
+++ b/target/linux/generic/backport-4.19/715-net-phylink-don-t-start-and-stop-SGMII-PHYs-in-SFP-m.patch
@@ -0,0 +1,146 @@
+From b8803113537a1c1f457eba6270d46e3af305031f Mon Sep 17 00:00:00 2001
+From: Arseny Solokha <asolokha@kb.kras.ru>
+Date: Wed, 24 Jul 2019 20:31:39 +0700
+Subject: [PATCH 613/660] net: phylink: don't start and stop SGMII PHYs in SFP
+ modules twice
+
+SFP modules connected using the SGMII interface have their own PHYs which
+are handled by the struct phylink's phydev field. On the other hand, for
+the modules connected using 1000Base-X interface that field is not set.
+
+Since commit ce0aa27ff3f6 ("sfp: add sfp-bus to bridge between network
+devices and sfp cages") phylink_start() ends up setting the phydev field
+using the sfp-bus infrastructure, which eventually calls phy_start() on it,
+and then calling phy_start() again on the same phydev from phylink_start()
+itself. Similar call sequence holds for phylink_stop(), only in the reverse
+order. This results in WARNs during network interface bringup and shutdown
+when a copper SFP module is connected, as phy_start() and phy_stop() are
+called twice in a row for the same phy_device:
+
+  % ip link set up dev eth0
+  ------------[ cut here ]------------
+  called from state UP
+  WARNING: CPU: 1 PID: 155 at drivers/net/phy/phy.c:895 phy_start+0x74/0xc0
+  Modules linked in:
+  CPU: 1 PID: 155 Comm: backend Not tainted 5.2.0+ #1
+  NIP:  c0227bf0 LR: c0227bf0 CTR: c004d224
+  REGS: df547720 TRAP: 0700   Not tainted  (5.2.0+)
+  MSR:  00029000 <CE,EE,ME>  CR: 24002822  XER: 00000000
+
+  GPR00: c0227bf0 df5477d8 df5d7080 00000014 df9d2370 df9d5ac4 1f4eb000 00000001
+  GPR08: c061fe58 00000000 00000000 df5477d8 0000003c 100c8768 00000000 00000000
+  GPR16: df486a00 c046f1c8 c046eea0 00000000 c046e904 c0239604 db68449c 00000000
+  GPR24: e9083204 00000000 00000001 db684460 e9083404 00000000 db6dce00 db6dcc00
+  NIP [c0227bf0] phy_start+0x74/0xc0
+  LR [c0227bf0] phy_start+0x74/0xc0
+  Call Trace:
+  [df5477d8] [c0227bf0] phy_start+0x74/0xc0 (unreliable)
+  [df5477e8] [c023cad0] startup_gfar+0x398/0x3f4
+  [df547828] [c023cf08] gfar_enet_open+0x364/0x374
+  [df547898] [c029d870] __dev_open+0xe4/0x140
+  [df5478c8] [c029db70] __dev_change_flags+0xf0/0x188
+  [df5478f8] [c029dc28] dev_change_flags+0x20/0x54
+  [df547918] [c02ae304] do_setlink+0x310/0x818
+  [df547a08] [c02b1eb8] __rtnl_newlink+0x384/0x6b0
+  [df547c28] [c02b222c] rtnl_newlink+0x48/0x68
+  [df547c48] [c02ad7c8] rtnetlink_rcv_msg+0x240/0x27c
+  [df547c98] [c02cc068] netlink_rcv_skb+0x8c/0xf0
+  [df547cd8] [c02cba3c] netlink_unicast+0x114/0x19c
+  [df547d08] [c02cbd74] netlink_sendmsg+0x2b0/0x2c0
+  [df547d58] [c027b668] sock_sendmsg_nosec+0x20/0x40
+  [df547d68] [c027d080] ___sys_sendmsg+0x17c/0x1dc
+  [df547e98] [c027df7c] __sys_sendmsg+0x68/0x84
+  [df547ef8] [c027e430] sys_socketcall+0x1a0/0x204
+  [df547f38] [c000d1d8] ret_from_syscall+0x0/0x38
+  --- interrupt: c01 at 0xfd4e030
+      LR = 0xfd4e010
+  Instruction dump:
+  813f0188 38800000 2b890005 419d0014 3d40c046 5529103a 394aa208 7c8a482e
+  3c60c046 3863a1b8 4cc63182 4be009a1 <0fe00000> 48000030 3c60c046 3863a1d0
+  ---[ end trace d4c095aeaf6ea998 ]---
+
+and
+
+  % ip link set down dev eth0
+  ------------[ cut here ]------------
+  called from state HALTED
+  WARNING: CPU: 1 PID: 184 at drivers/net/phy/phy.c:858 phy_stop+0x3c/0x88
+
+  <...>
+
+  Call Trace:
+  [df581788] [c0228450] phy_stop+0x3c/0x88 (unreliable)
+  [df581798] [c022d548] sfp_sm_phy_detach+0x1c/0x44
+  [df5817a8] [c022e8cc] sfp_sm_event+0x4b0/0x87c
+  [df581848] [c022f04c] sfp_upstream_stop+0x34/0x44
+  [df581858] [c0225608] phylink_stop+0x7c/0xe4
+  [df581868] [c023c57c] stop_gfar+0x7c/0x94
+  [df581888] [c023c5b8] gfar_close+0x24/0x94
+  [df5818a8] [c0298688] __dev_close_many+0xdc/0xf8
+  [df5818c8] [c029db58] __dev_change_flags+0xd8/0x188
+  [df5818f8] [c029dc28] dev_change_flags+0x20/0x54
+  [df581918] [c02ae304] do_setlink+0x310/0x818
+  [df581a08] [c02b1eb8] __rtnl_newlink+0x384/0x6b0
+  [df581c28] [c02b222c] rtnl_newlink+0x48/0x68
+  [df581c48] [c02ad7c8] rtnetlink_rcv_msg+0x240/0x27c
+  [df581c98] [c02cc068] netlink_rcv_skb+0x8c/0xf0
+  [df581cd8] [c02cba3c] netlink_unicast+0x114/0x19c
+  [df581d08] [c02cbd74] netlink_sendmsg+0x2b0/0x2c0
+  [df581d58] [c027b668] sock_sendmsg_nosec+0x20/0x40
+  [df581d68] [c027d080] ___sys_sendmsg+0x17c/0x1dc
+  [df581e98] [c027df7c] __sys_sendmsg+0x68/0x84
+  [df581ef8] [c027e430] sys_socketcall+0x1a0/0x204
+  [df581f38] [c000d1d8] ret_from_syscall+0x0/0x38
+
+  <...>
+
+  ---[ end trace d4c095aeaf6ea999 ]---
+
+SFP modules with the 1000Base-X interface are not affected.
+
+Place explicit calls to phy_start() and phy_stop() before enabling or after
+disabling an attached SFP module, where phydev is not yet set (or is
+already unset), so they will be made only from the inside of sfp-bus, if
+needed.
+
+Fixes: 217962615662 ("net: phy: warn if phy_start is called from invalid state")
+Signed-off-by: Arseny Solokha <asolokha@kb.kras.ru>
+Acked-by: Russell King <rmk+kernel@armlinux.org.uk>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+---
+ drivers/net/phy/phylink.c | 8 ++++----
+ 1 file changed, 4 insertions(+), 4 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index 702dcc142372..df9241e6d8b1 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -973,10 +973,10 @@ void phylink_start(struct phylink *pl)
+ 	}
+ 	if (pl->link_an_mode == MLO_AN_FIXED && pl->get_fixed_state)
+ 		mod_timer(&pl->link_poll, jiffies + HZ);
+-	if (pl->sfp_bus)
+-		sfp_upstream_start(pl->sfp_bus);
+ 	if (pl->phydev)
+ 		phy_start(pl->phydev);
++	if (pl->sfp_bus)
++		sfp_upstream_start(pl->sfp_bus);
+ }
+ EXPORT_SYMBOL_GPL(phylink_start);
+ 
+@@ -993,10 +993,10 @@ void phylink_stop(struct phylink *pl)
+ {
+ 	ASSERT_RTNL();
+ 
+-	if (pl->phydev)
+-		phy_stop(pl->phydev);
+ 	if (pl->sfp_bus)
+ 		sfp_upstream_stop(pl->sfp_bus);
++	if (pl->phydev)
++		phy_stop(pl->phydev);
+ 	del_timer_sync(&pl->link_poll);
+ 	if (pl->link_irq) {
+ 		free_irq(pl->link_irq, pl);
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/716-net-sfp-move-fwnode-parsing-into-sfp-bus-layer.patch b/target/linux/generic/backport-4.19/716-net-sfp-move-fwnode-parsing-into-sfp-bus-layer.patch
new file mode 100644
index 000000000000..8961b7a8f759
--- /dev/null
+++ b/target/linux/generic/backport-4.19/716-net-sfp-move-fwnode-parsing-into-sfp-bus-layer.patch
@@ -0,0 +1,186 @@
+From 4054955f0da08c81d42220cb445820d474f1ac92 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Sat, 14 Sep 2019 14:21:22 +0100
+Subject: [PATCH 614/660] net: sfp: move fwnode parsing into sfp-bus layer
+
+Rather than parsing the sfp firmware node in phylink, parse it in the
+sfp-bus code, so we can re-use this code for PHYs without having to
+duplicate the parsing.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c | 21 ++++---------
+ drivers/net/phy/sfp-bus.c | 65 +++++++++++++++++++++++++--------------
+ include/linux/sfp.h       | 10 +++---
+ 3 files changed, 53 insertions(+), 43 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index df9241e6d8b1..e0ae10bead43 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -538,26 +538,17 @@ static const struct sfp_upstream_ops sfp_phylink_ops;
+ static int phylink_register_sfp(struct phylink *pl,
+ 				struct fwnode_handle *fwnode)
+ {
+-	struct fwnode_reference_args ref;
++	struct sfp_bus *bus;
+ 	int ret;
+ 
+-	if (!fwnode)
+-		return 0;
+-
+-	ret = fwnode_property_get_reference_args(fwnode, "sfp", NULL,
+-						 0, 0, &ref);
+-	if (ret < 0) {
+-		if (ret == -ENOENT)
+-			return 0;
+-
+-		netdev_err(pl->netdev, "unable to parse \"sfp\" node: %d\n",
+-			   ret);
++	bus = sfp_register_upstream_node(fwnode, pl, &sfp_phylink_ops);
++	if (IS_ERR(bus)) {
++		ret = PTR_ERR(bus);
++		netdev_err(pl->netdev, "unable to attach SFP bus: %d\n", ret);
+ 		return ret;
+ 	}
+ 
+-	pl->sfp_bus = sfp_register_upstream(ref.fwnode, pl, &sfp_phylink_ops);
+-	if (!pl->sfp_bus)
+-		return -ENOMEM;
++	pl->sfp_bus = bus;
+ 
+ 	return 0;
+ }
+diff --git a/drivers/net/phy/sfp-bus.c b/drivers/net/phy/sfp-bus.c
+index 5bc8099eaaf1..16bee5afdd6e 100644
+--- a/drivers/net/phy/sfp-bus.c
++++ b/drivers/net/phy/sfp-bus.c
+@@ -3,6 +3,7 @@
+ #include <linux/list.h>
+ #include <linux/mutex.h>
+ #include <linux/phylink.h>
++#include <linux/property.h>
+ #include <linux/rtnetlink.h>
+ #include <linux/slab.h>
+ 
+@@ -444,45 +445,63 @@ static void sfp_upstream_clear(struct sfp_bus *bus)
+ }
+ 
+ /**
+- * sfp_register_upstream() - Register the neighbouring device
+- * @fwnode: firmware node for the SFP bus
++ * sfp_register_upstream_node() - parse and register the neighbouring device
++ * @fwnode: firmware node for the parent device (MAC or PHY)
+  * @upstream: the upstream private data
+  * @ops: the upstream's &struct sfp_upstream_ops
+  *
+- * Register the upstream device (eg, PHY) with the SFP bus. MAC drivers
+- * should use phylink, which will call this function for them. Returns
+- * a pointer to the allocated &struct sfp_bus.
++ * Parse the parent device's firmware node for a SFP bus, and register the
++ * SFP bus using sfp_register_upstream().
+  *
+- * On error, returns %NULL.
++ * Returns: on success, a pointer to the sfp_bus structure,
++ *	    %NULL if no SFP is specified,
++ * 	    on failure, an error pointer value:
++ * 		corresponding to the errors detailed for
++ * 		fwnode_property_get_reference_args().
++ * 	        %-ENOMEM if we failed to allocate the bus.
++ *		an error from the upstream's connect_phy() method.
+  */
+-struct sfp_bus *sfp_register_upstream(struct fwnode_handle *fwnode,
+-				      void *upstream,
+-				      const struct sfp_upstream_ops *ops)
++struct sfp_bus *sfp_register_upstream_node(struct fwnode_handle *fwnode,
++					   void *upstream,
++					   const struct sfp_upstream_ops *ops)
+ {
+-	struct sfp_bus *bus = sfp_bus_get(fwnode);
+-	int ret = 0;
++	struct fwnode_reference_args ref;
++	struct sfp_bus *bus;
++	int ret;
+ 
+-	if (bus) {
+-		rtnl_lock();
+-		bus->upstream_ops = ops;
+-		bus->upstream = upstream;
++	ret = fwnode_property_get_reference_args(fwnode, "sfp", NULL,
++						 0, 0, &ref);
++	if (ret == -ENOENT)
++		return NULL;
++	else if (ret < 0)
++		return ERR_PTR(ret);
+ 
+-		if (bus->sfp) {
+-			ret = sfp_register_bus(bus);
+-			if (ret)
+-				sfp_upstream_clear(bus);
+-		}
+-		rtnl_unlock();
++	bus = sfp_bus_get(ref.fwnode);
++	fwnode_handle_put(ref.fwnode);
++	if (!bus)
++		return ERR_PTR(-ENOMEM);
++
++	rtnl_lock();
++	bus->upstream_ops = ops;
++	bus->upstream = upstream;
++
++	if (bus->sfp) {
++		ret = sfp_register_bus(bus);
++		if (ret)
++			sfp_upstream_clear(bus);
++	} else {
++		ret = 0;
+ 	}
++	rtnl_unlock();
+ 
+ 	if (ret) {
+ 		sfp_bus_put(bus);
+-		bus = NULL;
++		bus = ERR_PTR(ret);
+ 	}
+ 
+ 	return bus;
+ }
+-EXPORT_SYMBOL_GPL(sfp_register_upstream);
++EXPORT_SYMBOL_GPL(sfp_register_upstream_node);
+ 
+ /**
+  * sfp_unregister_upstream() - Unregister sfp bus
+diff --git a/include/linux/sfp.h b/include/linux/sfp.h
+index fb3eeec347a9..9b6a6fc0a072 100644
+--- a/include/linux/sfp.h
++++ b/include/linux/sfp.h
+@@ -508,9 +508,9 @@ int sfp_get_module_eeprom(struct sfp_bus *bus, struct ethtool_eeprom *ee,
+ 			  u8 *data);
+ void sfp_upstream_start(struct sfp_bus *bus);
+ void sfp_upstream_stop(struct sfp_bus *bus);
+-struct sfp_bus *sfp_register_upstream(struct fwnode_handle *fwnode,
+-				      void *upstream,
+-				      const struct sfp_upstream_ops *ops);
++struct sfp_bus *sfp_register_upstream_node(struct fwnode_handle *fwnode,
++					   void *upstream,
++					   const struct sfp_upstream_ops *ops);
+ void sfp_unregister_upstream(struct sfp_bus *bus);
+ #else
+ static inline int sfp_parse_port(struct sfp_bus *bus,
+@@ -553,11 +553,11 @@ static inline void sfp_upstream_stop(struct sfp_bus *bus)
+ {
+ }
+ 
+-static inline struct sfp_bus *sfp_register_upstream(
++static inline struct sfp_bus *sfp_register_upstream_node(
+ 	struct fwnode_handle *fwnode, void *upstream,
+ 	const struct sfp_upstream_ops *ops)
+ {
+-	return (struct sfp_bus *)-1;
++	return NULL;
+ }
+ 
+ static inline void sfp_unregister_upstream(struct sfp_bus *bus)
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/717-net-sfp-rework-upstream-interface.patch b/target/linux/generic/backport-4.19/717-net-sfp-rework-upstream-interface.patch
new file mode 100644
index 000000000000..0ce4258965f9
--- /dev/null
+++ b/target/linux/generic/backport-4.19/717-net-sfp-rework-upstream-interface.patch
@@ -0,0 +1,263 @@
+From 863b5b6941f9f43b924393b6ba2b36647e7dee42 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Thu, 7 Nov 2019 17:06:08 +0000
+Subject: [PATCH 615/660] net: sfp: rework upstream interface
+
+The current upstream interface is an all-or-nothing, which is
+sub-optimal for future changes, as it doesn't allow the upstream driver
+to prepare for the SFP module becoming available, as it is at boot.
+
+Switch to a find-sfp-bus, add-upstream, del-upstream, put-sfp-bus
+interface structure instead, which allows the upstream driver to
+prepare for a module being available as soon as add-upstream is called.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c | 10 +++--
+ drivers/net/phy/sfp-bus.c | 92 +++++++++++++++++++++++++++------------
+ include/linux/sfp.h       | 25 +++++++----
+ 3 files changed, 88 insertions(+), 39 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index e0ae10bead43..2b075b6ca52e 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -541,7 +541,7 @@ static int phylink_register_sfp(struct phylink *pl,
+ 	struct sfp_bus *bus;
+ 	int ret;
+ 
+-	bus = sfp_register_upstream_node(fwnode, pl, &sfp_phylink_ops);
++	bus = sfp_bus_find_fwnode(fwnode);
+ 	if (IS_ERR(bus)) {
+ 		ret = PTR_ERR(bus);
+ 		netdev_err(pl->netdev, "unable to attach SFP bus: %d\n", ret);
+@@ -550,7 +550,10 @@ static int phylink_register_sfp(struct phylink *pl,
+ 
+ 	pl->sfp_bus = bus;
+ 
+-	return 0;
++	ret = sfp_bus_add_upstream(bus, pl, &sfp_phylink_ops);
++	sfp_bus_put(bus);
++
++	return ret;
+ }
+ 
+ /**
+@@ -634,8 +637,7 @@ EXPORT_SYMBOL_GPL(phylink_create);
+  */
+ void phylink_destroy(struct phylink *pl)
+ {
+-	if (pl->sfp_bus)
+-		sfp_unregister_upstream(pl->sfp_bus);
++	sfp_bus_del_upstream(pl->sfp_bus);
+ 	if (pl->link_gpio)
+ 		gpiod_put(pl->link_gpio);
+ 
+diff --git a/drivers/net/phy/sfp-bus.c b/drivers/net/phy/sfp-bus.c
+index 16bee5afdd6e..edc292ae717a 100644
+--- a/drivers/net/phy/sfp-bus.c
++++ b/drivers/net/phy/sfp-bus.c
+@@ -328,10 +328,19 @@ static void sfp_bus_release(struct kref *kref)
+ 	kfree(bus);
+ }
+ 
+-static void sfp_bus_put(struct sfp_bus *bus)
++/**
++ * sfp_bus_put() - put a reference on the &struct sfp_bus
++ * bus: the &struct sfp_bus found via sfp_bus_find_fwnode()
++ *
++ * Put a reference on the &struct sfp_bus and free the underlying structure
++ * if this was the last reference.
++ */
++void sfp_bus_put(struct sfp_bus *bus)
+ {
+-	kref_put_mutex(&bus->kref, sfp_bus_release, &sfp_mutex);
++	if (bus)
++		kref_put_mutex(&bus->kref, sfp_bus_release, &sfp_mutex);
+ }
++EXPORT_SYMBOL_GPL(sfp_bus_put);
+ 
+ static int sfp_register_bus(struct sfp_bus *bus)
+ {
+@@ -347,11 +356,11 @@ static int sfp_register_bus(struct sfp_bus *bus)
+ 				return ret;
+ 		}
+ 	}
++	bus->registered = true;
+ 	bus->socket_ops->attach(bus->sfp);
+ 	if (bus->started)
+ 		bus->socket_ops->start(bus->sfp);
+ 	bus->upstream_ops->attach(bus->upstream, bus);
+-	bus->registered = true;
+ 	return 0;
+ }
+ 
+@@ -445,13 +454,12 @@ static void sfp_upstream_clear(struct sfp_bus *bus)
+ }
+ 
+ /**
+- * sfp_register_upstream_node() - parse and register the neighbouring device
++ * sfp_bus_find_fwnode() - parse and locate the SFP bus from fwnode
+  * @fwnode: firmware node for the parent device (MAC or PHY)
+- * @upstream: the upstream private data
+- * @ops: the upstream's &struct sfp_upstream_ops
+  *
+- * Parse the parent device's firmware node for a SFP bus, and register the
+- * SFP bus using sfp_register_upstream().
++ * Parse the parent device's firmware node for a SFP bus, and locate
++ * the sfp_bus structure, incrementing its reference count.  This must
++ * be put via sfp_bus_put() when done.
+  *
+  * Returns: on success, a pointer to the sfp_bus structure,
+  *	    %NULL if no SFP is specified,
+@@ -461,9 +469,7 @@ static void sfp_upstream_clear(struct sfp_bus *bus)
+  * 	        %-ENOMEM if we failed to allocate the bus.
+  *		an error from the upstream's connect_phy() method.
+  */
+-struct sfp_bus *sfp_register_upstream_node(struct fwnode_handle *fwnode,
+-					   void *upstream,
+-					   const struct sfp_upstream_ops *ops)
++struct sfp_bus *sfp_bus_find_fwnode(struct fwnode_handle *fwnode)
+ {
+ 	struct fwnode_reference_args ref;
+ 	struct sfp_bus *bus;
+@@ -481,7 +487,39 @@ struct sfp_bus *sfp_register_upstream_node(struct fwnode_handle *fwnode,
+ 	if (!bus)
+ 		return ERR_PTR(-ENOMEM);
+ 
++	return bus;
++}
++EXPORT_SYMBOL_GPL(sfp_bus_find_fwnode);
++
++/**
++ * sfp_bus_add_upstream() - parse and register the neighbouring device
++ * @bus: the &struct sfp_bus found via sfp_bus_find_fwnode()
++ * @upstream: the upstream private data
++ * @ops: the upstream's &struct sfp_upstream_ops
++ *
++ * Add upstream driver for the SFP bus, and if the bus is complete, register
++ * the SFP bus using sfp_register_upstream().  This takes a reference on the
++ * bus, so it is safe to put the bus after this call.
++ *
++ * Returns: on success, a pointer to the sfp_bus structure,
++ *	    %NULL if no SFP is specified,
++ * 	    on failure, an error pointer value:
++ * 		corresponding to the errors detailed for
++ * 		fwnode_property_get_reference_args().
++ * 	        %-ENOMEM if we failed to allocate the bus.
++ *		an error from the upstream's connect_phy() method.
++ */
++int sfp_bus_add_upstream(struct sfp_bus *bus, void *upstream,
++			 const struct sfp_upstream_ops *ops)
++{
++	int ret;
++
++	/* If no bus, return success */
++	if (!bus)
++		return 0;
++
+ 	rtnl_lock();
++	kref_get(&bus->kref);
+ 	bus->upstream_ops = ops;
+ 	bus->upstream = upstream;
+ 
+@@ -494,33 +532,33 @@ struct sfp_bus *sfp_register_upstream_node(struct fwnode_handle *fwnode,
+ 	}
+ 	rtnl_unlock();
+ 
+-	if (ret) {
++	if (ret)
+ 		sfp_bus_put(bus);
+-		bus = ERR_PTR(ret);
+-	}
+ 
+-	return bus;
++	return ret;
+ }
+-EXPORT_SYMBOL_GPL(sfp_register_upstream_node);
++EXPORT_SYMBOL_GPL(sfp_bus_add_upstream);
+ 
+ /**
+- * sfp_unregister_upstream() - Unregister sfp bus
++ * sfp_bus_del_upstream() - Delete a sfp bus
+  * @bus: a pointer to the &struct sfp_bus structure for the sfp module
+  *
+- * Unregister a previously registered upstream connection for the SFP
+- * module. @bus is returned from sfp_register_upstream().
++ * Delete a previously registered upstream connection for the SFP
++ * module. @bus should have been added by sfp_bus_add_upstream().
+  */
+-void sfp_unregister_upstream(struct sfp_bus *bus)
++void sfp_bus_del_upstream(struct sfp_bus *bus)
+ {
+-	rtnl_lock();
+-	if (bus->sfp)
+-		sfp_unregister_bus(bus);
+-	sfp_upstream_clear(bus);
+-	rtnl_unlock();
++	if (bus) {
++		rtnl_lock();
++		if (bus->sfp)
++			sfp_unregister_bus(bus);
++		sfp_upstream_clear(bus);
++		rtnl_unlock();
+ 
+-	sfp_bus_put(bus);
++		sfp_bus_put(bus);
++	}
+ }
+-EXPORT_SYMBOL_GPL(sfp_unregister_upstream);
++EXPORT_SYMBOL_GPL(sfp_bus_del_upstream);
+ 
+ /* Socket driver entry points */
+ int sfp_add_phy(struct sfp_bus *bus, struct phy_device *phydev)
+diff --git a/include/linux/sfp.h b/include/linux/sfp.h
+index 9b6a6fc0a072..7f5bed30e3eb 100644
+--- a/include/linux/sfp.h
++++ b/include/linux/sfp.h
+@@ -508,10 +508,11 @@ int sfp_get_module_eeprom(struct sfp_bus *bus, struct ethtool_eeprom *ee,
+ 			  u8 *data);
+ void sfp_upstream_start(struct sfp_bus *bus);
+ void sfp_upstream_stop(struct sfp_bus *bus);
+-struct sfp_bus *sfp_register_upstream_node(struct fwnode_handle *fwnode,
+-					   void *upstream,
+-					   const struct sfp_upstream_ops *ops);
+-void sfp_unregister_upstream(struct sfp_bus *bus);
++void sfp_bus_put(struct sfp_bus *bus);
++struct sfp_bus *sfp_bus_find_fwnode(struct fwnode_handle *fwnode);
++int sfp_bus_add_upstream(struct sfp_bus *bus, void *upstream,
++			 const struct sfp_upstream_ops *ops);
++void sfp_bus_del_upstream(struct sfp_bus *bus);
+ #else
+ static inline int sfp_parse_port(struct sfp_bus *bus,
+ 				 const struct sfp_eeprom_id *id,
+@@ -553,14 +554,22 @@ static inline void sfp_upstream_stop(struct sfp_bus *bus)
+ {
+ }
+ 
+-static inline struct sfp_bus *sfp_register_upstream_node(
+-	struct fwnode_handle *fwnode, void *upstream,
+-	const struct sfp_upstream_ops *ops)
++static inline void sfp_bus_put(struct sfp_bus *bus)
++{
++}
++
++static inline struct sfp_bus *sfp_bus_find_fwnode(struct fwnode_handle *fwnode)
+ {
+ 	return NULL;
+ }
+ 
+-static inline void sfp_unregister_upstream(struct sfp_bus *bus)
++static int sfp_bus_add_upstream(struct sfp_bus *bus, void *upstream,
++				const struct sfp_upstream_ops *ops)
++{
++	return 0;
++}
++
++static inline void sfp_bus_del_upstream(struct sfp_bus *bus)
+ {
+ }
+ #endif
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/718-net-sfp-fix-sfp_bus_put-kernel-documentation.patch b/target/linux/generic/backport-4.19/718-net-sfp-fix-sfp_bus_put-kernel-documentation.patch
new file mode 100644
index 000000000000..724457623436
--- /dev/null
+++ b/target/linux/generic/backport-4.19/718-net-sfp-fix-sfp_bus_put-kernel-documentation.patch
@@ -0,0 +1,32 @@
+From ea7bfd81921827d334c2a23bd11ef0e4e2abafd2 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Sat, 9 Nov 2019 08:13:50 +0000
+Subject: [PATCH 616/660] net: sfp: fix sfp_bus_put() kernel documentation
+
+The kbuild test robot found a problem with htmldocs with the recent
+change to the SFP interfaces.  Fix the kernel documentation for
+sfp_bus_put() which was missing an '@' before the argument name
+description.
+
+Fixes: 727b3668b730 ("net: sfp: rework upstream interface")
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp-bus.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/drivers/net/phy/sfp-bus.c b/drivers/net/phy/sfp-bus.c
+index edc292ae717a..a352d1ff9b72 100644
+--- a/drivers/net/phy/sfp-bus.c
++++ b/drivers/net/phy/sfp-bus.c
+@@ -330,7 +330,7 @@ static void sfp_bus_release(struct kref *kref)
+ 
+ /**
+  * sfp_bus_put() - put a reference on the &struct sfp_bus
+- * bus: the &struct sfp_bus found via sfp_bus_find_fwnode()
++ * @bus: the &struct sfp_bus found via sfp_bus_find_fwnode()
+  *
+  * Put a reference on the &struct sfp_bus and free the underlying structure
+  * if this was the last reference.
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/719-net-sfp-fix-sfp_bus_add_upstream-warning.patch b/target/linux/generic/backport-4.19/719-net-sfp-fix-sfp_bus_add_upstream-warning.patch
new file mode 100644
index 000000000000..7185e1f43183
--- /dev/null
+++ b/target/linux/generic/backport-4.19/719-net-sfp-fix-sfp_bus_add_upstream-warning.patch
@@ -0,0 +1,32 @@
+From f76d84cd85f8bd3f083495f7ca723822cba8abc9 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Mon, 11 Nov 2019 10:23:35 +0000
+Subject: [PATCH 617/660] net: sfp: fix sfp_bus_add_upstream() warning
+
+When building with SFP disabled, the stub for sfp_bus_add_upstream()
+missed "inline".  Add it.
+
+Fixes: 727b3668b730 ("net: sfp: rework upstream interface")
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ include/linux/sfp.h | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/include/linux/sfp.h b/include/linux/sfp.h
+index 7f5bed30e3eb..d73a83dd327c 100644
+--- a/include/linux/sfp.h
++++ b/include/linux/sfp.h
+@@ -563,8 +563,8 @@ static inline struct sfp_bus *sfp_bus_find_fwnode(struct fwnode_handle *fwnode)
+ 	return NULL;
+ }
+ 
+-static int sfp_bus_add_upstream(struct sfp_bus *bus, void *upstream,
+-				const struct sfp_upstream_ops *ops)
++static inline int sfp_bus_add_upstream(struct sfp_bus *bus, void *upstream,
++				       const struct sfp_upstream_ops *ops)
+ {
+ 	return 0;
+ }
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/720-net-sfp-move-sfp-sub-state-machines-into-separate-fu.patch b/target/linux/generic/backport-4.19/720-net-sfp-move-sfp-sub-state-machines-into-separate-fu.patch
new file mode 100644
index 000000000000..c8bf90f58d79
--- /dev/null
+++ b/target/linux/generic/backport-4.19/720-net-sfp-move-sfp-sub-state-machines-into-separate-fu.patch
@@ -0,0 +1,129 @@
+From b9d6ed5cdb67533feda7f221eb06f2f9f1ff5047 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 11 Oct 2019 19:33:58 +0100
+Subject: [PATCH 618/660] net: sfp: move sfp sub-state machines into separate
+ functions
+
+Move the SFP sub-state machines out of the main state machine function,
+in preparation for it doing a bit more with the device state.  By doing
+so, we ensure that our debug after the main state machine is always
+printed.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 74 +++++++++++++++++++++++++------------------
+ 1 file changed, 43 insertions(+), 31 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 4fc06c4fc48e..30d2c3e017b7 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -1479,19 +1479,34 @@ static void sfp_sm_mod_remove(struct sfp *sfp)
+ 	dev_info(sfp->dev, "module removed\n");
+ }
+ 
+-static void sfp_sm_event(struct sfp *sfp, unsigned int event)
++/* This state machine tracks the netdev up/down state */
++static void sfp_sm_device(struct sfp *sfp, unsigned int event)
+ {
+-	mutex_lock(&sfp->sm_mutex);
++	switch (sfp->sm_dev_state) {
++	default:
++		if (event == SFP_E_DEV_UP)
++			sfp->sm_dev_state = SFP_DEV_UP;
++		break;
+ 
+-	dev_dbg(sfp->dev, "SM: enter %s:%s:%s event %s\n",
+-		mod_state_to_str(sfp->sm_mod_state),
+-		dev_state_to_str(sfp->sm_dev_state),
+-		sm_state_to_str(sfp->sm_state),
+-		event_to_str(event));
++	case SFP_DEV_UP:
++		if (event == SFP_E_DEV_DOWN) {
++			/* If the module has a PHY, avoid raising TX disable
++			 * as this resets the PHY. Otherwise, raise it to
++			 * turn the laser off.
++			 */
++			if (!sfp->mod_phy)
++				sfp_module_tx_disable(sfp);
++			sfp->sm_dev_state = SFP_DEV_DOWN;
++		}
++		break;
++	}
++}
+ 
+-	/* This state machine tracks the insert/remove state of
+-	 * the module, and handles probing the on-board EEPROM.
+-	 */
++/* This state machine tracks the insert/remove state of
++ * the module, and handles probing the on-board EEPROM.
++ */
++static void sfp_sm_module(struct sfp *sfp, unsigned int event)
++{
+ 	switch (sfp->sm_mod_state) {
+ 	default:
+ 		if (event == SFP_E_INSERT && sfp->attached) {
+@@ -1531,27 +1546,10 @@ static void sfp_sm_event(struct sfp *sfp, unsigned int event)
+ 		}
+ 		break;
+ 	}
++}
+ 
+-	/* This state machine tracks the netdev up/down state */
+-	switch (sfp->sm_dev_state) {
+-	default:
+-		if (event == SFP_E_DEV_UP)
+-			sfp->sm_dev_state = SFP_DEV_UP;
+-		break;
+-
+-	case SFP_DEV_UP:
+-		if (event == SFP_E_DEV_DOWN) {
+-			/* If the module has a PHY, avoid raising TX disable
+-			 * as this resets the PHY. Otherwise, raise it to
+-			 * turn the laser off.
+-			 */
+-			if (!sfp->mod_phy)
+-				sfp_module_tx_disable(sfp);
+-			sfp->sm_dev_state = SFP_DEV_DOWN;
+-		}
+-		break;
+-	}
+-
++static void sfp_sm_main(struct sfp *sfp, unsigned int event)
++{
+ 	/* Some events are global */
+ 	if (sfp->sm_state != SFP_S_DOWN &&
+ 	    (sfp->sm_mod_state != SFP_MOD_PRESENT ||
+@@ -1562,7 +1560,6 @@ static void sfp_sm_event(struct sfp *sfp, unsigned int event)
+ 		if (sfp->mod_phy)
+ 			sfp_sm_phy_detach(sfp);
+ 		sfp_sm_next(sfp, SFP_S_DOWN, 0);
+-		mutex_unlock(&sfp->sm_mutex);
+ 		return;
+ 	}
+ 
+@@ -1617,6 +1614,21 @@ static void sfp_sm_event(struct sfp *sfp, unsigned int event)
+ 	case SFP_S_TX_DISABLE:
+ 		break;
+ 	}
++}
++
++static void sfp_sm_event(struct sfp *sfp, unsigned int event)
++{
++	mutex_lock(&sfp->sm_mutex);
++
++	dev_dbg(sfp->dev, "SM: enter %s:%s:%s event %s\n",
++		mod_state_to_str(sfp->sm_mod_state),
++		dev_state_to_str(sfp->sm_dev_state),
++		sm_state_to_str(sfp->sm_state),
++		event_to_str(event));
++
++	sfp_sm_module(sfp, event);
++	sfp_sm_device(sfp, event);
++	sfp_sm_main(sfp, event);
+ 
+ 	dev_dbg(sfp->dev, "SM: exit %s:%s:%s\n",
+ 		mod_state_to_str(sfp->sm_mod_state),
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/721-net-sfp-move-tx-disable-on-device-down-to-main-state.patch b/target/linux/generic/backport-4.19/721-net-sfp-move-tx-disable-on-device-down-to-main-state.patch
new file mode 100644
index 000000000000..69ba89aaf232
--- /dev/null
+++ b/target/linux/generic/backport-4.19/721-net-sfp-move-tx-disable-on-device-down-to-main-state.patch
@@ -0,0 +1,46 @@
+From 7e89b737c97a9e7a81dd1584000bc136b92f12fd Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 11 Oct 2019 22:14:47 +0100
+Subject: [PATCH 619/660] net: sfp: move tx disable on device down to main
+ state machine
+
+Move the tx disable assertion on device down to the main state
+machine.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 10 ++--------
+ 1 file changed, 2 insertions(+), 8 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 30d2c3e017b7..0f073bdc9c08 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -1489,15 +1489,8 @@ static void sfp_sm_device(struct sfp *sfp, unsigned int event)
+ 		break;
+ 
+ 	case SFP_DEV_UP:
+-		if (event == SFP_E_DEV_DOWN) {
+-			/* If the module has a PHY, avoid raising TX disable
+-			 * as this resets the PHY. Otherwise, raise it to
+-			 * turn the laser off.
+-			 */
+-			if (!sfp->mod_phy)
+-				sfp_module_tx_disable(sfp);
++		if (event == SFP_E_DEV_DOWN)
+ 			sfp->sm_dev_state = SFP_DEV_DOWN;
+-		}
+ 		break;
+ 	}
+ }
+@@ -1559,6 +1552,7 @@ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+ 			sfp_sm_link_down(sfp);
+ 		if (sfp->mod_phy)
+ 			sfp_sm_phy_detach(sfp);
++		sfp_module_tx_disable(sfp);
+ 		sfp_sm_next(sfp, SFP_S_DOWN, 0);
+ 		return;
+ 	}
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/722-net-sfp-rename-sfp_sm_ins_next-as-sfp_sm_mod_next.patch b/target/linux/generic/backport-4.19/722-net-sfp-rename-sfp_sm_ins_next-as-sfp_sm_mod_next.patch
new file mode 100644
index 000000000000..eb50c3873f96
--- /dev/null
+++ b/target/linux/generic/backport-4.19/722-net-sfp-rename-sfp_sm_ins_next-as-sfp_sm_mod_next.patch
@@ -0,0 +1,76 @@
+From f2a1ccfc4ad4f97c98c3cc18eb32992151ce089a Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 11 Oct 2019 22:27:21 +0100
+Subject: [PATCH 620/660] net: sfp: rename sfp_sm_ins_next() as
+ sfp_sm_mod_next()
+
+sfp_sm_ins_next() modifies the module state machine.  Change it's name
+to reflect this.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 16 ++++++++--------
+ 1 file changed, 8 insertions(+), 8 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 0f073bdc9c08..ddf970fd92c2 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -1180,7 +1180,7 @@ static void sfp_sm_next(struct sfp *sfp, unsigned int state,
+ 	sfp_sm_set_timer(sfp, timeout);
+ }
+ 
+-static void sfp_sm_ins_next(struct sfp *sfp, unsigned int state,
++static void sfp_sm_mod_next(struct sfp *sfp, unsigned int state,
+ 			    unsigned int timeout)
+ {
+ 	sfp->sm_mod_state = state;
+@@ -1504,22 +1504,22 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 	default:
+ 		if (event == SFP_E_INSERT && sfp->attached) {
+ 			sfp_module_tx_disable(sfp);
+-			sfp_sm_ins_next(sfp, SFP_MOD_PROBE, T_PROBE_INIT);
++			sfp_sm_mod_next(sfp, SFP_MOD_PROBE, T_PROBE_INIT);
+ 		}
+ 		break;
+ 
+ 	case SFP_MOD_PROBE:
+ 		if (event == SFP_E_REMOVE) {
+-			sfp_sm_ins_next(sfp, SFP_MOD_EMPTY, 0);
++			sfp_sm_mod_next(sfp, SFP_MOD_EMPTY, 0);
+ 		} else if (event == SFP_E_TIMEOUT) {
+ 			int val = sfp_sm_mod_probe(sfp);
+ 
+ 			if (val == 0)
+-				sfp_sm_ins_next(sfp, SFP_MOD_PRESENT, 0);
++				sfp_sm_mod_next(sfp, SFP_MOD_PRESENT, 0);
+ 			else if (val > 0)
+-				sfp_sm_ins_next(sfp, SFP_MOD_HPOWER, val);
++				sfp_sm_mod_next(sfp, SFP_MOD_HPOWER, val);
+ 			else if (val != -EAGAIN)
+-				sfp_sm_ins_next(sfp, SFP_MOD_ERROR, 0);
++				sfp_sm_mod_next(sfp, SFP_MOD_ERROR, 0);
+ 			else
+ 				sfp_sm_set_timer(sfp, T_PROBE_RETRY);
+ 		}
+@@ -1527,7 +1527,7 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 
+ 	case SFP_MOD_HPOWER:
+ 		if (event == SFP_E_TIMEOUT) {
+-			sfp_sm_ins_next(sfp, SFP_MOD_PRESENT, 0);
++			sfp_sm_mod_next(sfp, SFP_MOD_PRESENT, 0);
+ 			break;
+ 		}
+ 		/* fallthrough */
+@@ -1535,7 +1535,7 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 	case SFP_MOD_ERROR:
+ 		if (event == SFP_E_REMOVE) {
+ 			sfp_sm_mod_remove(sfp);
+-			sfp_sm_ins_next(sfp, SFP_MOD_EMPTY, 0);
++			sfp_sm_mod_next(sfp, SFP_MOD_EMPTY, 0);
+ 		}
+ 		break;
+ 	}
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/723-net-sfp-handle-module-remove-outside-state-machine.patch b/target/linux/generic/backport-4.19/723-net-sfp-handle-module-remove-outside-state-machine.patch
new file mode 100644
index 000000000000..fa9ce622787c
--- /dev/null
+++ b/target/linux/generic/backport-4.19/723-net-sfp-handle-module-remove-outside-state-machine.patch
@@ -0,0 +1,58 @@
+From d2591ea5520e2ee8fa557f96bb64c23cafac4b20 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 15 Oct 2019 10:33:13 +0100
+Subject: [PATCH 621/660] net: sfp: handle module remove outside state machine
+
+Removing a module resets the module state machine back to its initial
+state.  Rather than explicitly handling this in every state, handle it
+early on outside of the state machine.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 16 +++++++++-------
+ 1 file changed, 9 insertions(+), 7 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index ddf970fd92c2..0946fe13e941 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -1500,6 +1500,14 @@ static void sfp_sm_device(struct sfp *sfp, unsigned int event)
+  */
+ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ {
++	/* Handle remove event globally, it resets this state machine */
++	if (event == SFP_E_REMOVE) {
++		if (sfp->sm_mod_state > SFP_MOD_PROBE)
++			sfp_sm_mod_remove(sfp);
++		sfp_sm_mod_next(sfp, SFP_MOD_EMPTY, 0);
++		return;
++	}
++
+ 	switch (sfp->sm_mod_state) {
+ 	default:
+ 		if (event == SFP_E_INSERT && sfp->attached) {
+@@ -1509,9 +1517,7 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 		break;
+ 
+ 	case SFP_MOD_PROBE:
+-		if (event == SFP_E_REMOVE) {
+-			sfp_sm_mod_next(sfp, SFP_MOD_EMPTY, 0);
+-		} else if (event == SFP_E_TIMEOUT) {
++		if (event == SFP_E_TIMEOUT) {
+ 			int val = sfp_sm_mod_probe(sfp);
+ 
+ 			if (val == 0)
+@@ -1533,10 +1539,6 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 		/* fallthrough */
+ 	case SFP_MOD_PRESENT:
+ 	case SFP_MOD_ERROR:
+-		if (event == SFP_E_REMOVE) {
+-			sfp_sm_mod_remove(sfp);
+-			sfp_sm_mod_next(sfp, SFP_MOD_EMPTY, 0);
+-		}
+ 		break;
+ 	}
+ }
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/724-net-sfp-rename-T_PROBE_WAIT-to-T_SERIAL.patch b/target/linux/generic/backport-4.19/724-net-sfp-rename-T_PROBE_WAIT-to-T_SERIAL.patch
new file mode 100644
index 000000000000..5c22d8b06ff7
--- /dev/null
+++ b/target/linux/generic/backport-4.19/724-net-sfp-rename-T_PROBE_WAIT-to-T_SERIAL.patch
@@ -0,0 +1,56 @@
+From 615090acb3c0b41691f3a03522ea38350387c0e4 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 15 Oct 2019 10:54:15 +0100
+Subject: [PATCH 622/660] net: sfp: rename T_PROBE_WAIT to T_SERIAL
+
+SFF-8472 rev 12.2 defines the time for the serial bus to become ready
+using t_serial.  Use this as our identifier for this timeout to make
+it clear what we are referring to.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 13 ++++++-------
+ 1 file changed, 6 insertions(+), 7 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 0946fe13e941..0e489f85b376 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -147,11 +147,10 @@ static const enum gpiod_flags gpio_flags[] = {
+  * the same length on the PCB, which means it's possible for MOD DEF 0 to
+  * connect before the I2C bus on MOD DEF 1/2.
+  *
+- * The SFP MSA specifies 300ms as t_init (the time taken for TX_FAULT to
+- * be deasserted) but makes no mention of the earliest time before we can
+- * access the I2C EEPROM.  However, Avago modules require 300ms.
++ * The SFF-8472 specifies t_serial ("Time from power on until module is
++ * ready for data transmission over the two wire serial bus.") as 300ms.
+  */
+-#define T_PROBE_INIT	msecs_to_jiffies(300)
++#define T_SERIAL	msecs_to_jiffies(300)
+ #define T_HPOWER_LEVEL	msecs_to_jiffies(300)
+ #define T_PROBE_RETRY	msecs_to_jiffies(100)
+ 
+@@ -1495,8 +1494,8 @@ static void sfp_sm_device(struct sfp *sfp, unsigned int event)
+ 	}
+ }
+ 
+-/* This state machine tracks the insert/remove state of
+- * the module, and handles probing the on-board EEPROM.
++/* This state machine tracks the insert/remove state of the module, probes
++ * the on-board EEPROM, and sets up the power level.
+  */
+ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ {
+@@ -1512,7 +1511,7 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 	default:
+ 		if (event == SFP_E_INSERT && sfp->attached) {
+ 			sfp_module_tx_disable(sfp);
+-			sfp_sm_mod_next(sfp, SFP_MOD_PROBE, T_PROBE_INIT);
++			sfp_sm_mod_next(sfp, SFP_MOD_PROBE, T_SERIAL);
+ 		}
+ 		break;
+ 
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/725-net-sfp-parse-SFP-power-requirement-earlier.patch b/target/linux/generic/backport-4.19/725-net-sfp-parse-SFP-power-requirement-earlier.patch
new file mode 100644
index 000000000000..7faa523c9e7f
--- /dev/null
+++ b/target/linux/generic/backport-4.19/725-net-sfp-parse-SFP-power-requirement-earlier.patch
@@ -0,0 +1,120 @@
+From d4b8746219e8c0361e5ed6e440ab3a8a600d1f76 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 11 Oct 2019 17:24:40 +0100
+Subject: [PATCH 623/660] net: sfp: parse SFP power requirement earlier
+
+Parse the SFP power requirement earlier, in preparation for moving the
+power level setup code.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 42 +++++++++++++++++++++++++++++-------------
+ 1 file changed, 29 insertions(+), 13 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 0e489f85b376..b140616c077c 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -196,6 +196,8 @@ struct sfp {
+ 	unsigned int sm_retries;
+ 
+ 	struct sfp_eeprom_id id;
++	unsigned int module_power_mW;
++
+ #if IS_ENABLED(CONFIG_HWMON)
+ 	struct sfp_diag diag;
+ 	struct device *hwmon_dev;
+@@ -1309,17 +1311,14 @@ static void sfp_sm_mod_init(struct sfp *sfp)
+ 		sfp_sm_probe_phy(sfp);
+ }
+ 
+-static int sfp_sm_mod_hpower(struct sfp *sfp)
++static int sfp_module_parse_power(struct sfp *sfp)
+ {
+-	u32 power;
+-	u8 val;
+-	int err;
++	u32 power_mW = 1000;
+ 
+-	power = 1000;
+ 	if (sfp->id.ext.options & cpu_to_be16(SFP_OPTIONS_POWER_DECL))
+-		power = 1500;
++		power_mW = 1500;
+ 	if (sfp->id.ext.options & cpu_to_be16(SFP_OPTIONS_HIGH_POWER_LEVEL))
+-		power = 2000;
++		power_mW = 2000;
+ 
+ 	if (sfp->id.ext.sff8472_compliance == SFP_SFF8472_COMPLIANCE_NONE &&
+ 	    (sfp->id.ext.diagmon & (SFP_DIAGMON_DDM | SFP_DIAGMON_ADDRMODE)) !=
+@@ -1328,23 +1327,33 @@ static int sfp_sm_mod_hpower(struct sfp *sfp)
+ 		 * or requires an address change sequence, so assume that
+ 		 * the module powers up in the indicated power mode.
+ 		 */
+-		if (power > sfp->max_power_mW) {
++		if (power_mW > sfp->max_power_mW) {
+ 			dev_err(sfp->dev,
+ 				"Host does not support %u.%uW modules\n",
+-				power / 1000, (power / 100) % 10);
++				power_mW / 1000, (power_mW / 100) % 10);
+ 			return -EINVAL;
+ 		}
+ 		return 0;
+ 	}
+ 
+-	if (power > sfp->max_power_mW) {
++	if (power_mW > sfp->max_power_mW) {
+ 		dev_warn(sfp->dev,
+ 			 "Host does not support %u.%uW modules, module left in power mode 1\n",
+-			 power / 1000, (power / 100) % 10);
++			 power_mW / 1000, (power_mW / 100) % 10);
+ 		return 0;
+ 	}
+ 
+-	if (power <= 1000)
++	sfp->module_power_mW = power_mW;
++
++	return 0;
++}
++
++static int sfp_sm_mod_hpower(struct sfp *sfp)
++{
++	u8 val;
++	int err;
++
++	if (sfp->module_power_mW <= 1000)
+ 		return 0;
+ 
+ 	err = sfp_read(sfp, true, SFP_EXT_STATUS, &val, sizeof(val));
+@@ -1364,7 +1373,8 @@ static int sfp_sm_mod_hpower(struct sfp *sfp)
+ 	}
+ 
+ 	dev_info(sfp->dev, "Module switched to %u.%uW power level\n",
+-		 power / 1000, (power / 100) % 10);
++		 sfp->module_power_mW / 1000,
++		 (sfp->module_power_mW / 100) % 10);
+ 	return T_HPOWER_LEVEL;
+ 
+ err:
+@@ -1451,6 +1461,11 @@ static int sfp_sm_mod_probe(struct sfp *sfp)
+ 		dev_warn(sfp->dev,
+ 			 "module address swap to access page 0xA2 is not supported.\n");
+ 
++	/* Parse the module power requirement */
++	ret = sfp_module_parse_power(sfp);
++	if (ret < 0)
++		return ret;
++
+ 	ret = sfp_hwmon_insert(sfp);
+ 	if (ret < 0)
+ 		return ret;
+@@ -1474,6 +1489,7 @@ static void sfp_sm_mod_remove(struct sfp *sfp)
+ 	sfp_module_tx_disable(sfp);
+ 
+ 	memset(&sfp->id, 0, sizeof(sfp->id));
++	sfp->module_power_mW = 0;
+ 
+ 	dev_info(sfp->dev, "module removed\n");
+ }
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/726-net-sfp-avoid-power-switch-on-address-change-modules.patch b/target/linux/generic/backport-4.19/726-net-sfp-avoid-power-switch-on-address-change-modules.patch
new file mode 100644
index 000000000000..58fd1d823075
--- /dev/null
+++ b/target/linux/generic/backport-4.19/726-net-sfp-avoid-power-switch-on-address-change-modules.patch
@@ -0,0 +1,70 @@
+From dca678b8838945572cf50584cb33a7199c1fd397 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Thu, 17 Oct 2019 00:24:18 +0100
+Subject: [PATCH 624/660] net: sfp: avoid power switch on address-change
+ modules
+
+If the module indicates that it requires an address change sequence to
+switch between address 0x50 and 0x51, which we don't support, we can't
+write to the register that controls the power mode to switch to high
+power mode.  Warn the user that the module may not be functional in
+this case, and don't try to change the power mode.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 31 ++++++++++++++++++++-----------
+ 1 file changed, 20 insertions(+), 11 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index b140616c077c..383c00aefcd4 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -1320,25 +1320,34 @@ static int sfp_module_parse_power(struct sfp *sfp)
+ 	if (sfp->id.ext.options & cpu_to_be16(SFP_OPTIONS_HIGH_POWER_LEVEL))
+ 		power_mW = 2000;
+ 
+-	if (sfp->id.ext.sff8472_compliance == SFP_SFF8472_COMPLIANCE_NONE &&
+-	    (sfp->id.ext.diagmon & (SFP_DIAGMON_DDM | SFP_DIAGMON_ADDRMODE)) !=
+-	    SFP_DIAGMON_DDM) {
+-		/* The module appears not to implement bus address 0xa2,
+-		 * or requires an address change sequence, so assume that
+-		 * the module powers up in the indicated power mode.
+-		 */
+-		if (power_mW > sfp->max_power_mW) {
++	if (power_mW > sfp->max_power_mW) {
++		/* Module power specification exceeds the allowed maximum. */
++		if (sfp->id.ext.sff8472_compliance ==
++			SFP_SFF8472_COMPLIANCE_NONE &&
++		    !(sfp->id.ext.diagmon & SFP_DIAGMON_DDM)) {
++			/* The module appears not to implement bus address
++			 * 0xa2, so assume that the module powers up in the
++			 * indicated mode.
++			 */
+ 			dev_err(sfp->dev,
+ 				"Host does not support %u.%uW modules\n",
+ 				power_mW / 1000, (power_mW / 100) % 10);
+ 			return -EINVAL;
++		} else {
++			dev_warn(sfp->dev,
++				 "Host does not support %u.%uW modules, module left in power mode 1\n",
++				 power_mW / 1000, (power_mW / 100) % 10);
++			return 0;
+ 		}
+-		return 0;
+ 	}
+ 
+-	if (power_mW > sfp->max_power_mW) {
++	/* If the module requires a higher power mode, but also requires
++	 * an address change sequence, warn the user that the module may
++	 * not be functional.
++	 */
++	if (sfp->id.ext.diagmon & SFP_DIAGMON_ADDRMODE && power_mW > 1000) {
+ 		dev_warn(sfp->dev,
+-			 "Host does not support %u.%uW modules, module left in power mode 1\n",
++			 "Address Change Sequence not supported but module requies %u.%uW, module may not be functional\n",
+ 			 power_mW / 1000, (power_mW / 100) % 10);
+ 		return 0;
+ 	}
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/727-net-sfp-control-TX_DISABLE-and-phy-only-from-main-st.patch b/target/linux/generic/backport-4.19/727-net-sfp-control-TX_DISABLE-and-phy-only-from-main-st.patch
new file mode 100644
index 000000000000..8fe1f9f7e7e7
--- /dev/null
+++ b/target/linux/generic/backport-4.19/727-net-sfp-control-TX_DISABLE-and-phy-only-from-main-st.patch
@@ -0,0 +1,57 @@
+From df5c4d93c5a59cba0f7479a4cd4e22b50726ce88 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Thu, 17 Oct 2019 11:12:42 +0100
+Subject: [PATCH 625/660] net: sfp: control TX_DISABLE and phy only from main
+ state machine
+
+We initialise TX_DISABLE when the sfp cage is probed, and then
+maintain its state in the main state machine.  However, the module
+state machine:
+- negates it when detecting a newly inserted module when it's already
+  guaranteed to be negated.
+- negates it when the module is removed, but the main state machine
+  will do this anyway.
+
+Make TX_DISABLE entirely controlled by the main state machine.
+
+The main state machine also probes the module for a PHY, and removes
+the PHY when the the module is removed.  Hence, removing the PHY in
+sfp_sm_module_remove() is also redundant, and is a left-over from
+when we tried to probe for the PHY from the module state machine.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 9 +--------
+ 1 file changed, 1 insertion(+), 8 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 383c00aefcd4..3883d78c37df 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -1492,11 +1492,6 @@ static void sfp_sm_mod_remove(struct sfp *sfp)
+ 
+ 	sfp_hwmon_remove(sfp);
+ 
+-	if (sfp->mod_phy)
+-		sfp_sm_phy_detach(sfp);
+-
+-	sfp_module_tx_disable(sfp);
+-
+ 	memset(&sfp->id, 0, sizeof(sfp->id));
+ 	sfp->module_power_mW = 0;
+ 
+@@ -1534,10 +1529,8 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 
+ 	switch (sfp->sm_mod_state) {
+ 	default:
+-		if (event == SFP_E_INSERT && sfp->attached) {
+-			sfp_module_tx_disable(sfp);
++		if (event == SFP_E_INSERT && sfp->attached)
+ 			sfp_sm_mod_next(sfp, SFP_MOD_PROBE, T_SERIAL);
+-		}
+ 		break;
+ 
+ 	case SFP_MOD_PROBE:
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/728-net-sfp-split-the-PHY-probe-from-sfp_sm_mod_init.patch b/target/linux/generic/backport-4.19/728-net-sfp-split-the-PHY-probe-from-sfp_sm_mod_init.patch
new file mode 100644
index 000000000000..ed4a829d0779
--- /dev/null
+++ b/target/linux/generic/backport-4.19/728-net-sfp-split-the-PHY-probe-from-sfp_sm_mod_init.patch
@@ -0,0 +1,58 @@
+From 5ed0bd49b2d3ac4439c2d7f44e5a82b7cf6f409a Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 18 Oct 2019 10:09:02 +0100
+Subject: [PATCH 626/660] net: sfp: split the PHY probe from sfp_sm_mod_init()
+
+Move the PHY probe into a separate function, splitting it from
+sfp_sm_mod_init().  This will allow us to eliminate the 50ms mdelay()
+inside the state machine.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 21 +++++++++++++--------
+ 1 file changed, 13 insertions(+), 8 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 3883d78c37df..9ef07679f639 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -1288,14 +1288,10 @@ static void sfp_sm_fault(struct sfp *sfp, bool warn)
+ static void sfp_sm_mod_init(struct sfp *sfp)
+ {
+ 	sfp_module_tx_enable(sfp);
++}
+ 
+-	/* Wait t_init before indicating that the link is up, provided the
+-	 * current state indicates no TX_FAULT.  If TX_FAULT clears before
+-	 * this time, that's fine too.
+-	 */
+-	sfp_sm_next(sfp, SFP_S_INIT, T_INIT_JIFFIES);
+-	sfp->sm_retries = 5;
+-
++static void sfp_sm_probe_for_phy(struct sfp *sfp)
++{
+ 	/* Setting the serdes link mode is guesswork: there's no
+ 	 * field in the EEPROM which indicates what mode should
+ 	 * be used.
+@@ -1580,8 +1576,17 @@ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+ 	switch (sfp->sm_state) {
+ 	case SFP_S_DOWN:
+ 		if (sfp->sm_mod_state == SFP_MOD_PRESENT &&
+-		    sfp->sm_dev_state == SFP_DEV_UP)
++		    sfp->sm_dev_state == SFP_DEV_UP) {
+ 			sfp_sm_mod_init(sfp);
++			sfp_sm_probe_for_phy(sfp);
++
++			/* Wait t_init before indicating that the link is up,
++			 * provided the current state indicates no TX_FAULT. If
++			 * TX_FAULT clears before this time, that's fine too.
++			 */
++			sfp_sm_next(sfp, SFP_S_INIT, T_INIT_JIFFIES);
++			sfp->sm_retries = 5;
++		}
+ 		break;
+ 
+ 	case SFP_S_INIT:
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/729-net-sfp-eliminate-mdelay-from-PHY-probe.patch b/target/linux/generic/backport-4.19/729-net-sfp-eliminate-mdelay-from-PHY-probe.patch
new file mode 100644
index 000000000000..c03e61544197
--- /dev/null
+++ b/target/linux/generic/backport-4.19/729-net-sfp-eliminate-mdelay-from-PHY-probe.patch
@@ -0,0 +1,135 @@
+From 0fe72afaa31f98ebd71bd6683fc47021105d0157 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 18 Oct 2019 10:21:46 +0100
+Subject: [PATCH 627/660] net: sfp: eliminate mdelay() from PHY probe
+
+Rather than using mdelay() to wait before probing the PHY (which holds
+several locks, including the rtnl lock), add an extra wait state to
+the state machine to introduce the 50ms delay without holding any
+locks.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 52 +++++++++++++++++++++++++++++++++----------
+ 1 file changed, 40 insertions(+), 12 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 9ef07679f639..9bc445e8292c 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -52,6 +52,7 @@ enum {
+ 	SFP_DEV_UP,
+ 
+ 	SFP_S_DOWN = 0,
++	SFP_S_WAIT,
+ 	SFP_S_INIT,
+ 	SFP_S_WAIT_LOS,
+ 	SFP_S_LINK_UP,
+@@ -108,6 +109,7 @@ static const char *event_to_str(unsigned short event)
+ 
+ static const char * const sm_state_strings[] = {
+ 	[SFP_S_DOWN] = "down",
++	[SFP_S_WAIT] = "wait",
+ 	[SFP_S_INIT] = "init",
+ 	[SFP_S_WAIT_LOS] = "wait_los",
+ 	[SFP_S_LINK_UP] = "link_up",
+@@ -139,6 +141,7 @@ static const enum gpiod_flags gpio_flags[] = {
+ 	GPIOD_ASIS,
+ };
+ 
++#define T_WAIT		msecs_to_jiffies(50)
+ #define T_INIT_JIFFIES	msecs_to_jiffies(300)
+ #define T_RESET_US	10
+ #define T_FAULT_RECOVER	msecs_to_jiffies(1000)
+@@ -159,9 +162,6 @@ static const enum gpiod_flags gpio_flags[] = {
+  */
+ #define SFP_PHY_ADDR	22
+ 
+-/* Give this long for the PHY to reset. */
+-#define T_PHY_RESET_MS	50
+-
+ struct sff_data {
+ 	unsigned int gpios;
+ 	bool (*module_supported)(const struct sfp_eeprom_id *id);
+@@ -1202,8 +1202,6 @@ static void sfp_sm_probe_phy(struct sfp *sfp)
+ 	struct phy_device *phy;
+ 	int err;
+ 
+-	msleep(T_PHY_RESET_MS);
+-
+ 	phy = mdiobus_scan(sfp->i2c_mii, SFP_PHY_ADDR);
+ 	if (phy == ERR_PTR(-ENODEV)) {
+ 		dev_info(sfp->dev, "no PHY detected\n");
+@@ -1558,6 +1556,8 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 
+ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+ {
++	unsigned long timeout;
++
+ 	/* Some events are global */
+ 	if (sfp->sm_state != SFP_S_DOWN &&
+ 	    (sfp->sm_mod_state != SFP_MOD_PRESENT ||
+@@ -1575,17 +1575,45 @@ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+ 	/* The main state machine */
+ 	switch (sfp->sm_state) {
+ 	case SFP_S_DOWN:
+-		if (sfp->sm_mod_state == SFP_MOD_PRESENT &&
+-		    sfp->sm_dev_state == SFP_DEV_UP) {
+-			sfp_sm_mod_init(sfp);
+-			sfp_sm_probe_for_phy(sfp);
++		if (sfp->sm_mod_state != SFP_MOD_PRESENT ||
++		    sfp->sm_dev_state != SFP_DEV_UP)
++			break;
++
++		sfp_sm_mod_init(sfp);
++
++		/* Initialise the fault clearance retries */
++		sfp->sm_retries = 5;
++
++		/* We need to check the TX_FAULT state, which is not defined
++		 * while TX_DISABLE is asserted. The earliest we want to do
++		 * anything (such as probe for a PHY) is 50ms.
++		 */
++		sfp_sm_next(sfp, SFP_S_WAIT, T_WAIT);
++		break;
+ 
++	case SFP_S_WAIT:
++		if (event != SFP_E_TIMEOUT)
++			break;
++
++		sfp_sm_probe_for_phy(sfp);
++
++		if (sfp->state & SFP_F_TX_FAULT) {
+ 			/* Wait t_init before indicating that the link is up,
+ 			 * provided the current state indicates no TX_FAULT. If
+ 			 * TX_FAULT clears before this time, that's fine too.
+ 			 */
+-			sfp_sm_next(sfp, SFP_S_INIT, T_INIT_JIFFIES);
+-			sfp->sm_retries = 5;
++			timeout = T_INIT_JIFFIES;
++			if (timeout > T_WAIT)
++				timeout -= T_WAIT;
++			else
++				timeout = 1;
++
++			sfp_sm_next(sfp, SFP_S_INIT, timeout);
++		} else {
++			/* TX_FAULT is not asserted, assume the module has
++			 * finished initialising.
++			 */
++			goto init_done;
+ 		}
+ 		break;
+ 
+@@ -1593,7 +1621,7 @@ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+ 		if (event == SFP_E_TIMEOUT && sfp->state & SFP_F_TX_FAULT)
+ 			sfp_sm_fault(sfp, true);
+ 		else if (event == SFP_E_TIMEOUT || event == SFP_E_TX_CLEAR)
+-			sfp_sm_link_check_los(sfp);
++	init_done:	sfp_sm_link_check_los(sfp);
+ 		break;
+ 
+ 	case SFP_S_WAIT_LOS:
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/730-net-sfp-allow-fault-processing-to-transition-to-othe.patch b/target/linux/generic/backport-4.19/730-net-sfp-allow-fault-processing-to-transition-to-othe.patch
new file mode 100644
index 000000000000..193df441ddd2
--- /dev/null
+++ b/target/linux/generic/backport-4.19/730-net-sfp-allow-fault-processing-to-transition-to-othe.patch
@@ -0,0 +1,74 @@
+From 2aa424ee7fbe43e2cd24e28c2f6388c4e1796bd2 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 18 Oct 2019 09:58:33 +0100
+Subject: [PATCH 628/660] net: sfp: allow fault processing to transition to
+ other states
+
+Add the next state to sfp_sm_fault() so that it can branch to other
+states. This will be necessary to improve the initialisation path.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 12 ++++++------
+ 1 file changed, 6 insertions(+), 6 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 9bc445e8292c..01378d05bcd9 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -1269,7 +1269,7 @@ static bool sfp_los_event_inactive(struct sfp *sfp, unsigned int event)
+ 		event == SFP_E_LOS_LOW);
+ }
+ 
+-static void sfp_sm_fault(struct sfp *sfp, bool warn)
++static void sfp_sm_fault(struct sfp *sfp, unsigned int next_state, bool warn)
+ {
+ 	if (sfp->sm_retries && !--sfp->sm_retries) {
+ 		dev_err(sfp->dev,
+@@ -1279,7 +1279,7 @@ static void sfp_sm_fault(struct sfp *sfp, bool warn)
+ 		if (warn)
+ 			dev_err(sfp->dev, "module transmit fault indicated\n");
+ 
+-		sfp_sm_next(sfp, SFP_S_TX_FAULT, T_FAULT_RECOVER);
++		sfp_sm_next(sfp, next_state, T_FAULT_RECOVER);
+ 	}
+ }
+ 
+@@ -1619,14 +1619,14 @@ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+ 
+ 	case SFP_S_INIT:
+ 		if (event == SFP_E_TIMEOUT && sfp->state & SFP_F_TX_FAULT)
+-			sfp_sm_fault(sfp, true);
++			sfp_sm_fault(sfp, SFP_S_TX_FAULT, true);
+ 		else if (event == SFP_E_TIMEOUT || event == SFP_E_TX_CLEAR)
+ 	init_done:	sfp_sm_link_check_los(sfp);
+ 		break;
+ 
+ 	case SFP_S_WAIT_LOS:
+ 		if (event == SFP_E_TX_FAULT)
+-			sfp_sm_fault(sfp, true);
++			sfp_sm_fault(sfp, SFP_S_TX_FAULT, true);
+ 		else if (sfp_los_event_inactive(sfp, event))
+ 			sfp_sm_link_up(sfp);
+ 		break;
+@@ -1634,7 +1634,7 @@ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+ 	case SFP_S_LINK_UP:
+ 		if (event == SFP_E_TX_FAULT) {
+ 			sfp_sm_link_down(sfp);
+-			sfp_sm_fault(sfp, true);
++			sfp_sm_fault(sfp, SFP_S_TX_FAULT, true);
+ 		} else if (sfp_los_event_active(sfp, event)) {
+ 			sfp_sm_link_down(sfp);
+ 			sfp_sm_next(sfp, SFP_S_WAIT_LOS, 0);
+@@ -1650,7 +1650,7 @@ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+ 
+ 	case SFP_S_REINIT:
+ 		if (event == SFP_E_TIMEOUT && sfp->state & SFP_F_TX_FAULT) {
+-			sfp_sm_fault(sfp, false);
++			sfp_sm_fault(sfp, SFP_S_TX_FAULT, false);
+ 		} else if (event == SFP_E_TIMEOUT || event == SFP_E_TX_CLEAR) {
+ 			dev_info(sfp->dev, "module transmit fault recovered\n");
+ 			sfp_sm_link_check_los(sfp);
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/731-net-sfp-ensure-TX_FAULT-has-deasserted-before-probin.patch b/target/linux/generic/backport-4.19/731-net-sfp-ensure-TX_FAULT-has-deasserted-before-probin.patch
new file mode 100644
index 000000000000..6a5e947737f6
--- /dev/null
+++ b/target/linux/generic/backport-4.19/731-net-sfp-ensure-TX_FAULT-has-deasserted-before-probin.patch
@@ -0,0 +1,85 @@
+From 38b62a12231be4b86fc5ca5477579d29831c02a5 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 18 Oct 2019 10:31:07 +0100
+Subject: [PATCH 629/660] net: sfp: ensure TX_FAULT has deasserted before
+ probing the PHY
+
+TX_FAULT should be deasserted to indicate that the module has completed
+its initialisation.  This may include the on-board PHY, so wait until
+the module has deasserted TX_FAULT before probing the PHY.
+
+This means that we need an extra state to handle a TX_FAULT that
+remains set for longer than t_init, since using the existing handling
+state would bypass the PHY probe.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 31 +++++++++++++++++++++++++------
+ 1 file changed, 25 insertions(+), 6 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 01378d05bcd9..8a6adf006f8f 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -54,6 +54,7 @@ enum {
+ 	SFP_S_DOWN = 0,
+ 	SFP_S_WAIT,
+ 	SFP_S_INIT,
++	SFP_S_INIT_TX_FAULT,
+ 	SFP_S_WAIT_LOS,
+ 	SFP_S_LINK_UP,
+ 	SFP_S_TX_FAULT,
+@@ -111,6 +112,7 @@ static const char * const sm_state_strings[] = {
+ 	[SFP_S_DOWN] = "down",
+ 	[SFP_S_WAIT] = "wait",
+ 	[SFP_S_INIT] = "init",
++	[SFP_S_INIT_TX_FAULT] = "init_tx_fault",
+ 	[SFP_S_WAIT_LOS] = "wait_los",
+ 	[SFP_S_LINK_UP] = "link_up",
+ 	[SFP_S_TX_FAULT] = "tx_fault",
+@@ -1595,8 +1597,6 @@ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+ 		if (event != SFP_E_TIMEOUT)
+ 			break;
+ 
+-		sfp_sm_probe_for_phy(sfp);
+-
+ 		if (sfp->state & SFP_F_TX_FAULT) {
+ 			/* Wait t_init before indicating that the link is up,
+ 			 * provided the current state indicates no TX_FAULT. If
+@@ -1618,10 +1618,29 @@ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+ 		break;
+ 
+ 	case SFP_S_INIT:
+-		if (event == SFP_E_TIMEOUT && sfp->state & SFP_F_TX_FAULT)
+-			sfp_sm_fault(sfp, SFP_S_TX_FAULT, true);
+-		else if (event == SFP_E_TIMEOUT || event == SFP_E_TX_CLEAR)
+-	init_done:	sfp_sm_link_check_los(sfp);
++		if (event == SFP_E_TIMEOUT && sfp->state & SFP_F_TX_FAULT) {
++			/* TX_FAULT is still asserted after t_init, so assume
++			 * there is a fault.
++			 */
++			sfp_sm_fault(sfp, SFP_S_INIT_TX_FAULT,
++				     sfp->sm_retries == 5);
++		} else if (event == SFP_E_TIMEOUT || event == SFP_E_TX_CLEAR) {
++	init_done:	/* TX_FAULT deasserted or we timed out with TX_FAULT
++			 * clear.  Probe for the PHY and check the LOS state.
++			 */
++			sfp_sm_probe_for_phy(sfp);
++			sfp_sm_link_check_los(sfp);
++
++			/* Reset the fault retry count */
++			sfp->sm_retries = 5;
++		}
++		break;
++
++	case SFP_S_INIT_TX_FAULT:
++		if (event == SFP_E_TIMEOUT) {
++			sfp_module_tx_fault_reset(sfp);
++			sfp_sm_next(sfp, SFP_S_INIT, T_INIT_JIFFIES);
++		}
+ 		break;
+ 
+ 	case SFP_S_WAIT_LOS:
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/732-net-sfp-track-upstream-s-attachment-state-in-state-m.patch b/target/linux/generic/backport-4.19/732-net-sfp-track-upstream-s-attachment-state-in-state-m.patch
new file mode 100644
index 000000000000..2d3af7cf7a5d
--- /dev/null
+++ b/target/linux/generic/backport-4.19/732-net-sfp-track-upstream-s-attachment-state-in-state-m.patch
@@ -0,0 +1,158 @@
+From ec6036a58f979c66bbd5cd9d0d1c783a98c2c644 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 5 Nov 2019 12:57:40 +0000
+Subject: [PATCH 630/660] net: sfp: track upstream's attachment state in state
+ machine
+
+Track the upstream's attachment state in the state machine rather than
+maintaining a boolean, which ensures that we have a strict order of
+ATTACH followed by an UP event - we can never believe that a newly
+attached upstream will be anything but down.
+
+Rearrange the order of state machines so we run the module state
+machine after the upstream device's state machine, so the module state
+machine can check the current state of the device and take action to
+e.g. reset back to empty state when the upstream is detached.
+
+This is to allow the module detection to run independently of the
+network device becoming available.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 42 +++++++++++++++++++++++++++++-------------
+ 1 file changed, 29 insertions(+), 13 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 8a6adf006f8f..060d1e23de28 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -34,6 +34,8 @@ enum {
+ 
+ 	SFP_E_INSERT = 0,
+ 	SFP_E_REMOVE,
++	SFP_E_DEV_ATTACH,
++	SFP_E_DEV_DETACH,
+ 	SFP_E_DEV_DOWN,
+ 	SFP_E_DEV_UP,
+ 	SFP_E_TX_FAULT,
+@@ -48,7 +50,8 @@ enum {
+ 	SFP_MOD_PRESENT,
+ 	SFP_MOD_ERROR,
+ 
+-	SFP_DEV_DOWN = 0,
++	SFP_DEV_DETACHED = 0,
++	SFP_DEV_DOWN,
+ 	SFP_DEV_UP,
+ 
+ 	SFP_S_DOWN = 0,
+@@ -78,6 +81,7 @@ static const char *mod_state_to_str(unsigned short mod_state)
+ }
+ 
+ static const char * const dev_state_strings[] = {
++	[SFP_DEV_DETACHED] = "detached",
+ 	[SFP_DEV_DOWN] = "down",
+ 	[SFP_DEV_UP] = "up",
+ };
+@@ -92,6 +96,8 @@ static const char *dev_state_to_str(unsigned short dev_state)
+ static const char * const event_strings[] = {
+ 	[SFP_E_INSERT] = "insert",
+ 	[SFP_E_REMOVE] = "remove",
++	[SFP_E_DEV_ATTACH] = "dev_attach",
++	[SFP_E_DEV_DETACH] = "dev_detach",
+ 	[SFP_E_DEV_DOWN] = "dev_down",
+ 	[SFP_E_DEV_UP] = "dev_up",
+ 	[SFP_E_TX_FAULT] = "tx_fault",
+@@ -186,7 +192,6 @@ struct sfp {
+ 	struct gpio_desc *gpio[GPIO_MAX];
+ 	int gpio_irq[GPIO_MAX];
+ 
+-	bool attached;
+ 	struct mutex st_mutex;			/* Protects state */
+ 	unsigned int state;
+ 	struct delayed_work poll;
+@@ -1494,17 +1499,26 @@ static void sfp_sm_mod_remove(struct sfp *sfp)
+ 	dev_info(sfp->dev, "module removed\n");
+ }
+ 
+-/* This state machine tracks the netdev up/down state */
++/* This state machine tracks the upstream's state */
+ static void sfp_sm_device(struct sfp *sfp, unsigned int event)
+ {
+ 	switch (sfp->sm_dev_state) {
+ 	default:
+-		if (event == SFP_E_DEV_UP)
++		if (event == SFP_E_DEV_ATTACH)
++			sfp->sm_dev_state = SFP_DEV_DOWN;
++		break;
++
++	case SFP_DEV_DOWN:
++		if (event == SFP_E_DEV_DETACH)
++			sfp->sm_dev_state = SFP_DEV_DETACHED;
++		else if (event == SFP_E_DEV_UP)
+ 			sfp->sm_dev_state = SFP_DEV_UP;
+ 		break;
+ 
+ 	case SFP_DEV_UP:
+-		if (event == SFP_E_DEV_DOWN)
++		if (event == SFP_E_DEV_DETACH)
++			sfp->sm_dev_state = SFP_DEV_DETACHED;
++		else if (event == SFP_E_DEV_DOWN)
+ 			sfp->sm_dev_state = SFP_DEV_DOWN;
+ 		break;
+ 	}
+@@ -1515,17 +1529,20 @@ static void sfp_sm_device(struct sfp *sfp, unsigned int event)
+  */
+ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ {
+-	/* Handle remove event globally, it resets this state machine */
+-	if (event == SFP_E_REMOVE) {
++	/* Handle remove event globally, it resets this state machine.
++	 * Also deal with upstream detachment.
++	 */
++	if (event == SFP_E_REMOVE || sfp->sm_dev_state < SFP_DEV_DOWN) {
+ 		if (sfp->sm_mod_state > SFP_MOD_PROBE)
+ 			sfp_sm_mod_remove(sfp);
+-		sfp_sm_mod_next(sfp, SFP_MOD_EMPTY, 0);
++		if (sfp->sm_mod_state != SFP_MOD_EMPTY)
++			sfp_sm_mod_next(sfp, SFP_MOD_EMPTY, 0);
+ 		return;
+ 	}
+ 
+ 	switch (sfp->sm_mod_state) {
+ 	default:
+-		if (event == SFP_E_INSERT && sfp->attached)
++		if (event == SFP_E_INSERT)
+ 			sfp_sm_mod_next(sfp, SFP_MOD_PROBE, T_SERIAL);
+ 		break;
+ 
+@@ -1691,8 +1708,8 @@ static void sfp_sm_event(struct sfp *sfp, unsigned int event)
+ 		sm_state_to_str(sfp->sm_state),
+ 		event_to_str(event));
+ 
+-	sfp_sm_module(sfp, event);
+ 	sfp_sm_device(sfp, event);
++	sfp_sm_module(sfp, event);
+ 	sfp_sm_main(sfp, event);
+ 
+ 	dev_dbg(sfp->dev, "SM: exit %s:%s:%s\n",
+@@ -1705,15 +1722,14 @@ static void sfp_sm_event(struct sfp *sfp, unsigned int event)
+ 
+ static void sfp_attach(struct sfp *sfp)
+ {
+-	sfp->attached = true;
++	sfp_sm_event(sfp, SFP_E_DEV_ATTACH);
+ 	if (sfp->state & SFP_F_PRESENT)
+ 		sfp_sm_event(sfp, SFP_E_INSERT);
+ }
+ 
+ static void sfp_detach(struct sfp *sfp)
+ {
+-	sfp->attached = false;
+-	sfp_sm_event(sfp, SFP_E_REMOVE);
++	sfp_sm_event(sfp, SFP_E_DEV_DETACH);
+ }
+ 
+ static void sfp_start(struct sfp *sfp)
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/733-net-sfp-split-power-mode-switching-from-probe.patch b/target/linux/generic/backport-4.19/733-net-sfp-split-power-mode-switching-from-probe.patch
new file mode 100644
index 000000000000..d7d95cf35992
--- /dev/null
+++ b/target/linux/generic/backport-4.19/733-net-sfp-split-power-mode-switching-from-probe.patch
@@ -0,0 +1,190 @@
+From fdff863a4ce3677907f64396e34c45025abb6600 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 5 Nov 2019 12:59:36 +0000
+Subject: [PATCH 631/660] net: sfp: split power mode switching from probe
+
+Switch the power mode switching from the probe, so that we don't
+repeatedly re-probe the SFP device if there is a problem accessing
+the registers at I2C address 0x51.
+
+In splitting this out, we can also fix a bug where we leave the module
+in high-power mode when the upstream device is detached but the module
+is still inserted.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 101 ++++++++++++++++++++++++++----------------
+ 1 file changed, 64 insertions(+), 37 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 060d1e23de28..fb0944027eea 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -47,6 +47,7 @@ enum {
+ 	SFP_MOD_EMPTY = 0,
+ 	SFP_MOD_PROBE,
+ 	SFP_MOD_HPOWER,
++	SFP_MOD_WAITPWR,
+ 	SFP_MOD_PRESENT,
+ 	SFP_MOD_ERROR,
+ 
+@@ -69,6 +70,7 @@ static const char  * const mod_state_strings[] = {
+ 	[SFP_MOD_EMPTY] = "empty",
+ 	[SFP_MOD_PROBE] = "probe",
+ 	[SFP_MOD_HPOWER] = "hpower",
++	[SFP_MOD_WAITPWR] = "waitpwr",
+ 	[SFP_MOD_PRESENT] = "present",
+ 	[SFP_MOD_ERROR] = "error",
+ };
+@@ -1358,37 +1360,34 @@ static int sfp_module_parse_power(struct sfp *sfp)
+ 	return 0;
+ }
+ 
+-static int sfp_sm_mod_hpower(struct sfp *sfp)
++static int sfp_sm_mod_hpower(struct sfp *sfp, bool enable)
+ {
+ 	u8 val;
+ 	int err;
+ 
+-	if (sfp->module_power_mW <= 1000)
+-		return 0;
+-
+ 	err = sfp_read(sfp, true, SFP_EXT_STATUS, &val, sizeof(val));
+ 	if (err != sizeof(val)) {
+ 		dev_err(sfp->dev, "Failed to read EEPROM: %d\n", err);
+-		err = -EAGAIN;
+-		goto err;
++		return -EAGAIN;
+ 	}
+ 
+-	val |= BIT(0);
++	if (enable)
++		val |= BIT(0);
++	else
++		val &= ~BIT(0);
+ 
+ 	err = sfp_write(sfp, true, SFP_EXT_STATUS, &val, sizeof(val));
+ 	if (err != sizeof(val)) {
+ 		dev_err(sfp->dev, "Failed to write EEPROM: %d\n", err);
+-		err = -EAGAIN;
+-		goto err;
++		return -EAGAIN;
+ 	}
+ 
+-	dev_info(sfp->dev, "Module switched to %u.%uW power level\n",
+-		 sfp->module_power_mW / 1000,
+-		 (sfp->module_power_mW / 100) % 10);
+-	return T_HPOWER_LEVEL;
++	if (enable)
++		dev_info(sfp->dev, "Module switched to %u.%uW power level\n",
++			 sfp->module_power_mW / 1000,
++			 (sfp->module_power_mW / 100) % 10);
+ 
+-err:
+-	return err;
++	return 0;
+ }
+ 
+ static int sfp_sm_mod_probe(struct sfp *sfp)
+@@ -1484,7 +1483,7 @@ static int sfp_sm_mod_probe(struct sfp *sfp)
+ 	if (ret < 0)
+ 		return ret;
+ 
+-	return sfp_sm_mod_hpower(sfp);
++	return 0;
+ }
+ 
+ static void sfp_sm_mod_remove(struct sfp *sfp)
+@@ -1529,13 +1528,22 @@ static void sfp_sm_device(struct sfp *sfp, unsigned int event)
+  */
+ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ {
+-	/* Handle remove event globally, it resets this state machine.
+-	 * Also deal with upstream detachment.
+-	 */
+-	if (event == SFP_E_REMOVE || sfp->sm_dev_state < SFP_DEV_DOWN) {
++	int err;
++
++	/* Handle remove event globally, it resets this state machine */
++	if (event == SFP_E_REMOVE) {
+ 		if (sfp->sm_mod_state > SFP_MOD_PROBE)
+ 			sfp_sm_mod_remove(sfp);
+-		if (sfp->sm_mod_state != SFP_MOD_EMPTY)
++		sfp_sm_mod_next(sfp, SFP_MOD_EMPTY, 0);
++		return;
++	}
++
++	/* Handle device detach globally */
++	if (sfp->sm_dev_state < SFP_DEV_DOWN) {
++		if (sfp->module_power_mW > 1000 &&
++		    sfp->sm_mod_state > SFP_MOD_HPOWER)
++			sfp_sm_mod_hpower(sfp, false);
++		if (sfp->sm_mod_state > SFP_MOD_EMPTY)
+ 			sfp_sm_mod_next(sfp, SFP_MOD_EMPTY, 0);
+ 		return;
+ 	}
+@@ -1547,26 +1555,45 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 		break;
+ 
+ 	case SFP_MOD_PROBE:
+-		if (event == SFP_E_TIMEOUT) {
+-			int val = sfp_sm_mod_probe(sfp);
+-
+-			if (val == 0)
+-				sfp_sm_mod_next(sfp, SFP_MOD_PRESENT, 0);
+-			else if (val > 0)
+-				sfp_sm_mod_next(sfp, SFP_MOD_HPOWER, val);
+-			else if (val != -EAGAIN)
+-				sfp_sm_mod_next(sfp, SFP_MOD_ERROR, 0);
+-			else
+-				sfp_sm_set_timer(sfp, T_PROBE_RETRY);
++		if (event != SFP_E_TIMEOUT)
++			break;
++
++		err = sfp_sm_mod_probe(sfp);
++		if (err == -EAGAIN) {
++			sfp_sm_set_timer(sfp, T_PROBE_RETRY);
++			break;
+ 		}
+-		break;
++		if (err < 0) {
++			sfp_sm_mod_next(sfp, SFP_MOD_ERROR, 0);
++			break;
++		}
++
++		/* If this is a power level 1 module, we are done */
++		if (sfp->module_power_mW <= 1000)
++			goto insert;
+ 
++		sfp_sm_mod_next(sfp, SFP_MOD_HPOWER, 0);
++		/* fall through */
+ 	case SFP_MOD_HPOWER:
+-		if (event == SFP_E_TIMEOUT) {
+-			sfp_sm_mod_next(sfp, SFP_MOD_PRESENT, 0);
++		/* Enable high power mode */
++		err = sfp_sm_mod_hpower(sfp, true);
++		if (err == 0)
++			sfp_sm_mod_next(sfp, SFP_MOD_WAITPWR, T_HPOWER_LEVEL);
++		else if (err != -EAGAIN)
++			sfp_sm_mod_next(sfp, SFP_MOD_ERROR, 0);
++		else
++			sfp_sm_set_timer(sfp, T_PROBE_RETRY);
++		break;
++
++	case SFP_MOD_WAITPWR:
++		/* Wait for T_HPOWER_LEVEL to time out */
++		if (event != SFP_E_TIMEOUT)
+ 			break;
+-		}
+-		/* fallthrough */
++
++	insert:
++		sfp_sm_mod_next(sfp, SFP_MOD_PRESENT, 0);
++		break;
++
+ 	case SFP_MOD_PRESENT:
+ 	case SFP_MOD_ERROR:
+ 		break;
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/734-net-sfp-move-module-insert-reporting-out-of-probe.patch b/target/linux/generic/backport-4.19/734-net-sfp-move-module-insert-reporting-out-of-probe.patch
new file mode 100644
index 000000000000..391aad610626
--- /dev/null
+++ b/target/linux/generic/backport-4.19/734-net-sfp-move-module-insert-reporting-out-of-probe.patch
@@ -0,0 +1,164 @@
+From 57cbf7453551db1df619b79410d79fc418d862d5 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 5 Nov 2019 13:00:45 +0000
+Subject: [PATCH 632/660] net: sfp: move module insert reporting out of probe
+
+Move the module insertion reporting out of the probe handling, but
+after we have detected that the upstream has attached (since that is
+whom we are reporting insertion to.)
+
+Only report module removal if we had previously reported a module
+insertion.
+
+This gives cleaner semantics, and means we can probe the module before
+we have an upstream attached.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 58 +++++++++++++++++++++++++++++--------------
+ 1 file changed, 40 insertions(+), 18 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index fb0944027eea..e39b2d65dabe 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -45,11 +45,12 @@ enum {
+ 	SFP_E_TIMEOUT,
+ 
+ 	SFP_MOD_EMPTY = 0,
++	SFP_MOD_ERROR,
+ 	SFP_MOD_PROBE,
++	SFP_MOD_WAITDEV,
+ 	SFP_MOD_HPOWER,
+ 	SFP_MOD_WAITPWR,
+ 	SFP_MOD_PRESENT,
+-	SFP_MOD_ERROR,
+ 
+ 	SFP_DEV_DETACHED = 0,
+ 	SFP_DEV_DOWN,
+@@ -68,11 +69,12 @@ enum {
+ 
+ static const char  * const mod_state_strings[] = {
+ 	[SFP_MOD_EMPTY] = "empty",
++	[SFP_MOD_ERROR] = "error",
+ 	[SFP_MOD_PROBE] = "probe",
++	[SFP_MOD_WAITDEV] = "waitdev",
+ 	[SFP_MOD_HPOWER] = "hpower",
+ 	[SFP_MOD_WAITPWR] = "waitpwr",
+ 	[SFP_MOD_PRESENT] = "present",
+-	[SFP_MOD_ERROR] = "error",
+ };
+ 
+ static const char *mod_state_to_str(unsigned short mod_state)
+@@ -1479,16 +1481,13 @@ static int sfp_sm_mod_probe(struct sfp *sfp)
+ 	if (ret < 0)
+ 		return ret;
+ 
+-	ret = sfp_module_insert(sfp->sfp_bus, &sfp->id);
+-	if (ret < 0)
+-		return ret;
+-
+ 	return 0;
+ }
+ 
+ static void sfp_sm_mod_remove(struct sfp *sfp)
+ {
+-	sfp_module_remove(sfp->sfp_bus);
++	if (sfp->sm_mod_state > SFP_MOD_WAITDEV)
++		sfp_module_remove(sfp->sfp_bus);
+ 
+ 	sfp_hwmon_remove(sfp);
+ 
+@@ -1539,12 +1538,12 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 	}
+ 
+ 	/* Handle device detach globally */
+-	if (sfp->sm_dev_state < SFP_DEV_DOWN) {
++	if (sfp->sm_dev_state < SFP_DEV_DOWN &&
++	    sfp->sm_mod_state > SFP_MOD_WAITDEV) {
+ 		if (sfp->module_power_mW > 1000 &&
+ 		    sfp->sm_mod_state > SFP_MOD_HPOWER)
+ 			sfp_sm_mod_hpower(sfp, false);
+-		if (sfp->sm_mod_state > SFP_MOD_EMPTY)
+-			sfp_sm_mod_next(sfp, SFP_MOD_EMPTY, 0);
++		sfp_sm_mod_next(sfp, SFP_MOD_WAITDEV, 0);
+ 		return;
+ 	}
+ 
+@@ -1555,6 +1554,7 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 		break;
+ 
+ 	case SFP_MOD_PROBE:
++		/* Wait for T_PROBE_INIT to time out */
+ 		if (event != SFP_E_TIMEOUT)
+ 			break;
+ 
+@@ -1568,6 +1568,20 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 			break;
+ 		}
+ 
++		sfp_sm_mod_next(sfp, SFP_MOD_WAITDEV, 0);
++		/* fall through */
++	case SFP_MOD_WAITDEV:
++		/* Ensure that the device is attached before proceeding */
++		if (sfp->sm_dev_state < SFP_DEV_DOWN)
++			break;
++
++		/* Report the module insertion to the upstream device */
++		err = sfp_module_insert(sfp->sfp_bus, &sfp->id);
++		if (err < 0) {
++			sfp_sm_mod_next(sfp, SFP_MOD_ERROR, 0);
++			break;
++		}
++
+ 		/* If this is a power level 1 module, we are done */
+ 		if (sfp->module_power_mW <= 1000)
+ 			goto insert;
+@@ -1577,12 +1591,17 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 	case SFP_MOD_HPOWER:
+ 		/* Enable high power mode */
+ 		err = sfp_sm_mod_hpower(sfp, true);
+-		if (err == 0)
+-			sfp_sm_mod_next(sfp, SFP_MOD_WAITPWR, T_HPOWER_LEVEL);
+-		else if (err != -EAGAIN)
+-			sfp_sm_mod_next(sfp, SFP_MOD_ERROR, 0);
+-		else
+-			sfp_sm_set_timer(sfp, T_PROBE_RETRY);
++		if (err < 0) {
++			if (err != -EAGAIN) {
++				sfp_module_remove(sfp->sfp_bus);
++				sfp_sm_mod_next(sfp, SFP_MOD_ERROR, 0);
++			} else {
++				sfp_sm_set_timer(sfp, T_PROBE_RETRY);
++			}
++			break;
++		}
++
++		sfp_sm_mod_next(sfp, SFP_MOD_WAITPWR, T_HPOWER_LEVEL);
+ 		break;
+ 
+ 	case SFP_MOD_WAITPWR:
+@@ -1750,8 +1769,6 @@ static void sfp_sm_event(struct sfp *sfp, unsigned int event)
+ static void sfp_attach(struct sfp *sfp)
+ {
+ 	sfp_sm_event(sfp, SFP_E_DEV_ATTACH);
+-	if (sfp->state & SFP_F_PRESENT)
+-		sfp_sm_event(sfp, SFP_E_INSERT);
+ }
+ 
+ static void sfp_detach(struct sfp *sfp)
+@@ -2001,6 +2018,11 @@ static int sfp_probe(struct platform_device *pdev)
+ 		sfp->state |= SFP_F_RATE_SELECT;
+ 	sfp_set_state(sfp, sfp->state);
+ 	sfp_module_tx_disable(sfp);
++	if (sfp->state & SFP_F_PRESENT) {
++		rtnl_lock();
++		sfp_sm_event(sfp, SFP_E_INSERT);
++		rtnl_unlock();
++	}
+ 
+ 	for (i = 0; i < GPIO_MAX; i++) {
+ 		if (gpio_flags[i] != GPIOD_IN || !sfp->gpio[i])
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/735-net-sfp-allow-sfp-to-probe-slow-to-initialise-GPON-m.patch b/target/linux/generic/backport-4.19/735-net-sfp-allow-sfp-to-probe-slow-to-initialise-GPON-m.patch
new file mode 100644
index 000000000000..400c9ca753af
--- /dev/null
+++ b/target/linux/generic/backport-4.19/735-net-sfp-allow-sfp-to-probe-slow-to-initialise-GPON-m.patch
@@ -0,0 +1,115 @@
+From fb56cd08880aff8fb030e684fa4311bef712a499 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 5 Nov 2019 13:02:30 +0000
+Subject: [PATCH 633/660] net: sfp: allow sfp to probe slow to initialise GPON
+ modules
+
+Some GPON modules (e.g. Huawei MA5671A) take a significant amount of
+time to start responding on the I2C bus, contary to the SFF
+specifications.
+
+Work around this by implementing a two-level timeout strategy, where
+we initially quickly retry for the module, and then use a slower retry
+after we exceed a maximum number of quick attempts.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 38 ++++++++++++++++++++++++++++----------
+ 1 file changed, 28 insertions(+), 10 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index e39b2d65dabe..9f12fbffb306 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -165,9 +165,12 @@ static const enum gpiod_flags gpio_flags[] = {
+  * The SFF-8472 specifies t_serial ("Time from power on until module is
+  * ready for data transmission over the two wire serial bus.") as 300ms.
+  */
+-#define T_SERIAL	msecs_to_jiffies(300)
+-#define T_HPOWER_LEVEL	msecs_to_jiffies(300)
+-#define T_PROBE_RETRY	msecs_to_jiffies(100)
++#define T_SERIAL		msecs_to_jiffies(300)
++#define T_HPOWER_LEVEL		msecs_to_jiffies(300)
++#define T_PROBE_RETRY_INIT	msecs_to_jiffies(100)
++#define R_PROBE_RETRY_INIT	10
++#define T_PROBE_RETRY_SLOW	msecs_to_jiffies(5000)
++#define R_PROBE_RETRY_SLOW	12
+ 
+ /* SFP modules appear to always have their PHY configured for bus address
+  * 0x56 (which with mdio-i2c, translates to a PHY address of 22).
+@@ -202,6 +205,8 @@ struct sfp {
+ 	struct delayed_work timeout;
+ 	struct mutex sm_mutex;			/* Protects state machine */
+ 	unsigned char sm_mod_state;
++	unsigned char sm_mod_tries_init;
++	unsigned char sm_mod_tries;
+ 	unsigned char sm_dev_state;
+ 	unsigned short sm_state;
+ 	unsigned int sm_retries;
+@@ -1392,7 +1397,7 @@ static int sfp_sm_mod_hpower(struct sfp *sfp, bool enable)
+ 	return 0;
+ }
+ 
+-static int sfp_sm_mod_probe(struct sfp *sfp)
++static int sfp_sm_mod_probe(struct sfp *sfp, bool report)
+ {
+ 	/* SFP module inserted - read I2C data */
+ 	struct sfp_eeprom_id id;
+@@ -1402,7 +1407,8 @@ static int sfp_sm_mod_probe(struct sfp *sfp)
+ 
+ 	ret = sfp_read(sfp, false, 0, &id, sizeof(id));
+ 	if (ret < 0) {
+-		dev_err(sfp->dev, "failed to read EEPROM: %d\n", ret);
++		if (report)
++			dev_err(sfp->dev, "failed to read EEPROM: %d\n", ret);
+ 		return -EAGAIN;
+ 	}
+ 
+@@ -1549,8 +1555,11 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 
+ 	switch (sfp->sm_mod_state) {
+ 	default:
+-		if (event == SFP_E_INSERT)
++		if (event == SFP_E_INSERT) {
+ 			sfp_sm_mod_next(sfp, SFP_MOD_PROBE, T_SERIAL);
++			sfp->sm_mod_tries_init = R_PROBE_RETRY_INIT;
++			sfp->sm_mod_tries = R_PROBE_RETRY_SLOW;
++		}
+ 		break;
+ 
+ 	case SFP_MOD_PROBE:
+@@ -1558,10 +1567,19 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 		if (event != SFP_E_TIMEOUT)
+ 			break;
+ 
+-		err = sfp_sm_mod_probe(sfp);
++		err = sfp_sm_mod_probe(sfp, sfp->sm_mod_tries == 1);
+ 		if (err == -EAGAIN) {
+-			sfp_sm_set_timer(sfp, T_PROBE_RETRY);
+-			break;
++			if (sfp->sm_mod_tries_init &&
++			   --sfp->sm_mod_tries_init) {
++				sfp_sm_set_timer(sfp, T_PROBE_RETRY_INIT);
++				break;
++			} else if (sfp->sm_mod_tries && --sfp->sm_mod_tries) {
++				if (sfp->sm_mod_tries == R_PROBE_RETRY_SLOW - 1)
++					dev_warn(sfp->dev,
++						 "please wait, module slow to respond\n");
++				sfp_sm_set_timer(sfp, T_PROBE_RETRY_SLOW);
++				break;
++			}
+ 		}
+ 		if (err < 0) {
+ 			sfp_sm_mod_next(sfp, SFP_MOD_ERROR, 0);
+@@ -1596,7 +1614,7 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 				sfp_module_remove(sfp->sfp_bus);
+ 				sfp_sm_mod_next(sfp, SFP_MOD_ERROR, 0);
+ 			} else {
+-				sfp_sm_set_timer(sfp, T_PROBE_RETRY);
++				sfp_sm_set_timer(sfp, T_PROBE_RETRY_INIT);
+ 			}
+ 			break;
+ 		}
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/736-net-sfp-allow-modules-with-slow-diagnostics-to-probe.patch b/target/linux/generic/backport-4.19/736-net-sfp-allow-modules-with-slow-diagnostics-to-probe.patch
new file mode 100644
index 000000000000..44c9b599a295
--- /dev/null
+++ b/target/linux/generic/backport-4.19/736-net-sfp-allow-modules-with-slow-diagnostics-to-probe.patch
@@ -0,0 +1,203 @@
+From 559391fc20fae506adcb311b904cc544c76436c0 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Thu, 7 Nov 2019 18:52:07 +0000
+Subject: [PATCH 634/660] net: sfp: allow modules with slow diagnostics to
+ probe
+
+When a module is inserted, we attempt to read read the ID from address
+0x50.  Once we are able to read the ID, we immediately attempt to
+initialise the hwmon support by reading from address 0x51.  If this
+fails, then we fall into error state, and assume that the module is
+not usable.
+
+Modules such as the ALCATELLUCENT 3FE46541AA use a real EEPROM for
+I2C address 0x50, which responds immediately.  However, address 0x51
+is an emulated, which only becomes available once the on-board firmware
+has booted.  This prompts us to fall into the error state.
+
+Since the module may be usable without diagnostics, arrange for the
+hwmon probe independent of the rest of the SFP itself, retrying every
+5s for up to about 60s for the monitoring to become available, and
+print an error message if it doesn't become available.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 96 +++++++++++++++++++++++++++++++++----------
+ 1 file changed, 74 insertions(+), 22 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 9f12fbffb306..85cb3069a552 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -216,6 +216,8 @@ struct sfp {
+ 
+ #if IS_ENABLED(CONFIG_HWMON)
+ 	struct sfp_diag diag;
++	struct delayed_work hwmon_probe;
++	unsigned int hwmon_tries;
+ 	struct device *hwmon_dev;
+ 	char *hwmon_name;
+ #endif
+@@ -1094,29 +1096,27 @@ static const struct hwmon_chip_info sfp_hwmon_chip_info = {
+ 	.info = sfp_hwmon_info,
+ };
+ 
+-static int sfp_hwmon_insert(struct sfp *sfp)
++static void sfp_hwmon_probe(struct work_struct *work)
+ {
++	struct sfp *sfp = container_of(work, struct sfp, hwmon_probe.work);
+ 	int err, i;
+ 
+-	if (sfp->id.ext.sff8472_compliance == SFP_SFF8472_COMPLIANCE_NONE)
+-		return 0;
+-
+-	if (!(sfp->id.ext.diagmon & SFP_DIAGMON_DDM))
+-		return 0;
+-
+-	if (sfp->id.ext.diagmon & SFP_DIAGMON_ADDRMODE)
+-		/* This driver in general does not support address
+-		 * change.
+-		 */
+-		return 0;
+-
+ 	err = sfp_read(sfp, true, 0, &sfp->diag, sizeof(sfp->diag));
+-	if (err < 0)
+-		return err;
++	if (err < 0) {
++		if (sfp->hwmon_tries--) {
++			mod_delayed_work(system_wq, &sfp->hwmon_probe,
++					 T_PROBE_RETRY_SLOW);
++		} else {
++			dev_warn(sfp->dev, "hwmon probe failed: %d\n", err);
++		}
++		return;
++	}
+ 
+ 	sfp->hwmon_name = kstrdup(dev_name(sfp->dev), GFP_KERNEL);
+-	if (!sfp->hwmon_name)
+-		return -ENODEV;
++	if (!sfp->hwmon_name) {
++		dev_err(sfp->dev, "out of memory for hwmon name\n");
++		return;
++	}
+ 
+ 	for (i = 0; sfp->hwmon_name[i]; i++)
+ 		if (hwmon_is_bad_char(sfp->hwmon_name[i]))
+@@ -1126,18 +1126,52 @@ static int sfp_hwmon_insert(struct sfp *sfp)
+ 							 sfp->hwmon_name, sfp,
+ 							 &sfp_hwmon_chip_info,
+ 							 NULL);
++	if (IS_ERR(sfp->hwmon_dev))
++		dev_err(sfp->dev, "failed to register hwmon device: %ld\n",
++			PTR_ERR(sfp->hwmon_dev));
++}
++
++static int sfp_hwmon_insert(struct sfp *sfp)
++{
++	if (sfp->id.ext.sff8472_compliance == SFP_SFF8472_COMPLIANCE_NONE)
++		return 0;
++
++	if (!(sfp->id.ext.diagmon & SFP_DIAGMON_DDM))
++		return 0;
++
++	if (sfp->id.ext.diagmon & SFP_DIAGMON_ADDRMODE)
++		/* This driver in general does not support address
++		 * change.
++		 */
++		return 0;
++
++	mod_delayed_work(system_wq, &sfp->hwmon_probe, 1);
++	sfp->hwmon_tries = R_PROBE_RETRY_SLOW;
+ 
+-	return PTR_ERR_OR_ZERO(sfp->hwmon_dev);
++	return 0;
+ }
+ 
+ static void sfp_hwmon_remove(struct sfp *sfp)
+ {
++	cancel_delayed_work_sync(&sfp->hwmon_probe);
+ 	if (!IS_ERR_OR_NULL(sfp->hwmon_dev)) {
+ 		hwmon_device_unregister(sfp->hwmon_dev);
+ 		sfp->hwmon_dev = NULL;
+ 		kfree(sfp->hwmon_name);
+ 	}
+ }
++
++static int sfp_hwmon_init(struct sfp *sfp)
++{
++	INIT_DELAYED_WORK(&sfp->hwmon_probe, sfp_hwmon_probe);
++
++	return 0;
++}
++
++static void sfp_hwmon_exit(struct sfp *sfp)
++{
++	cancel_delayed_work_sync(&sfp->hwmon_probe);
++}
+ #else
+ static int sfp_hwmon_insert(struct sfp *sfp)
+ {
+@@ -1147,6 +1181,15 @@ static int sfp_hwmon_insert(struct sfp *sfp)
+ static void sfp_hwmon_remove(struct sfp *sfp)
+ {
+ }
++
++static int sfp_hwmon_init(struct sfp *sfp)
++{
++	return 0;
++}
++
++static void sfp_hwmon_exit(struct sfp *sfp)
++{
++}
+ #endif
+ 
+ /* Helpers */
+@@ -1483,10 +1526,6 @@ static int sfp_sm_mod_probe(struct sfp *sfp, bool report)
+ 	if (ret < 0)
+ 		return ret;
+ 
+-	ret = sfp_hwmon_insert(sfp);
+-	if (ret < 0)
+-		return ret;
+-
+ 	return 0;
+ }
+ 
+@@ -1635,6 +1674,15 @@ static void sfp_sm_module(struct sfp *sfp, unsigned int event)
+ 	case SFP_MOD_ERROR:
+ 		break;
+ 	}
++
++#if IS_ENABLED(CONFIG_HWMON)
++	if (sfp->sm_mod_state >= SFP_MOD_WAITDEV &&
++	    IS_ERR_OR_NULL(sfp->hwmon_dev)) {
++		err = sfp_hwmon_insert(sfp);
++		if (err)
++			dev_warn(sfp->dev, "hwmon probe failed: %d\n", err);
++	}
++#endif
+ }
+ 
+ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+@@ -1936,6 +1984,8 @@ static struct sfp *sfp_alloc(struct device *dev)
+ 	INIT_DELAYED_WORK(&sfp->poll, sfp_poll);
+ 	INIT_DELAYED_WORK(&sfp->timeout, sfp_timeout);
+ 
++	sfp_hwmon_init(sfp);
++
+ 	return sfp;
+ }
+ 
+@@ -1943,6 +1993,8 @@ static void sfp_cleanup(void *data)
+ {
+ 	struct sfp *sfp = data;
+ 
++	sfp_hwmon_exit(sfp);
++
+ 	cancel_delayed_work_sync(&sfp->poll);
+ 	cancel_delayed_work_sync(&sfp->timeout);
+ 	if (sfp->i2c_mii) {
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/737-net-phy-add-core-phylib-sfp-support.patch b/target/linux/generic/backport-4.19/737-net-phy-add-core-phylib-sfp-support.patch
new file mode 100644
index 000000000000..a38c890eba88
--- /dev/null
+++ b/target/linux/generic/backport-4.19/737-net-phy-add-core-phylib-sfp-support.patch
@@ -0,0 +1,192 @@
+From eb156db588ac583cdae7b91eaac9c0ad3a358e63 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Sun, 15 Sep 2019 20:05:34 +0100
+Subject: [PATCH 635/660] net: phy: add core phylib sfp support
+
+Add core phylib help for supporting SFP sockets on PHYs.  This provides
+a mechanism to inform the SFP layer about PHY up/down events, and also
+unregister the SFP bus when the PHY is going away.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phy.c        |  7 ++++
+ drivers/net/phy/phy_device.c | 66 ++++++++++++++++++++++++++++++++++++
+ include/linux/phy.h          | 11 ++++++
+ 3 files changed, 84 insertions(+)
+
+diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
+index e17ce54344c1..b9d8bd794572 100644
+--- a/drivers/net/phy/phy.c
++++ b/drivers/net/phy/phy.c
+@@ -30,6 +30,7 @@
+ #include <linux/ethtool.h>
+ #include <linux/phy.h>
+ #include <linux/phy_led_triggers.h>
++#include <linux/sfp.h>
+ #include <linux/workqueue.h>
+ #include <linux/mdio.h>
+ #include <linux/io.h>
+@@ -871,6 +872,9 @@ void phy_stop(struct phy_device *phydev)
+ 	if (phy_interrupt_is_valid(phydev))
+ 		phy_disable_interrupts(phydev);
+ 
++	if (phydev->sfp_bus)
++		sfp_upstream_stop(phydev->sfp_bus);
++
+ 	phydev->state = PHY_HALTED;
+ 
+ out_unlock:
+@@ -899,6 +903,9 @@ void phy_start(struct phy_device *phydev)
+ 
+ 	mutex_lock(&phydev->lock);
+ 
++	if (phydev->sfp_bus)
++		sfp_upstream_start(phydev->sfp_bus);
++
+ 	switch (phydev->state) {
+ 	case PHY_STARTING:
+ 		phydev->state = PHY_PENDING;
+diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
+index 55ad814ed87e..5adf97f689de 100644
+--- a/drivers/net/phy/phy_device.c
++++ b/drivers/net/phy/phy_device.c
+@@ -31,6 +31,7 @@
+ #include <linux/ethtool.h>
+ #include <linux/phy.h>
+ #include <linux/phy_led_triggers.h>
++#include <linux/sfp.h>
+ #include <linux/mdio.h>
+ #include <linux/io.h>
+ #include <linux/uaccess.h>
+@@ -942,6 +943,65 @@ void phy_attached_print(struct phy_device *phydev, const char *fmt, ...)
+ }
+ EXPORT_SYMBOL(phy_attached_print);
+ 
++/**
++ * phy_sfp_attach - attach the SFP bus to the PHY upstream network device
++ * @upstream: pointer to the phy device
++ * @bus: sfp bus representing cage being attached
++ *
++ * This is used to fill in the sfp_upstream_ops .attach member.
++ */
++void phy_sfp_attach(void *upstream, struct sfp_bus *bus)
++{
++	struct phy_device *phydev = upstream;
++
++	if (phydev->attached_dev)
++		phydev->attached_dev->sfp_bus = bus;
++	phydev->sfp_bus_attached = true;
++}
++EXPORT_SYMBOL(phy_sfp_attach);
++
++/**
++ * phy_sfp_detach - detach the SFP bus from the PHY upstream network device
++ * @upstream: pointer to the phy device
++ * @bus: sfp bus representing cage being attached
++ *
++ * This is used to fill in the sfp_upstream_ops .detach member.
++ */
++void phy_sfp_detach(void *upstream, struct sfp_bus *bus)
++{
++	struct phy_device *phydev = upstream;
++
++	if (phydev->attached_dev)
++		phydev->attached_dev->sfp_bus = NULL;
++	phydev->sfp_bus_attached = false;
++}
++EXPORT_SYMBOL(phy_sfp_detach);
++
++/**
++ * phy_sfp_probe - probe for a SFP cage attached to this PHY device
++ * @phydev: Pointer to phy_device
++ * @ops: SFP's upstream operations
++ */
++int phy_sfp_probe(struct phy_device *phydev,
++		  const struct sfp_upstream_ops *ops)
++{
++	struct sfp_bus *bus;
++	int ret;
++
++	if (phydev->mdio.dev.fwnode) {
++		bus = sfp_bus_find_fwnode(phydev->mdio.dev.fwnode);
++		if (IS_ERR(bus))
++			return PTR_ERR(bus);
++
++		phydev->sfp_bus = bus;
++
++		ret = sfp_bus_add_upstream(bus, phydev, ops);
++		sfp_bus_put(bus);
++	}
++	return 0;
++}
++EXPORT_SYMBOL(phy_sfp_probe);
++
+ /**
+  * phy_attach_direct - attach a network device to a given PHY device pointer
+  * @dev: network device to attach
+@@ -1015,6 +1075,9 @@ int phy_attach_direct(struct net_device *dev, struct phy_device *phydev,
+ 	phydev->attached_dev = dev;
+ 	dev->phydev = phydev;
+ 
++	if (phydev->sfp_bus_attached)
++		dev->sfp_bus = phydev->sfp_bus;
++
+ 	/* Some Ethernet drivers try to connect to a PHY device before
+ 	 * calling register_netdevice() -> netdev_register_kobject() and
+ 	 * does the dev->dev.kobj initialization. Here we only check for
+@@ -1955,6 +2018,9 @@ static int phy_remove(struct device *dev)
+ 	phydev->state = PHY_DOWN;
+ 	mutex_unlock(&phydev->lock);
+ 
++	sfp_bus_del_upstream(phydev->sfp_bus);
++	phydev->sfp_bus = NULL;
++
+ 	if (phydev->drv && phydev->drv->remove) {
+ 		phydev->drv->remove(phydev);
+ 
+diff --git a/include/linux/phy.h b/include/linux/phy.h
+index 4d3ee3954ce3..6e888d326e92 100644
+--- a/include/linux/phy.h
++++ b/include/linux/phy.h
+@@ -184,6 +184,8 @@ static inline const char *phy_modes(phy_interface_t interface)
+ 
+ struct device;
+ struct phylink;
++struct sfp_bus;
++struct sfp_upstream_ops;
+ struct sk_buff;
+ 
+ /*
+@@ -382,6 +384,8 @@ struct phy_c45_device_ids {
+  * irq: IRQ number of the PHY's interrupt (-1 if none)
+  * phy_timer: The timer for handling the state machine
+  * phy_queue: A work_queue for the phy_mac_interrupt
++ * sfp_bus_attached: flag indicating whether the SFP bus has been attached
++ * sfp_bus: SFP bus attached to this PHY's fiber port
+  * attached_dev: The attached enet driver's device instance ptr
+  * adjust_link: Callback for the enet controller to respond to
+  * changes in the link state.
+@@ -471,6 +475,9 @@ struct phy_device {
+ 
+ 	struct mutex lock;
+ 
++	/* This may be modified under the rtnl lock */
++	bool sfp_bus_attached;
++	struct sfp_bus *sfp_bus;
+ 	struct phylink *phylink;
+ 	struct net_device *attached_dev;
+ 
+@@ -1043,6 +1050,10 @@ int phy_suspend(struct phy_device *phydev);
+ int phy_resume(struct phy_device *phydev);
+ int __phy_resume(struct phy_device *phydev);
+ int phy_loopback(struct phy_device *phydev, bool enable);
++void phy_sfp_attach(void *upstream, struct sfp_bus *bus);
++void phy_sfp_detach(void *upstream, struct sfp_bus *bus);
++int phy_sfp_probe(struct phy_device *phydev,
++	          const struct sfp_upstream_ops *ops);
+ struct phy_device *phy_attach(struct net_device *dev, const char *bus_id,
+ 			      phy_interface_t interface);
+ struct phy_device *phy_find_first(struct mii_bus *bus);
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/738-net-phy-marvell10g-add-SFP-support.patch b/target/linux/generic/backport-4.19/738-net-phy-marvell10g-add-SFP-support.patch
new file mode 100644
index 000000000000..b8f4dc14e1f6
--- /dev/null
+++ b/target/linux/generic/backport-4.19/738-net-phy-marvell10g-add-SFP-support.patch
@@ -0,0 +1,72 @@
+From 0836d9fb41ed90090ef4af0d7abe784ee7706f80 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 14 Apr 2017 14:21:25 +0100
+Subject: [PATCH 636/660] net: phy: marvell10g: add SFP+ support
+
+Add support for SFP+ cages to the Marvell 10G PHY driver. This is
+slightly complicated by the way phylib works in that we need to use
+a multi-step process to attach the SFP bus, and we also need to track
+the phylink state machine to know when the module's transmit disable
+signal should change state.
+
+With appropriate DT changes, this allows the SFP+ canges on the
+Macchiatobin platform to be functional.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/marvell10g.c | 25 ++++++++++++++++++++++++-
+ 1 file changed, 24 insertions(+), 1 deletion(-)
+
+diff --git a/drivers/net/phy/marvell10g.c b/drivers/net/phy/marvell10g.c
+index 456a1f882b09..f7bba88ed506 100644
+--- a/drivers/net/phy/marvell10g.c
++++ b/drivers/net/phy/marvell10g.c
+@@ -25,6 +25,7 @@
+ #include <linux/hwmon.h>
+ #include <linux/marvell_phy.h>
+ #include <linux/phy.h>
++#include <linux/sfp.h>
+ 
+ enum {
+ 	MV_PMA_BOOT		= 0xc050,
+@@ -219,6 +220,28 @@ static int mv3310_hwmon_probe(struct phy_device *phydev)
+ }
+ #endif
+ 
++static int mv3310_sfp_insert(void *upstream, const struct sfp_eeprom_id *id)
++{
++	struct phy_device *phydev = upstream;
++	__ETHTOOL_DECLARE_LINK_MODE_MASK(support) = { 0, };
++	phy_interface_t iface;
++
++	sfp_parse_support(phydev->sfp_bus, id, support);
++	iface = sfp_select_interface(phydev->sfp_bus, id, support);
++
++	if (iface != PHY_INTERFACE_MODE_10GKR) {
++		dev_err(&phydev->mdio.dev, "incompatible SFP module inserted\n");
++		return -EINVAL;
++	}
++	return 0;
++}
++
++static const struct sfp_upstream_ops mv3310_sfp_ops = {
++	.attach = phy_sfp_attach,
++	.detach = phy_sfp_detach,
++	.module_insert = mv3310_sfp_insert,
++};
++
+ static int mv3310_probe(struct phy_device *phydev)
+ {
+ 	struct mv3310_priv *priv;
+@@ -249,7 +272,7 @@ static int mv3310_probe(struct phy_device *phydev)
+ 	if (ret)
+ 		return ret;
+ 
+-	return 0;
++	return phy_sfp_probe(phydev, &mv3310_sfp_ops);
+ }
+ 
+ static int mv3310_suspend(struct phy_device *phydev)
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/739-net-phylink-update-to-use-phy_support_asym_pause.patch b/target/linux/generic/backport-4.19/739-net-phylink-update-to-use-phy_support_asym_pause.patch
new file mode 100644
index 000000000000..70badb63b2f7
--- /dev/null
+++ b/target/linux/generic/backport-4.19/739-net-phylink-update-to-use-phy_support_asym_pause.patch
@@ -0,0 +1,50 @@
+From 09d7d8395ec61fba4392b35baa6f71c4e36489df Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 8 Nov 2019 15:18:02 +0000
+Subject: [PATCH 637/660] net: phylink: update to use phy_support_asym_pause()
+
+Use phy_support_asym_pause() rather than open-coding it.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c | 17 +++++++----------
+ 1 file changed, 7 insertions(+), 10 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index 2b075b6ca52e..e623427234f5 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -678,12 +678,6 @@ static int phylink_bringup_phy(struct phylink *pl, struct phy_device *phy)
+ 	u32 advertising;
+ 	int ret;
+ 
+-	memset(&config, 0, sizeof(config));
+-	ethtool_convert_legacy_u32_to_link_mode(supported, phy->supported);
+-	ethtool_convert_legacy_u32_to_link_mode(config.advertising,
+-						phy->advertising);
+-	config.interface = pl->link_config.interface;
+-
+ 	/*
+ 	 * This is the new way of dealing with flow control for PHYs,
+ 	 * as described by Timur Tabi in commit 529ed1275263 ("net: phy:
+@@ -691,10 +685,13 @@ static int phylink_bringup_phy(struct phylink *pl, struct phy_device *phy)
+ 	 * using our validate call to the MAC, we rely upon the MAC
+ 	 * clearing the bits from both supported and advertising fields.
+ 	 */
+-	if (phylink_test(supported, Pause))
+-		phylink_set(config.advertising, Pause);
+-	if (phylink_test(supported, Asym_Pause))
+-		phylink_set(config.advertising, Asym_Pause);
++	phy_support_asym_pause(phy);
++
++	memset(&config, 0, sizeof(config));
++	ethtool_convert_legacy_u32_to_link_mode(supported, phy->supported);
++	ethtool_convert_legacy_u32_to_link_mode(config.advertising,
++						phy->advertising);
++	config.interface = pl->link_config.interface;
+ 
+ 	ret = phylink_validate(pl, supported, &config);
+ 	if (ret)
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/740-net-phy-avoid-matching-all-ones-clause-45-PHY-IDs.patch b/target/linux/generic/backport-4.19/740-net-phy-avoid-matching-all-ones-clause-45-PHY-IDs.patch
new file mode 100644
index 000000000000..7b0e00e8d258
--- /dev/null
+++ b/target/linux/generic/backport-4.19/740-net-phy-avoid-matching-all-ones-clause-45-PHY-IDs.patch
@@ -0,0 +1,68 @@
+From 1be8018db381200c24854e0c299206c557f76fe0 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Mon, 11 Nov 2019 11:58:09 +0000
+Subject: [PATCH 638/660] net: phy: avoid matching all-ones clause 45 PHY IDs
+
+We currently match clause 45 PHYs using any ID read from a MMD marked
+as present in the "Devices in package" registers 5 and 6.  However,
+this is incorrect.  45.2 says:
+
+  "The definition of the term package is vendor specific and could be
+   a chip, module, or other similar entity."
+
+so a package could be more or less than the whole PHY - a PHY could be
+made up of several modules instantiated onto a single chip such as the
+Marvell 88x3310, or some of the MMDs could be disabled according to
+chip configuration, such as the Broadcom 84881.
+
+In the case of Broadcom 84881, the "Devices in package" registers
+contain 0xc000009b, meaning that there is a PHYXS present in the
+package, but all registers in MMD 4 return 0xffff.  This leads to our
+matching code incorrectly binding this PHY to one of our generic PHY
+drivers.
+
+This patch changes the way we determine whether to attempt to match a
+MMD identifier, or use it to request a module - if the identifier is
+all-ones, then we skip over it. When reading the identifiers, we
+initialise phydev->c45_ids.device_ids to all-ones, only reading the
+device ID if the "Devices in package" registers indicates we should.
+
+This avoids the generic drivers incorrectly matching on a PHY ID of
+0xffffffff.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phy_device.c | 7 +++++--
+ 1 file changed, 5 insertions(+), 2 deletions(-)
+
+diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
+index 5adf97f689de..bb03db617431 100644
+--- a/drivers/net/phy/phy_device.c
++++ b/drivers/net/phy/phy_device.c
+@@ -334,7 +334,7 @@ static int phy_bus_match(struct device *dev, struct device_driver *drv)
+ 
+ 	if (phydev->is_c45) {
+ 		for (i = 1; i < num_ids; i++) {
+-			if (!(phydev->c45_ids.devices_in_package & (1 << i)))
++			if (phydev->c45_ids.device_ids[i] == 0xffffffff)
+ 				continue;
+ 
+ 			if ((phydrv->phy_id & phydrv->phy_id_mask) ==
+@@ -622,10 +622,13 @@ static int get_phy_id(struct mii_bus *bus, int addr, u32 *phy_id,
+  */
+ struct phy_device *get_phy_device(struct mii_bus *bus, int addr, bool is_c45)
+ {
+-	struct phy_c45_device_ids c45_ids = {0};
++	struct phy_c45_device_ids c45_ids;
+ 	u32 phy_id = 0;
+ 	int r;
+ 
++	c45_ids.devices_in_package = 0;
++	memset(c45_ids.device_ids, 0xff, sizeof(c45_ids.device_ids));
++
+ 	r = get_phy_id(bus, addr, &phy_id, is_c45, &c45_ids);
+ 	if (r)
+ 		return ERR_PTR(r);
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/741-net-phylink-fix-link-mode-modification-in-PHY-mode.patch b/target/linux/generic/backport-4.19/741-net-phylink-fix-link-mode-modification-in-PHY-mode.patch
new file mode 100644
index 000000000000..d93a7acfa09d
--- /dev/null
+++ b/target/linux/generic/backport-4.19/741-net-phylink-fix-link-mode-modification-in-PHY-mode.patch
@@ -0,0 +1,71 @@
+From 4c9633f75dc35abe1b9261e0415d77802f35741d Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 5 Nov 2019 11:58:00 +0000
+Subject: [PATCH 639/660] net: phylink: fix link mode modification in PHY mode
+
+Modifying the link settings via phylink_ethtool_ksettings_set() and
+phylink_ethtool_set_pauseparam() didn't always work as intended for
+PHY based setups, as calling phylink_mac_config() would result in the
+unresolved configuration being committed to the MAC, rather than the
+configuration with the speed and duplex setting.
+
+This would work fine if the update caused the link to renegotiate,
+but if no settings have changed, phylib won't trigger a renegotiation
+cycle, and the MAC will be left incorrectly configured.
+
+Avoid calling phylink_mac_config() unless we are using an inband mode
+in phylink_ethtool_ksettings_set(), and use phy_set_asym_pause() as
+introduced in 4.20 to set the PHY settings in
+phylink_ethtool_set_pauseparam().
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/phylink.c | 24 ++++++++++++++++--------
+ 1 file changed, 16 insertions(+), 8 deletions(-)
+
+diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
+index e623427234f5..78ab4412a328 100644
+--- a/drivers/net/phy/phylink.c
++++ b/drivers/net/phy/phylink.c
+@@ -1210,7 +1210,13 @@ int phylink_ethtool_ksettings_set(struct phylink *pl,
+ 	pl->link_config.duplex = our_kset.base.duplex;
+ 	pl->link_config.an_enabled = our_kset.base.autoneg != AUTONEG_DISABLE;
+ 
+-	if (!test_bit(PHYLINK_DISABLE_STOPPED, &pl->phylink_disable_state)) {
++	/* If we have a PHY, phylib will call our link state function if the
++	 * mode has changed, which will trigger a resolve and update the MAC
++	 * configuration. For a fixed link, this isn't able to change any
++	 * parameters, which just leaves inband mode.
++	 */
++	if (pl->link_an_mode == MLO_AN_INBAND &&
++	    !test_bit(PHYLINK_DISABLE_STOPPED, &pl->phylink_disable_state)) {
+ 		phylink_mac_config(pl, &pl->link_config);
+ 		phylink_mac_an_restart(pl);
+ 	}
+@@ -1290,14 +1296,16 @@ int phylink_ethtool_set_pauseparam(struct phylink *pl,
+ 	if (pause->tx_pause)
+ 		config->pause |= MLO_PAUSE_TX;
+ 
+-	if (!test_bit(PHYLINK_DISABLE_STOPPED, &pl->phylink_disable_state)) {
++	/* If we have a PHY, phylib will call our link state function if the
++	 * mode has changed, which will trigger a resolve and update the MAC
++	 * configuration.
++	 */
++	if (pl->phydev) {
++		phy_set_asym_pause(pl->phydev, pause->rx_pause,
++				   pause->tx_pause);
++	} else if (!test_bit(PHYLINK_DISABLE_STOPPED,
++			     &pl->phylink_disable_state)) {
+ 		switch (pl->link_an_mode) {
+-		case MLO_AN_PHY:
+-			/* Silently mark the carrier down, and then trigger a resolve */
+-			netif_carrier_off(pl->netdev);
+-			phylink_run_resolve(pl);
+-			break;
+-
+ 		case MLO_AN_FIXED:
+ 			/* Should we allow fixed links to change against the config? */
+ 			phylink_resolve_flow(pl, config);
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/742-net-sfp-add-support-for-module-quirks.patch b/target/linux/generic/backport-4.19/742-net-sfp-add-support-for-module-quirks.patch
new file mode 100644
index 000000000000..0fa8c92603f4
--- /dev/null
+++ b/target/linux/generic/backport-4.19/742-net-sfp-add-support-for-module-quirks.patch
@@ -0,0 +1,116 @@
+From 8df5dd55cef48c0769379e04dbc085a899b106d4 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 8 Mar 2019 14:02:25 +0000
+Subject: [PATCH 640/660] net: sfp: add support for module quirks
+
+Add support for applying module quirks to the list of supported
+ethtool link modes.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp-bus.c | 54 +++++++++++++++++++++++++++++++++++++++
+ 1 file changed, 54 insertions(+)
+
+diff --git a/drivers/net/phy/sfp-bus.c b/drivers/net/phy/sfp-bus.c
+index a352d1ff9b72..fbc86bd63110 100644
+--- a/drivers/net/phy/sfp-bus.c
++++ b/drivers/net/phy/sfp-bus.c
+@@ -9,6 +9,12 @@
+ 
+ #include "sfp.h"
+ 
++struct sfp_quirk {
++	const char *vendor;
++	const char *part;
++	void (*modes)(const struct sfp_eeprom_id *id, unsigned long *modes);
++};
++
+ /**
+  * struct sfp_bus - internal representation of a sfp bus
+  */
+@@ -21,6 +27,7 @@ struct sfp_bus {
+ 	const struct sfp_socket_ops *socket_ops;
+ 	struct device *sfp_dev;
+ 	struct sfp *sfp;
++	const struct sfp_quirk *sfp_quirk;
+ 
+ 	const struct sfp_upstream_ops *upstream_ops;
+ 	void *upstream;
+@@ -30,6 +37,46 @@ struct sfp_bus {
+ 	bool started;
+ };
+ 
++static const struct sfp_quirk sfp_quirks[] = {
++};
++
++static size_t sfp_strlen(const char *str, size_t maxlen)
++{
++	size_t size, i;
++
++	/* Trailing characters should be filled with space chars */
++	for (i = 0, size = 0; i < maxlen; i++)
++		if (str[i] != ' ')
++			size = i + 1;
++
++	return size;
++}
++
++static bool sfp_match(const char *qs, const char *str, size_t len)
++{
++	if (!qs)
++		return true;
++	if (strlen(qs) != len)
++		return false;
++	return !strncmp(qs, str, len);
++}
++
++static const struct sfp_quirk *sfp_lookup_quirk(const struct sfp_eeprom_id *id)
++{
++	const struct sfp_quirk *q;
++	unsigned int i;
++	size_t vs, ps;
++
++	vs = sfp_strlen(id->base.vendor_name, ARRAY_SIZE(id->base.vendor_name));
++	ps = sfp_strlen(id->base.vendor_pn, ARRAY_SIZE(id->base.vendor_pn));
++
++	for (i = 0, q = sfp_quirks; i < ARRAY_SIZE(sfp_quirks); i++, q++)
++		if (sfp_match(q->vendor, id->base.vendor_name, vs) &&
++		    sfp_match(q->part, id->base.vendor_pn, ps))
++			return q;
++
++	return NULL;
++}
+ /**
+  * sfp_parse_port() - Parse the EEPROM base ID, setting the port type
+  * @bus: a pointer to the &struct sfp_bus structure for the sfp module
+@@ -233,6 +280,9 @@ void sfp_parse_support(struct sfp_bus *bus, const struct sfp_eeprom_id *id,
+ 			phylink_set(modes, 1000baseX_Full);
+ 	}
+ 
++	if (bus->sfp_quirk)
++		bus->sfp_quirk->modes(id, modes);
++
+ 	bitmap_or(support, support, modes, __ETHTOOL_LINK_MODE_MASK_NBITS);
+ 
+ 	phylink_set(support, Autoneg);
+@@ -609,6 +659,8 @@ int sfp_module_insert(struct sfp_bus *bus, const struct sfp_eeprom_id *id)
+ 	const struct sfp_upstream_ops *ops = sfp_get_upstream_ops(bus);
+ 	int ret = 0;
+ 
++	bus->sfp_quirk = sfp_lookup_quirk(id);
++
+ 	if (ops && ops->module_insert)
+ 		ret = ops->module_insert(bus->upstream, id);
+ 
+@@ -622,6 +674,8 @@ void sfp_module_remove(struct sfp_bus *bus)
+ 
+ 	if (ops && ops->module_remove)
+ 		ops->module_remove(bus->upstream);
++
++	bus->sfp_quirk = NULL;
+ }
+ EXPORT_SYMBOL_GPL(sfp_module_remove);
+ 
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/743-net-sfp-add-some-quirks-for-GPON-modules.patch b/target/linux/generic/backport-4.19/743-net-sfp-add-some-quirks-for-GPON-modules.patch
new file mode 100644
index 000000000000..db59914f0967
--- /dev/null
+++ b/target/linux/generic/backport-4.19/743-net-sfp-add-some-quirks-for-GPON-modules.patch
@@ -0,0 +1,57 @@
+From ecaa542cfed078dbc356dadff0bad4b6a8e704a0 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 17 May 2019 10:14:45 +0100
+Subject: [PATCH 641/660] net: sfp: add some quirks for GPON modules
+
+Marc Micalizzi reports that Huawei MA5671A and Alcatel/Lucent G-010S-P
+modules are capable of 2500base-X, but incorrectly report their
+capabilities in the EEPROM.  It seems rather common that GPON modules
+mis-report.
+
+Let's fix these modules by adding some quirks.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp-bus.c | 25 +++++++++++++++++++++++++
+ 1 file changed, 25 insertions(+)
+
+diff --git a/drivers/net/phy/sfp-bus.c b/drivers/net/phy/sfp-bus.c
+index fbc86bd63110..5136a7291368 100644
+--- a/drivers/net/phy/sfp-bus.c
++++ b/drivers/net/phy/sfp-bus.c
+@@ -37,7 +37,32 @@ struct sfp_bus {
+ 	bool started;
+ };
+ 
++static void sfp_quirk_2500basex(const struct sfp_eeprom_id *id,
++				unsigned long *modes)
++{
++	phylink_set(modes, 2500baseX_Full);
++}
++
+ static const struct sfp_quirk sfp_quirks[] = {
++	{
++		// Alcatel Lucent G-010S-P can operate at 2500base-X, but
++		// incorrectly report 2500MBd NRZ in their EEPROM
++		.vendor = "ALCATELLUCENT",
++		.part = "G010SP",
++		.modes = sfp_quirk_2500basex,
++	}, {
++		// Alcatel Lucent G-010S-A can operate at 2500base-X, but
++		// report 3.2GBd NRZ in their EEPROM
++		.vendor = "ALCATELLUCENT",
++		.part = "3FE46541AA",
++		.modes = sfp_quirk_2500basex,
++	}, {
++		// Huawei MA5671A can operate at 2500base-X, but report 1.2GBd
++		// NRZ in their EEPROM
++		.vendor = "HUAWEI",
++		.part = "MA5671A",
++		.modes = sfp_quirk_2500basex,
++	},
+ };
+ 
+ static size_t sfp_strlen(const char *str, size_t maxlen)
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/744-net-sfp-soft-status-and-control-support.patch b/target/linux/generic/backport-4.19/744-net-sfp-soft-status-and-control-support.patch
new file mode 100644
index 000000000000..0f983b6fb555
--- /dev/null
+++ b/target/linux/generic/backport-4.19/744-net-sfp-soft-status-and-control-support.patch
@@ -0,0 +1,232 @@
+From 40e0b3b15f7da92e6b065292b14af7b9bfb1c6e0 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Fri, 13 Sep 2019 23:00:35 +0100
+Subject: [PATCH 642/660] net: sfp: soft status and control support
+
+Add support for the soft status and control register, which allows
+TX_FAULT and RX_LOS to be monitored and TX_DISABLE to be set.  We
+make use of this when the board does not support GPIOs for these
+signals.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ drivers/net/phy/sfp.c | 110 ++++++++++++++++++++++++++++++++++--------
+ include/linux/sfp.h   |   4 ++
+ 2 files changed, 94 insertions(+), 20 deletions(-)
+
+diff --git a/drivers/net/phy/sfp.c b/drivers/net/phy/sfp.c
+index 85cb3069a552..982319c95e1f 100644
+--- a/drivers/net/phy/sfp.c
++++ b/drivers/net/phy/sfp.c
+@@ -199,7 +199,10 @@ struct sfp {
+ 	struct gpio_desc *gpio[GPIO_MAX];
+ 	int gpio_irq[GPIO_MAX];
+ 
++	bool need_poll;
++
+ 	struct mutex st_mutex;			/* Protects state */
++	unsigned int state_soft_mask;
+ 	unsigned int state;
+ 	struct delayed_work poll;
+ 	struct delayed_work timeout;
+@@ -393,24 +396,90 @@ static int sfp_i2c_configure(struct sfp *sfp, struct i2c_adapter *i2c)
+ }
+ 
+ /* Interface */
+-static unsigned int sfp_get_state(struct sfp *sfp)
++static int sfp_read(struct sfp *sfp, bool a2, u8 addr, void *buf, size_t len)
+ {
+-	return sfp->get_state(sfp);
++	return sfp->read(sfp, a2, addr, buf, len);
+ }
+ 
+-static void sfp_set_state(struct sfp *sfp, unsigned int state)
++static int sfp_write(struct sfp *sfp, bool a2, u8 addr, void *buf, size_t len)
+ {
+-	sfp->set_state(sfp, state);
++	return sfp->write(sfp, a2, addr, buf, len);
+ }
+ 
+-static int sfp_read(struct sfp *sfp, bool a2, u8 addr, void *buf, size_t len)
++static unsigned int sfp_soft_get_state(struct sfp *sfp)
+ {
+-	return sfp->read(sfp, a2, addr, buf, len);
++	unsigned int state = 0;
++	u8 status;
++
++	if (sfp_read(sfp, true, SFP_STATUS, &status, sizeof(status)) ==
++		     sizeof(status)) {
++		if (status & SFP_STATUS_RX_LOS)
++			state |= SFP_F_LOS;
++		if (status & SFP_STATUS_TX_FAULT)
++			state |= SFP_F_TX_FAULT;
++	}
++
++	return state & sfp->state_soft_mask;
+ }
+ 
+-static int sfp_write(struct sfp *sfp, bool a2, u8 addr, void *buf, size_t len)
++static void sfp_soft_set_state(struct sfp *sfp, unsigned int state)
+ {
+-	return sfp->write(sfp, a2, addr, buf, len);
++	u8 status;
++
++	if (sfp_read(sfp, true, SFP_STATUS, &status, sizeof(status)) ==
++		     sizeof(status)) {
++		if (state & SFP_F_TX_DISABLE)
++			status |= SFP_STATUS_TX_DISABLE_FORCE;
++		else
++			status &= ~SFP_STATUS_TX_DISABLE_FORCE;
++
++		sfp_write(sfp, true, SFP_STATUS, &status, sizeof(status));
++	}
++}
++
++static void sfp_soft_start_poll(struct sfp *sfp)
++{
++	const struct sfp_eeprom_id *id = &sfp->id;
++
++	sfp->state_soft_mask = 0;
++	if (id->ext.enhopts & SFP_ENHOPTS_SOFT_TX_DISABLE &&
++	    !sfp->gpio[GPIO_TX_DISABLE])
++		sfp->state_soft_mask |= SFP_F_TX_DISABLE;
++	if (id->ext.enhopts & SFP_ENHOPTS_SOFT_TX_FAULT &&
++	    !sfp->gpio[GPIO_TX_FAULT])
++		sfp->state_soft_mask |= SFP_F_TX_FAULT;
++	if (id->ext.enhopts & SFP_ENHOPTS_SOFT_RX_LOS &&
++	    !sfp->gpio[GPIO_LOS])
++		sfp->state_soft_mask |= SFP_F_LOS;
++
++	if (sfp->state_soft_mask & (SFP_F_LOS | SFP_F_TX_FAULT) &&
++	    !sfp->need_poll)
++		mod_delayed_work(system_wq, &sfp->poll, poll_jiffies);
++}
++
++static void sfp_soft_stop_poll(struct sfp *sfp)
++{
++	sfp->state_soft_mask = 0;
++}
++
++static unsigned int sfp_get_state(struct sfp *sfp)
++{
++	unsigned int state = sfp->get_state(sfp);
++
++	if (state & SFP_F_PRESENT &&
++	    sfp->state_soft_mask & (SFP_F_LOS | SFP_F_TX_FAULT))
++		state |= sfp_soft_get_state(sfp);
++
++	return state;
++}
++
++static void sfp_set_state(struct sfp *sfp, unsigned int state)
++{
++	sfp->set_state(sfp, state);
++
++	if (state & SFP_F_PRESENT &&
++	    sfp->state_soft_mask & SFP_F_TX_DISABLE)
++		sfp_soft_set_state(sfp, state);
+ }
+ 
+ static unsigned int sfp_check(void *buf, size_t len)
+@@ -1342,11 +1411,6 @@ static void sfp_sm_fault(struct sfp *sfp, unsigned int next_state, bool warn)
+ 	}
+ }
+ 
+-static void sfp_sm_mod_init(struct sfp *sfp)
+-{
+-	sfp_module_tx_enable(sfp);
+-}
+-
+ static void sfp_sm_probe_for_phy(struct sfp *sfp)
+ {
+ 	/* Setting the serdes link mode is guesswork: there's no
+@@ -1509,7 +1573,7 @@ static int sfp_sm_mod_probe(struct sfp *sfp, bool report)
+ 		 (int)sizeof(id.ext.datecode), id.ext.datecode);
+ 
+ 	/* Check whether we support this module */
+-	if (!sfp->type->module_supported(&sfp->id)) {
++	if (!sfp->type->module_supported(&id)) {
+ 		dev_err(sfp->dev,
+ 			"module is not supported - phys id 0x%02x 0x%02x\n",
+ 			sfp->id.base.phys_id, sfp->id.base.phys_ext_id);
+@@ -1699,6 +1763,7 @@ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+ 		if (sfp->mod_phy)
+ 			sfp_sm_phy_detach(sfp);
+ 		sfp_module_tx_disable(sfp);
++		sfp_soft_stop_poll(sfp);
+ 		sfp_sm_next(sfp, SFP_S_DOWN, 0);
+ 		return;
+ 	}
+@@ -1710,7 +1775,10 @@ static void sfp_sm_main(struct sfp *sfp, unsigned int event)
+ 		    sfp->sm_dev_state != SFP_DEV_UP)
+ 			break;
+ 
+-		sfp_sm_mod_init(sfp);
++		if (!(sfp->id.ext.diagmon & SFP_DIAGMON_ADDRMODE))
++			sfp_soft_start_poll(sfp);
++
++		sfp_module_tx_enable(sfp);
+ 
+ 		/* Initialise the fault clearance retries */
+ 		sfp->sm_retries = 5;
+@@ -1966,7 +2034,10 @@ static void sfp_poll(struct work_struct *work)
+ 	struct sfp *sfp = container_of(work, struct sfp, poll.work);
+ 
+ 	sfp_check_state(sfp);
+-	mod_delayed_work(system_wq, &sfp->poll, poll_jiffies);
++
++	if (sfp->state_soft_mask & (SFP_F_LOS | SFP_F_TX_FAULT) ||
++	    sfp->need_poll)
++		mod_delayed_work(system_wq, &sfp->poll, poll_jiffies);
+ }
+ 
+ static struct sfp *sfp_alloc(struct device *dev)
+@@ -2010,7 +2081,6 @@ static int sfp_probe(struct platform_device *pdev)
+ {
+ 	const struct sff_data *sff;
+ 	struct sfp *sfp;
+-	bool poll = false;
+ 	int err, i;
+ 
+ 	sfp = sfp_alloc(&pdev->dev);
+@@ -2100,7 +2170,7 @@ static int sfp_probe(struct platform_device *pdev)
+ 
+ 		sfp->gpio_irq[i] = gpiod_to_irq(sfp->gpio[i]);
+ 		if (!sfp->gpio_irq[i]) {
+-			poll = true;
++			sfp->need_poll = true;
+ 			continue;
+ 		}
+ 
+@@ -2112,11 +2182,11 @@ static int sfp_probe(struct platform_device *pdev)
+ 						dev_name(sfp->dev), sfp);
+ 		if (err) {
+ 			sfp->gpio_irq[i] = 0;
+-			poll = true;
++			sfp->need_poll = true;
+ 		}
+ 	}
+ 
+-	if (poll)
++	if (sfp->need_poll)
+ 		mod_delayed_work(system_wq, &sfp->poll, poll_jiffies);
+ 
+ 	/* We could have an issue in cases no Tx disable pin is available or
+diff --git a/include/linux/sfp.h b/include/linux/sfp.h
+index d73a83dd327c..aecafa5a07a1 100644
+--- a/include/linux/sfp.h
++++ b/include/linux/sfp.h
+@@ -428,6 +428,10 @@ enum {
+ 	SFP_TEC_CUR			= 0x6c,
+ 
+ 	SFP_STATUS			= 0x6e,
++	SFP_STATUS_TX_DISABLE		= BIT(7),
++	SFP_STATUS_TX_DISABLE_FORCE	= BIT(6),
++	SFP_STATUS_TX_FAULT		= BIT(2),
++	SFP_STATUS_RX_LOS		= BIT(1),
+ 	SFP_ALARM0			= 0x70,
+ 	SFP_ALARM0_TEMP_HIGH		= BIT(7),
+ 	SFP_ALARM0_TEMP_LOW		= BIT(6),
+-- 
+2.20.1
+
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
