Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 513181D141C
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 15:09:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cA6u4sT5B4kwFEcwSbZPqbIQREOfjBzDKk/ANaY7Jw0=; b=TJYaBol2Z6acPd6FmDFLBwmXCz
	NvnNbMRLmh8fe0/z1/nx2cI253n5vfJf0kLNL1sBSC5D1ZKAk2y/8RXmW34sXT/0dbVihLfN3dlRj
	7P4OFfbKV9M64OCVmSvMjW6DoAYDYKn92/BVuservgnWdlrBUSEuSHYaKBKbVj0imkbVr9ULk2JSQ
	q9GBGMvGBUE7Lrn/pqgfwUcH/vBlUOpp67RAfqVgCjRsEObtc4Fd0lv8FsXYbaQRRCRASl/9sIJ8N
	ti75Rsim1rbLlDj7GL0UtJY/TNmOZOk4CkE5HNuBqfxtfSJUPUoR0Pmhtn8FaE5hfJwbupTS3l/l1
	eTPLS9lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYr8Y-0004mX-E6; Wed, 13 May 2020 13:09:26 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYr7q-0004Ij-Lv
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 13:08:45 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mduym-1j04rw1zq2-00b2pn for <openwrt-devel@lists.openwrt.org>; Wed, 13
 May 2020 15:08:38 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 May 2020 15:07:19 +0200
Message-Id: <20200513130721.49794-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200513130721.49794-1-freifunk@adrianschmutzler.de>
References: <20200513130721.49794-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:TvQEnhLayOrrvuY4rzgqP3l2qOnANE6Y17YjO8oQUaGyAIMZhnv
 WDxNdAWEHez4XUZSPfLbbAcv/gDVw44MQ+4WhQe58lE1Gc8aJVUplERD0lI8FBcq05StyKu
 FfkU+na3n+QLK8RKv4mb8ek09aZtvYvlXnwaHsTygfg5pQiuFeRoLDVhiwo0zllpLLkrs24
 T5dpsRj6sDafFN8LqRfNw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0bA3NHqfx3c=:6f4ZJkKaLFhLN57amKzx9H
 QJqaWEKszccfICt6tKabp4qDzeJqvZs019FeOuOdXd3B5s3hMaDg8+Ob+v/WLB4N4fNxyydb+
 YQn/3K443jAQ/De1Mwft5lqUtAEaRl7nQmpp4M4n7UkCWLrKOfDj6cK73XltyQ6PmUdSrDyeX
 1Dup3WzQFKbwl6tenJ+WpklcdgmPQn9TlJ+93p67lFyDKO6FfPFzs1ISWYWDxmXCQpgTmj6yY
 qEysJB24WwwAzkTk5zkdrA0fPWwoES2l/N0umprlS/PKfFe4/zez3oixF4Fy8MeBV4nnuZIaA
 aeLl6uB107jmcx0u3Y6Z79gTICEHODOHkxR/vxv0cPgJn3c1IP0Pg71zfxT4Mzy3B8m0nLa0U
 GwHyVkJZXw03t4gv+kQgjGAGNuwCjjJw1JqE8FVHDz3ch+A84AjH83HYtjIFAvxFRILubp6it
 G7J39fQtWc7w997kNHICb8Dk4Q3sfNlRI+Yo0nTg9w+mSkp8vl6ixh2SDqc7RFnTf+YhMh8f3
 hVBbs2i+mS4O/3VT9htz79k8gu+81iRfoTB8mftUtBdamQyQYr5s4YXZPWlYb31Vt5BTX5K/7
 lPzFHPGgJ1qoErWvbYaU8r/TJGg81PUKMDinbHVs8OPemlS2q7Vwi6GTjXlat76i5uzuTGf6f
 Gd4FigbDn++NuHr37UaDBVKZ/XYSut5KkUCa5y6YOrF7c1cmYs503JcNLRPp7J+QBee15VNvt
 B5uEB6pJItAEwDfv40fg5ZwRLU/VRXgs5VN4DeCQ0nIAknTrWZaIyWyFXkZbIB1p/EvY6YayL
 ObF+TBkgJUOH1eC6GzmgJG582OPWKN+DL/eZLKv4/8kcVK9WKes4cs3tbK9qVu0tYCVd9ff
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_060843_008108_F19B9A7F 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 2/4] generic: drop outdated kernel version
 switches in local drivers
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

This drops the obsolete version switches for non-supported kernels
from local drivers in generic target.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../drivers/mtd/mtdsplit/mtdsplit_uimage.c    | 20 -------------------
 .../files/drivers/net/phy/b53/b53_priv.h      |  7 +------
 .../generic/files/drivers/net/phy/rtl8306.c   |  3 ---
 .../files/drivers/net/phy/rtl8366_smi.c       |  8 --------
 .../generic/files/drivers/net/phy/swconfig.c  | 16 ++-------------
 5 files changed, 3 insertions(+), 51 deletions(-)

