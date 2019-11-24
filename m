Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D64C10854B
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 Nov 2019 23:22:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S36QntJxQrAKXgMuV2goY4oC/gtyotg5RgUXrMxnScQ=; b=OFrsGzddo3YeDf
	cmRujMQtiEJU01YARSLK4bhfqVcMtuAjHdfxG7NnbR3yzDwKV3IaAGjkcct8mSXc7FWYhy1pl6m9B
	aSP0V+Y79Zn1npurZ0TxCGTgQ1HVqRxzTTydYE6WSl7F8OGi1HkT91qq/3sRllougWtzHcjx1doYT
	uIyVGWfSYG03ZnTRYQejeBSa3EyEkAHFkwbXVgQTukEaZjlA1DCUqsfHUr7e31MAhCZkGJ2Y6aR0D
	YFLHY+eTAAZczB4qqnUB4NZyYcCd4dfroDSSmExD+G6py1jyKoC23VuA5AgikTRWo49+iNfMjkCEw
	MieNGwIfL44Mc57IK0hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ0GX-0002zG-HC; Sun, 24 Nov 2019 22:22:01 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ0GP-0002yC-4H
 for openwrt-devel@lists.openwrt.org; Sun, 24 Nov 2019 22:21:55 +0000
Received: from dbauer-t470.ffda.io (unknown
 [IPv6:2001:67c:2ed8:100e:1481:998b:3e63:226c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 445791E0D6
 for <openwrt-devel@lists.openwrt.org>; Sun, 24 Nov 2019 23:21:48 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 24 Nov 2019 23:21:40 +0100
Message-Id: <20191124222140.26553-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_142153_463711_61B3FB70 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] generic ar8xxx: increase VLAN table for
 AR83x7
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

The Atheros AR8327 and AR8337 have (according to their datasheet) a
VLAN table with a maximum of 4096 entries.

Currently, there's a hard limit of 128 VLANs, which is the same as
for most other Atheros switches. Increase this limit only for the
AR83x7 series and modify some shared functions to allow them to work
with a variable max VLAN count.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/generic/files/drivers/net/phy/ar8216.c | 10 +++++-----
 target/linux/generic/files/drivers/net/phy/ar8216.h |  8 ++++++--
 target/linux/generic/files/drivers/net/phy/ar8327.c |  4 ++--
 3 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/target/linux/generic/files/drivers/net/phy/ar8216.c b/target/linux/generic/files/drivers/net/phy/ar8216.c
index 683241cf1c..5ace4e0b15 100644
--- a/target/linux/generic/files/drivers/net/phy/ar8216.c
+++ b/target/linux/generic/files/drivers/net/phy/ar8216.c
@@ -1204,7 +1204,7 @@ ar8xxx_sw_set_vid(struct switch_dev *dev, const struct switch_attr *attr,
 {
 	struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);
 
-	if (val->port_vlan >= AR8X16_MAX_VLANS)
+	if (val->port_vlan >= dev->vlans)
 		return -EINVAL;
 
 	priv->vlan_id[val->port_vlan] = val->value.i;
@@ -1237,7 +1237,7 @@ ar8xxx_sw_get_ports(struct switch_dev *dev, struct switch_val *val)
 	u8 ports;
 	int i;
 
-	if (val->port_vlan >= AR8X16_MAX_VLANS)
+	if (val->port_vlan >= dev->vlans)
 		return -EINVAL;
 
 	ports = priv->vlan_table[val->port_vlan];
@@ -1277,7 +1277,7 @@ ar8xxx_sw_set_ports(struct switch_dev *dev, struct switch_val *val)
 
 			/* make sure that an untagged port does not
 			 * appear in other vlans */
-			for (j = 0; j < AR8X16_MAX_VLANS; j++) {
+			for (j = 0; j < dev->vlans; j++) {
 				if (j == val->port_vlan)
 					continue;
 				priv->vlan_table[j] &= ~(1 << p->id);
@@ -1356,7 +1356,7 @@ ar8xxx_sw_hw_apply(struct switch_dev *dev)
 	if (!priv->init) {
 		/* calculate the port destination masks and load vlans
 		 * into the vlan translation unit */
-		for (j = 0; j < AR8X16_MAX_VLANS; j++) {
+		for (j = 0; j < dev->vlans; j++) {
 			u8 vp = priv->vlan_table[j];
 
 			if (!vp)
@@ -1409,7 +1409,7 @@ ar8xxx_sw_reset_switch(struct switch_dev *dev)
 	memset(&priv->vlan, 0, sizeof(struct ar8xxx_priv) -
 		offsetof(struct ar8xxx_priv, vlan));
 
-	for (i = 0; i < AR8X16_MAX_VLANS; i++)
+	for (i = 0; i < dev->vlans; i++)
 		priv->vlan_id[i] = i;
 
 	/* Configure all ports */
diff --git a/target/linux/generic/files/drivers/net/phy/ar8216.h b/target/linux/generic/files/drivers/net/phy/ar8216.h
index 93170d5863..bf34fdb775 100644
--- a/target/linux/generic/files/drivers/net/phy/ar8216.h
+++ b/target/linux/generic/files/drivers/net/phy/ar8216.h
@@ -31,6 +31,9 @@
 
 /* size of the vlan table */
 #define AR8X16_MAX_VLANS	128
+#define AR83X7_MAX_VLANS	4096
+#define AR8XXX_MAX_VLANS	AR83X7_MAX_VLANS
+
 #define AR8X16_PROBE_RETRIES	10
 #define AR8X16_MAX_PORTS	8
 
@@ -504,8 +507,9 @@ struct ar8xxx_priv {
 
 	/* all fields below are cleared on reset */
 	bool vlan;
-	u16 vlan_id[AR8X16_MAX_VLANS];
-	u8 vlan_table[AR8X16_MAX_VLANS];
+
+	u16 vlan_id[AR8XXX_MAX_VLANS];
+	u8 vlan_table[AR8XXX_MAX_VLANS];
 	u8 vlan_tagged;
 	u16 pvid[AR8X16_MAX_PORTS];
 	int arl_age_time;
diff --git a/target/linux/generic/files/drivers/net/phy/ar8327.c b/target/linux/generic/files/drivers/net/phy/ar8327.c
index 1878585b0c..4cbfa4d234 100644
--- a/target/linux/generic/files/drivers/net/phy/ar8327.c
+++ b/target/linux/generic/files/drivers/net/phy/ar8327.c
@@ -1481,7 +1481,7 @@ const struct ar8xxx_chip ar8327_chip = {
 
 	.name = "Atheros AR8327",
 	.ports = AR8327_NUM_PORTS,
-	.vlans = AR8X16_MAX_VLANS,
+	.vlans = AR83X7_MAX_VLANS,
 	.swops = &ar8327_sw_ops,
 
 	.reg_port_stats_start = 0x1000,
@@ -1518,7 +1518,7 @@ const struct ar8xxx_chip ar8337_chip = {
 
 	.name = "Atheros AR8337",
 	.ports = AR8327_NUM_PORTS,
-	.vlans = AR8X16_MAX_VLANS,
+	.vlans = AR83X7_MAX_VLANS,
 	.swops = &ar8327_sw_ops,
 
 	.reg_port_stats_start = 0x1000,
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
