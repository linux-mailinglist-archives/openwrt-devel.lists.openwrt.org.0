Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 392FF1F3CB7
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jun 2020 15:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mgwbPL9v5AIPyeJD3n1m3ULvCHONu5+ObDI3N+aLQ0k=; b=kMafzkXTIF+psB
	E/vxQocese9s9WwLJZLn15VRiYM9AWVs4E7w9sDLPC72AKT34iTAq99lJOTxbayHr3uGtn8cPbKk6
	iBcEUEoQHAKT9GTiNdSXvqu67p+vIM4a4BhNAhvSdz0AbaRj3oj8QsZt/m4eyvH0cghEbGl0Z2DdX
	SVne5X6dCnTXONYTUyjRDVW7jxP9Dv7ykuEtCyx9yK0zz+VbJg1x1c3UjAYE0zjR4Jm1I4KzgYn9L
	VWF3K28x8Kl1G4+hKWO+kaCL7DokZKtyDMznlwiYLyXLm8pmc5c4LlkeGD3hhNhoYrMYDY2cSGtcN
	N1dTwTO8MEWBKGekiFtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiePZ-0003Mt-KI; Tue, 09 Jun 2020 13:35:29 +0000
Received: from dvalin.narfation.org ([213.160.73.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiePN-0003MU-T9
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jun 2020 13:35:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1591709715;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=lQE5Yjv9dPagjadJpxd8imutKWoZqGtbCw75QEM24JA=;
 b=1KiahwLj8qW4drTTsXAarZ12uDPHAlAQre03T0Bi8mji4MaxpmJd19pppw8ZjveNTTZNFH
 RLeOHMpfeE2H5ls9oGycpYZALZisNIs8/RT7dqIqUBlZXdJerv9CBa1QsKgfSItvC0gE8u
 HifR9z2EJbq58DZNAgUrf9S83viqIKg=
From: Sven Eckelmann <sven@narfation.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  9 Jun 2020 15:35:04 +0200
Message-Id: <20200609133504.6563-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_063518_101858_E7FFCE49 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [213.160.73.56 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] ipq40xx: essedma: Disable TCP
 segmentation offload for IPv6
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
Cc: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

It was noticed that the the whole MAC can hang when transferring data from
one ar40xx port (WAN ports) to the CPU and from the CPU back to another
ar40xx port (LAN ports). The CPU was doing only NATing in that process.

Usually, the problem first starts with a simple data corruption:

  $ wget https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-10.4.0-amd64-netinst.iso -O /dev/null
  ...
  Connecting to saimei.ftp.acc.umu.se (saimei.ftp.acc.umu.se)|2001:6b0:19::138|:443... connected.
  ...
  Read  error at byte 48807936/352321536 (Decryption has failed.). Retrying.

But after a short while, the whole MAC will stop to react. No traffic can
be transported anymore from the CPU port from/to the AR40xx PHY/switch and
the MAC has to be resetted.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
v2:
* move the changes directly to
  target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/edma_axi.c

The problem was first observed on OpenWrt 18.06 and OpenWrt 19.07. It would
be good that the patch (or maybe even a better one) is "backported". This
actually means copying the one from the v1 [1] to the correct ipq40xx patch
folder and then refresh the patch.

Thanks

[1] https://patchwork.ozlabs.org/project/openwrt/patch/20200609132304.31669-1-sven@narfation.org/

 .../drivers/net/ethernet/qualcomm/essedma/edma_axi.c  | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/edma_axi.c b/target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
index b619bbbab9..96a82b3116 100644
--- a/target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
+++ b/target/linux/ipq40xx/files-5.4/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
@@ -970,17 +970,14 @@ static int edma_axi_probe(struct platform_device *pdev)
 		edma_netdev[i]->features = NETIF_F_HW_CSUM | NETIF_F_RXCSUM
 				      | NETIF_F_HW_VLAN_CTAG_TX
 				      | NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_SG |
-				      NETIF_F_TSO | NETIF_F_TSO6 | NETIF_F_GRO;
+				      NETIF_F_TSO | NETIF_F_GRO;
 		edma_netdev[i]->hw_features = NETIF_F_HW_CSUM | NETIF_F_RXCSUM |
 				NETIF_F_HW_VLAN_CTAG_RX
-				| NETIF_F_SG | NETIF_F_TSO | NETIF_F_TSO6 |
-				NETIF_F_GRO;
+				| NETIF_F_SG | NETIF_F_TSO | NETIF_F_GRO;
 		edma_netdev[i]->vlan_features = NETIF_F_HW_CSUM | NETIF_F_SG |
-					   NETIF_F_TSO | NETIF_F_TSO6 |
-					   NETIF_F_GRO;
+					   NETIF_F_TSO | NETIF_F_GRO;
 		edma_netdev[i]->wanted_features = NETIF_F_HW_CSUM | NETIF_F_SG |
-					     NETIF_F_TSO | NETIF_F_TSO6 |
-					     NETIF_F_GRO;
+					     NETIF_F_TSO | NETIF_F_GRO;
 
 #ifdef CONFIG_RFS_ACCEL
 		edma_netdev[i]->features |=  NETIF_F_RXHASH | NETIF_F_NTUPLE;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