diff --git a/target/linux/generic/files/drivers/mtd/mtdsplit/mtdsplit_uimage.c b/target/linux/generic/files/drivers/mtd/mtdsplit/mtdsplit_uimage.c
index a6e50b5113..525ad8218b 100644
--- a/target/linux/generic/files/drivers/mtd/mtdsplit/mtdsplit_uimage.c
+++ b/target/linux/generic/files/drivers/mtd/mtdsplit/mtdsplit_uimage.c
@@ -245,19 +245,15 @@ mtdsplit_uimage_parse_generic(struct mtd_info *master,
 				      uimage_verify_default);
 }
 
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 9, 0)
 static const struct of_device_id mtdsplit_uimage_of_match_table[] = {
 	{ .compatible = "denx,uimage" },
 	{},
 };
-#endif
 
 static struct mtd_part_parser uimage_generic_parser = {
 	.owner = THIS_MODULE,
 	.name = "uimage-fw",
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 9, 0)
 	.of_match_table = mtdsplit_uimage_of_match_table,
-#endif
 	.parse_fn = mtdsplit_uimage_parse_generic,
 	.type = MTD_PARSER_TYPE_FIRMWARE,
 };
@@ -312,19 +308,15 @@ mtdsplit_uimage_parse_netgear(struct mtd_info *master,
 				      uimage_verify_wndr3700);
 }
 
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 9, 0)
 static const struct of_device_id mtdsplit_uimage_netgear_of_match_table[] = {
 	{ .compatible = "netgear,uimage" },
 	{},
 };
-#endif
 
 static struct mtd_part_parser uimage_netgear_parser = {
 	.owner = THIS_MODULE,
 	.name = "netgear-fw",
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 9, 0)
 	.of_match_table = mtdsplit_uimage_netgear_of_match_table,
-#endif
 	.parse_fn = mtdsplit_uimage_parse_netgear,
 	.type = MTD_PARSER_TYPE_FIRMWARE,
 };
@@ -364,19 +356,15 @@ mtdsplit_uimage_parse_edimax(struct mtd_info *master,
 				       uimage_find_edimax);
 }
 
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 9, 0)
 static const struct of_device_id mtdsplit_uimage_edimax_of_match_table[] = {
 	{ .compatible = "edimax,uimage" },
 	{},
 };
-#endif
 
 static struct mtd_part_parser uimage_edimax_parser = {
 	.owner = THIS_MODULE,
 	.name = "edimax-fw",
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 9, 0)
 	.of_match_table = mtdsplit_uimage_edimax_of_match_table,
-#endif
 	.parse_fn = mtdsplit_uimage_parse_edimax,
 	.type = MTD_PARSER_TYPE_FIRMWARE,
 };
@@ -407,19 +395,15 @@ mtdsplit_uimage_parse_fonfxc(struct mtd_info *master,
 				       uimage_find_fonfxc);
 }
 
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 9, 0)
 static const struct of_device_id mtdsplit_uimage_fonfxc_of_match_table[] = {
 	{ .compatible = "fonfxc,uimage" },
 	{},
 };
-#endif
 
 static struct mtd_part_parser uimage_fonfxc_parser = {
 	.owner = THIS_MODULE,
 	.name = "fonfxc-fw",
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 9, 0)
 	.of_match_table = mtdsplit_uimage_fonfxc_of_match_table,
-#endif
 	.parse_fn = mtdsplit_uimage_parse_fonfxc,
 };
 
@@ -464,19 +448,15 @@ mtdsplit_uimage_parse_okli(struct mtd_info *master,
 				      uimage_verify_okli);
 }
 
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 9, 0)
 static const struct of_device_id mtdsplit_uimage_okli_of_match_table[] = {
 	{ .compatible = "openwrt,okli" },
 	{},
 };
-#endif
 
 static struct mtd_part_parser uimage_okli_parser = {
 	.owner = THIS_MODULE,
 	.name = "okli-fw",
-#if LINUX_VERSION_CODE >= KERNEL_VERSION(4, 9, 0)
 	.of_match_table = mtdsplit_uimage_okli_of_match_table,
-#endif
 	.parse_fn = mtdsplit_uimage_parse_okli,
 };
 
diff --git a/target/linux/generic/files/drivers/net/phy/b53/b53_priv.h b/target/linux/generic/files/drivers/net/phy/b53/b53_priv.h
index a9296c9421..37c17aeb25 100644
--- a/target/linux/generic/files/drivers/net/phy/b53/b53_priv.h
+++ b/target/linux/generic/files/drivers/net/phy/b53/b53_priv.h
@@ -314,9 +314,8 @@ static inline int b53_write64(struct b53_device *dev, u8 page, u8 reg,
 #endif
 
 #include <linux/version.h>
-#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4, 1, 0))
 #include <linux/bcm47xx_nvram.h>
-#endif
+
 static inline int b53_switch_get_reset_gpio(struct b53_device *dev)
 {
 #ifdef CONFIG_BCM47XX
@@ -331,11 +330,7 @@ static inline int b53_switch_get_reset_gpio(struct b53_device *dev)
 	}
 #endif
 
-#if (LINUX_VERSION_CODE >= KERNEL_VERSION(4, 1, 0))
 	return bcm47xx_nvram_gpio_pin("robo_reset");
-#else
-	return -ENOENT;
-#endif
 }
 
 #endif
