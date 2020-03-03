Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2696F178303
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Mar 2020 20:20:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0qlEbc6rwnkv9jlGs3pHFpM4nWIIRLFcm5r+njh+6Q=; b=sIVRF/nAHn3ENW
	A/Qn909Vjy8YqCU2OK+G7xeiJMB8gPYS5TTbmcUH3hAM7soP5SLDn8yqdKOCkI3agVhbTlygEgZ61
	1bi/A/H8wO41IGTnu61JY1eqygLYr+TgiFZOjOMOaBm7GO3ZixLPiifNKUf3CIknau8tXIglzsDnO
	8z7t//d8lCn3hK5xqOQjNzivuJpli43CsrTllumDoLSYBLAl/xfCpMFrYrOu9scqi3X9IbDtQGOFy
	v7UQk2hBUaov7DUIgpImxA73CGbHrFJS5BROHrGs4bau5XISvdZmVUbXsZX/raSHjmwbg4u9i2OWA
	zT0AGXhYVewz7kqh5dJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9D5U-0005Sg-1K; Tue, 03 Mar 2020 19:20:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9D53-0005HK-61
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 19:19:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id h9so4912272wrr.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Mar 2020 11:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ChkBKOgyYv422e+GcBZasDGJNS1guZENJJeQ9k6CHm0=;
 b=U0LHQPSuc4K95CeNBMhNdDvKpafsOIukHCOi/qPhbX6il4Xpe84UrKIKp8fRdt538o
 /Wsq1+7E6nSXZvCh8GdSW8ZPwtNLT/1dOGQMnrQLU3QCCfDcIxGfYCTZuaQtHi0CCGN6
 0e6EKyG/uAr/sotmgx5drpxnIntLQKTP5NfEDK19F4+1A6C981LLZB2p3lhwqePb3Icc
 dCZ/pg05MY42nmvGNp3QqdnLHGoifLnacZwGp1RS9ayd7PJCXO/O7vI1qztkAPTqmvH+
 LwJlWNcZY1oh/2UDoqwE/+Nl0FzLr8hxlELjBlwAhurMDPfOjloO9KLT5rqHb4YgG1rk
 kUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ChkBKOgyYv422e+GcBZasDGJNS1guZENJJeQ9k6CHm0=;
 b=bPS4u0Y7zBq6WpU0wp0NYU9vY+t972/2DyafhRAVyCa4WROPa6TNoiu9+zMpm9/6Pg
 ofbu/qC+Bs30+f39rYjbFsI5ifdxc6C2aLkkOXmFptk7eGnWp+KSIKcynMCYNy9MFxI/
 1PEcYsVbgrFH3k9d56TfADWSikhm9WMm+ejVXzt2RrJU5kVXARGkvMkv2yfxXD0ZBwP8
 TGqGs3qLtJtAjsWI4WMsLdY75DfpYrDLz5ykE0bohx6mwApe63FHoauhzrQqWgLzlWkq
 AD3H11O/kgOP5HtM4UAQ1uX6cbAF0cdQKm+j+C332uR/pAa2ngd+D6aWffBuxG+NGeWM
 Tk0w==
X-Gm-Message-State: ANhLgQ2SEoVTpguk+6xRlWm/xZdzsaRdZKjjmn4bmWIF1MiPCgLwWCV0
 ZL3Hdim8oFeZLMZNYejbZh5Au2Auh3knlYrH3mg/tXi8C2Y9eRbYre8Wi/vZHN6gcNe/jmUPpTz
 fDUFn62WjocJqdFruipmhzWmom0rkrK8BxN9TyTxxxOW7oUmxBVERJ1y304m4Lb2Yi03oBJbSer
 D4+Kz1emST
X-Google-Smtp-Source: ADFU+vvhRLFUyz29SyX3rQx/bOGbxL+r8rlmss2vcnLK1LONs+fQM7+oAmQVV0bZAwKZlPDNZMNejg==
X-Received: by 2002:adf:b345:: with SMTP id k5mr3375863wrd.55.1583263185405;
 Tue, 03 Mar 2020 11:19:45 -0800 (PST)
Received: from localhost.localdomain (dh207-97-208.xnet.hr. [88.207.97.208])
 by smtp.googlemail.com with ESMTPSA id g14sm36084390wrv.58.2020.03.03.11.19.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 11:19:44 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Mar 2020 20:19:31 +0100
