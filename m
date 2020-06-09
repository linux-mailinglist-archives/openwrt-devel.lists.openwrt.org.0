Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCAE1F3C3B
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jun 2020 15:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P0NkjqrXKKRqf6vSqLqqgdXnOTRoWaX++k0C/IJZGsY=; b=T6m7q6pBkNYdzh
	zQRWinnoNcwisdPvH1ANCMgmBSHui8tA8VrjoA0Iwnty1IZHrrVR41iGX7IOfuPrzryOmZMTNlzFT
	MJE2QXYCXzEqCX5/ylR/BdwO/fupxjNNA/YCC8lsPECMGDl3ovZvQMJaEVRkmgemRMm8EwzsupZ5D
	CgyFLfi33GIUok8W2hEIhxNfkyQF58iBnaFNSlnUTKb8+tvPI5QMWUcKCwXVYEUslPxpq7VaI29Jl
	h/QXPnSfR/94d1niSreOsQjX/NUIw/2FBA4PIuWrXmTVwcGx1ZmqAv29JuBSCcqaYVePOPeL+Uq6/
	FoWiOZ2DZL2JXhD+iQFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieDv-0007tn-IQ; Tue, 09 Jun 2020 13:23:27 +0000
Received: from dvalin.narfation.org ([213.160.73.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieDo-0007t6-Nz
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jun 2020 13:23:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1591708993;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=2rtcBTWBvNolpKTOmy+k3YV9gzk58c0NwoacjIso4+E=;
 b=U3ImfL4PtN7DUrt0T6sbh2b97pGMTDV+h5PqgV52q5B+4rYebN6+qkxNK99isr6dTAmIQi
 O6CZoWW3pLO9UzuCPOE+uEeTdsYyet1tNWj+ZXGoWTojhjECdSaM6qGQIQlx0JJbnCVAwM
 OwAngfQNQQ9cMfiGBQdvcDjjduSpcbE=
From: Sven Eckelmann <sven@narfation.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  9 Jun 2020 15:23:04 +0200
Message-Id: <20200609132304.31669-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_062321_097407_F50D83CC 
X-CRM114-Status: UNSURE (   9.66  )
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
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: essedma: Disable TCP segmentation
 offload for IPv6
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
The problem was first observed on OpenWrt 18.06 and OpenWrt 19.07. It would
be good that this patch (or maybe even a better one) is copied to these
versions (and then refreshed).

Thanks

 ...le-TCP-segmentation-offload-for-IPv6.patch | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 target/linux/ipq40xx/patches-5.4/712-essedma-Disable-TCP-segmentation-offload-for-IPv6.patch

diff --git a/target/linux/ipq40xx/patches-5.4/712-essedma-Disable-TCP-segmentation-offload-for-IPv6.patch b/target/linux/ipq40xx/patches-5.4/712-essedma-Disable-TCP-segmentation-offload-for-IPv6.patch
new file mode 100644
index 0000000000..1b165d0051
--- /dev/null
+++ b/target/linux/ipq40xx/patches-5.4/712-essedma-Disable-TCP-segmentation-offload-for-IPv6.patch
@@ -0,0 +1,46 @@
+From: Sven Eckelmann <sven@narfation.org>
+Date: Tue, 9 Jun 2020 14:08:44 +0200
+Subject: essedma: Disable TCP segmentation offload for IPv6
+
+It was noticed that the the whole MAC can hang when transferring data from
+one ar40xx port (WAN ports) to the CPU and from the CPU back to another
+ar40xx port (LAN ports). The CPU was doing only NATing in that process.
+
+Usually, the problem first starts with a simple data corruption:
+
+  $ wget https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-10.4.0-amd64-netinst.iso -O /dev/null
+  ...
+  Connecting to saimei.ftp.acc.umu.se (saimei.ftp.acc.umu.se)|2001:6b0:19::138|:443... connected.
+  ...
+  Read  error at byte 48807936/352321536 (Decryption has failed.). Retrying.
+
+But after a short while, the whole MAC will stop to react. No traffic can
+be transported anymore from the CPU port from/to the AR40xx PHY/switch and
+the MAC has to be resetted.
+
+Signed-off-by: Sven Eckelmann <sven@narfation.org>
+
+--- a/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
++++ b/drivers/net/ethernet/qualcomm/essedma/edma_axi.c
+@@ -970,17 +970,14 @@ static int edma_axi_probe(struct platfor
+ 		edma_netdev[i]->features = NETIF_F_HW_CSUM | NETIF_F_RXCSUM
+ 				      | NETIF_F_HW_VLAN_CTAG_TX
+ 				      | NETIF_F_HW_VLAN_CTAG_RX | NETIF_F_SG |
+-				      NETIF_F_TSO | NETIF_F_TSO6 | NETIF_F_GRO;
++				      NETIF_F_TSO | NETIF_F_GRO;
+ 		edma_netdev[i]->hw_features = NETIF_F_HW_CSUM | NETIF_F_RXCSUM |
+ 				NETIF_F_HW_VLAN_CTAG_RX
+-				| NETIF_F_SG | NETIF_F_TSO | NETIF_F_TSO6 |
+-				NETIF_F_GRO;
++				| NETIF_F_SG | NETIF_F_TSO | NETIF_F_GRO;
+ 		edma_netdev[i]->vlan_features = NETIF_F_HW_CSUM | NETIF_F_SG |
+-					   NETIF_F_TSO | NETIF_F_TSO6 |
+-					   NETIF_F_GRO;
++					   NETIF_F_TSO | NETIF_F_GRO;
+ 		edma_netdev[i]->wanted_features = NETIF_F_HW_CSUM | NETIF_F_SG |
+-					     NETIF_F_TSO | NETIF_F_TSO6 |
+-					     NETIF_F_GRO;
++					     NETIF_F_TSO | NETIF_F_GRO;
+ 
+ #ifdef CONFIG_RFS_ACCEL
+ 		edma_netdev[i]->features |=  NETIF_F_RXHASH | NETIF_F_NTUPLE;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