diff --git a/target/linux/generic/files/drivers/net/phy/rtl8306.c b/target/linux/generic/files/drivers/net/phy/rtl8306.c
index 6d09c1063c..31bc7589c4 100644
--- a/target/linux/generic/files/drivers/net/phy/rtl8306.c
+++ b/target/linux/generic/files/drivers/net/phy/rtl8306.c
@@ -1033,9 +1033,6 @@ rtl8306_read_status(struct phy_device *pdev)
 
 static struct phy_driver rtl8306_driver = {
 	.name		= "Realtek RTL8306S",
-#if (LINUX_VERSION_CODE < KERNEL_VERSION(4,13,0))
-	.flags		= PHY_HAS_MAGICANEG,
-#endif
 	.phy_id		= RTL8306_MAGIC,
 	.phy_id_mask	= 0xffffffff,
 	.features	= PHY_BASIC_FEATURES,
diff --git a/target/linux/generic/files/drivers/net/phy/rtl8366_smi.c b/target/linux/generic/files/drivers/net/phy/rtl8366_smi.c
index 2c4d53fc67..e8375e5147 100644
--- a/target/linux/generic/files/drivers/net/phy/rtl8366_smi.c
+++ b/target/linux/generic/files/drivers/net/phy/rtl8366_smi.c
@@ -1035,14 +1035,6 @@ static int rtl8366_smi_mii_init(struct rtl8366_smi *smi)
 		 dev_name(smi->parent));
 	smi->mii_bus->parent = smi->parent;
 	smi->mii_bus->phy_mask = ~(0x1f);
-#if LINUX_VERSION_CODE < KERNEL_VERSION(4,5,0)
-	{
-		int i;
-		smi->mii_bus->irq = smi->mii_irq;
-		for (i = 0; i < PHY_MAX_ADDR; i++)
-			smi->mii_irq[i] = PHY_POLL;
-	}
-#endif
 
 #ifdef CONFIG_OF
 	if (np)
diff --git a/target/linux/generic/files/drivers/net/phy/swconfig.c b/target/linux/generic/files/drivers/net/phy/swconfig.c
index e7da45d0f7..38fdab2d5c 100644
--- a/target/linux/generic/files/drivers/net/phy/swconfig.c
+++ b/target/linux/generic/files/drivers/net/phy/swconfig.c
@@ -594,12 +594,9 @@ swconfig_parse_ports(struct sk_buff *msg, struct nlattr *head,
 #if LINUX_VERSION_CODE >= KERNEL_VERSION(5,2,0)
 		if (nla_parse_nested_deprecated(tb, SWITCH_PORT_ATTR_MAX, nla,
 				port_policy, NULL))
-#elif LINUX_VERSION_CODE >= KERNEL_VERSION(4,12,0)
-		if (nla_parse_nested(tb, SWITCH_PORT_ATTR_MAX, nla,
-				port_policy, NULL))
 #else
 		if (nla_parse_nested(tb, SWITCH_PORT_ATTR_MAX, nla,
-				port_policy))
+				port_policy, NULL))
 #endif
 			return -EINVAL;
 
@@ -623,10 +620,8 @@ swconfig_parse_link(struct sk_buff *msg, struct nlattr *nla,
 
 #if LINUX_VERSION_CODE >= KERNEL_VERSION(5,2,0)
 	if (nla_parse_nested_deprecated(tb, SWITCH_LINK_ATTR_MAX, nla, link_policy, NULL))
-#elif LINUX_VERSION_CODE >= KERNEL_VERSION(4,12,0)
-	if (nla_parse_nested(tb, SWITCH_LINK_ATTR_MAX, nla, link_policy, NULL))
 #else
-	if (nla_parse_nested(tb, SWITCH_LINK_ATTR_MAX, nla, link_policy))
+	if (nla_parse_nested(tb, SWITCH_LINK_ATTR_MAX, nla, link_policy, NULL))
 #endif
 		return -EINVAL;
 
@@ -1110,9 +1105,6 @@ static struct genl_ops swconfig_ops[] = {
 };
 
 static struct genl_family switch_fam = {
-#if LINUX_VERSION_CODE < KERNEL_VERSION(4,10,0)
-	.id = GENL_ID_GENERATE,
-#endif
 	.name = "switch",
 	.hdrsize = 0,
 	.version = 1,
@@ -1298,11 +1290,7 @@ swconfig_init(void)
 {
 	INIT_LIST_HEAD(&swdevs);
 
-#if LINUX_VERSION_CODE < KERNEL_VERSION(4,10,0)
-	return genl_register_family_with_ops(&switch_fam, swconfig_ops);
-#else
 	return genl_register_family(&switch_fam);
-#endif
 }
 
 static void __exit
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