Message-Id: <20200303191931.917613-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200303191931.917613-1-robert.marko@sartura.hr>
References: <20200303191931.917613-1-robert.marko@sartura.hr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_111949_275496_D4ADF215 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] ipq40xx: 5.4: fix ethernet driver
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
Cc: Robert Marko <robert.marko@sartura.hr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

In 5.4 kernel old u32 array way of setting network features was dropped and linkmode is now the only way.
So lets migrate the EDMA driver to support linkmode.
Also, old get/set settings API for ethtool is also dropped so lets convert to new ksettings API while at it as it demands linkmode.

Now, gigabit works properly as well as ethtool.
Previously you would get this in ethtool:
root@OpenWrt:/# ethtool eth1
Settings for eth1:
        Supports Wake-on: d
        Wake-on: d
        Current message level: 0x00000000 (0)

        Link detected: yes

Now, features are properly advertised:
root@OpenWrt:/# ethtool eth1
Settings for eth1:
        Supported ports: [ TP MII ]
        Supported link modes:   10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Half 1000baseT/Full
        Supported pause frame use: Symmetric Receive-only
        Supports auto-negotiation: Yes
        Supported FEC modes: Not reported
        Advertised link modes:  10baseT/Half 10baseT/Full
                                100baseT/Half 100baseT/Full
                                1000baseT/Half 1000baseT/Full
        Advertised pause frame use: Symmetric Receive-only
        Advertised auto-negotiation: Yes
        Advertised FEC modes: Not reported
        Link partner advertised link modes:  10baseT/Half 10baseT/Full
                                             100baseT/Half 100baseT/Full
                                             1000baseT/Full
        Link partner advertised pause frame use: No
        Link partner advertised auto-negotiation: No
        Link partner advertised FEC modes: Not reported
        Speed: 1000Mb/s
        Duplex: Full
        Port: Twisted Pair
        PHYAD: 4
        Transceiver: internal
        Auto-negotiation: on
        MDI-X: Unknown
        Supports Wake-on: d
        Wake-on: d
        Current message level: 0x00000000 (0)

        Link detected: yes

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 .../ethernet/qualcomm/essedma/edma_ethtool.c  | 65 ++++++++++---------
 1 file changed, 36 insertions(+), 29 deletions(-)

diff --git a/target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/edma_ethtool.c b/target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/edma_ethtool.c
index 8f6e3833b6..1270e20a90 100644
--- a/target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/edma_ethtool.c
+++ b/target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/edma_ethtool.c
@@ -180,9 +180,8 @@ static uint32_t edma_get_msglevel(struct net_device *netdev)
 /* edma_get_settings()
  *	Get edma settings
  */
-#if 0
 static int edma_get_settings(struct net_device *netdev,
-			     struct ethtool_cmd *ecmd)
+			     struct ethtool_link_ksettings *cmd)
 {
 	struct edma_adapter *adapter = netdev_priv(netdev);
 
@@ -196,38 +195,46 @@ static int edma_get_settings(struct net_device *netdev,
 
 		phydev = adapter->phydev;
 
-		ecmd->advertising = phydev->advertising;
-		ecmd->autoneg = phydev->autoneg;
+		linkmode_copy(cmd->link_modes.advertising, phydev->advertising);
+		linkmode_copy(cmd->link_modes.supported, phydev->supported);
+
+		cmd->base.autoneg = phydev->autoneg;
 
 		if (adapter->link_state == __EDMA_LINKDOWN) {
-			ecmd->speed =  SPEED_UNKNOWN;
-			ecmd->duplex = DUPLEX_UNKNOWN;
+			cmd->base.speed =  SPEED_UNKNOWN;
+			cmd->base.duplex = DUPLEX_UNKNOWN;
 		} else {
-			ecmd->speed = phydev->speed;
-			ecmd->duplex = phydev->duplex;
+			cmd->base.speed = phydev->speed;
+			cmd->base.duplex = phydev->duplex;
 		}
 
-		ecmd->phy_address = adapter->phy_mdio_addr;
+		cmd->base.phy_address = adapter->phy_mdio_addr;
 
 		phyreg = (uint16_t)phy_read(adapter->phydev, MII_LPA);
 		if (phyreg & LPA_10HALF)
-			ecmd->lp_advertising |= ADVERTISED_10baseT_Half;
+			linkmode_set_bit(ETHTOOL_LINK_MODE_10baseT_Half_BIT, 
+								cmd->link_modes.lp_advertising);
 
 		if (phyreg & LPA_10FULL)
-			ecmd->lp_advertising |= ADVERTISED_10baseT_Full;
+			linkmode_set_bit(ETHTOOL_LINK_MODE_10baseT_Full_BIT, 
+								cmd->link_modes.lp_advertising);
 
 		if (phyreg & LPA_100HALF)
-			ecmd->lp_advertising |= ADVERTISED_100baseT_Half;
+			linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Half_BIT, 
+								cmd->link_modes.lp_advertising);
 
 		if (phyreg & LPA_100FULL)
-			ecmd->lp_advertising |= ADVERTISED_100baseT_Full;
+			linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT, 
+								cmd->link_modes.lp_advertising);
 
 		phyreg = (uint16_t)phy_read(adapter->phydev, MII_STAT1000);
 		if (phyreg & LPA_1000HALF)
-			ecmd->lp_advertising |= ADVERTISED_1000baseT_Half;
+			linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Half_BIT, 
+								cmd->link_modes.lp_advertising);
 
 		if (phyreg & LPA_1000FULL)
-			ecmd->lp_advertising |= ADVERTISED_1000baseT_Full;
+			linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT, 
+								cmd->link_modes.lp_advertising);
 	} else {
 		/* If the speed/duplex for this GMAC is forced and we
 		 * are not polling for link state changes, return the
@@ -238,14 +245,14 @@ static int edma_get_settings(struct net_device *netdev,
 		if (!(adapter->poll_required)) {
 			if (adapter->forced_speed != SPEED_UNKNOWN) {
 				/* set speed and duplex */
-				ethtool_cmd_speed_set(ecmd, SPEED_1000);
-				ecmd->duplex = DUPLEX_FULL;
+				cmd->base.speed = SPEED_1000;
+				cmd->base.duplex = DUPLEX_FULL;
 
 				/* Populate capabilities advertised by self */
-				ecmd->advertising = 0;
-				ecmd->autoneg = 0;
-				ecmd->port = PORT_TP;
-				ecmd->transceiver = XCVR_EXTERNAL;
+				linkmode_zero(cmd->link_modes.advertising);
+				cmd->base.autoneg = 0;
+				cmd->base.port = PORT_TP;
+				cmd->base.transceiver = XCVR_EXTERNAL;
 			} else {
 				/* non link polled and non
 				 * forced speed/duplex interface
@@ -262,7 +269,7 @@ static int edma_get_settings(struct net_device *netdev,
  *	Set EDMA settings
  */
 static int edma_set_settings(struct net_device *netdev,
-			     struct ethtool_cmd *ecmd)
+			    const struct ethtool_link_ksettings *cmd)
 {
 	struct edma_adapter *adapter = netdev_priv(netdev);
 	struct phy_device *phydev = NULL;
@@ -272,16 +279,16 @@ static int edma_set_settings(struct net_device *netdev,
 		return -EPERM;
 
 	phydev = adapter->phydev;
-	phydev->advertising = ecmd->advertising;
-	phydev->autoneg = ecmd->autoneg;
-	phydev->speed = ethtool_cmd_speed(ecmd);
-	phydev->duplex = ecmd->duplex;
+	linkmode_copy(phydev->advertising, cmd->link_modes.advertising);
+	linkmode_copy(phydev->supported, cmd->link_modes.supported);
+	phydev->autoneg = cmd->base.autoneg;
+	phydev->speed = cmd->base.speed;
+	phydev->duplex = cmd->base.duplex;
 
 	genphy_config_aneg(phydev);
 
 	return 0;
 }
-#endif
 
 /* edma_get_coalesce
  *	get interrupt mitigation
@@ -356,8 +363,8 @@ static const struct ethtool_ops edma_ethtool_ops = {
 	.get_msglevel = &edma_get_msglevel,
 	.nway_reset = &edma_nway_reset,
 	.get_wol = &edma_get_wol,
-//	.get_settings = &edma_get_settings,
-//	.set_settings = &edma_set_settings,
+	.get_link_ksettings = &edma_get_settings,
+	.set_link_ksettings = &edma_set_settings,
 	.get_strings = &edma_get_strings,
 	.get_sset_count = &edma_get_strset_count,
 	.get_ethtool_stats = &edma_get_ethtool_stats,
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
