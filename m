Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED597FF57B
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 21:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+j1MKGBPYAhe+SqH/5jRixMhqc9BqwZFiaNrl/UBoQ=; b=B6i252aqXhp4wN
	FOqjTBxmk0a406+6nuKNvGAR9crqCkRFzPphqmIlajs7L1shVj6qq7SNSwIaFCPXcGR+mw9HKuoV6
	QH5WhV7zqQ8fxwLNo5PO/MPVM8SgLLGJlca/6Ia2bZcnhZN8JGDzDq7TDekPyefoFIqd/67wJ4Frs
	iaAEoIWzjS7H7yy1GLo0GvREOz3ewFE+NaAKezz/KmKIllN25MHL3zOCg2AGe+qB1UbisPn9l8cHP
	b7nPQmZr5Yo7XQVgrguN0r0Cy4yFbuwQoJOEjcjtVuc0rKfyf00ZImQCGi5D9qDkaSfskVr43/5Tq
	hWpWt8+Gluc8mUu02+PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW4eV-00089m-V7; Sat, 16 Nov 2019 20:26:39 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW4bz-0003jc-BI
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 20:24:05 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 08BEE57BF0; Sat, 16 Nov 2019 21:23:51 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id C447F57BEC
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 21:23:50 +0100 (CET)
Received: (qmail 21417 invoked from network); 16 Nov 2019 21:23:50 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.27.109)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 16 Nov 2019 21:23:50 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 Nov 2019 21:23:42 +0100
Message-Id: <20191116202346.31885-14-jo@mein.io>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116202346.31885-1-jo@mein.io>
References: <20191116202346.31885-1-jo@mein.io>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_122403_565268_005A74D2 
X-CRM114-Status: UNSURE (   5.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 13/17] brcm47xx: disable Netgear WNR2000 v2
 by default
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Disable the Netgear WNR2000 v2 image by default as the device has
insufficient flash space for release build images.

Ref: https://forum.openwrt.org/t/devices-too-big-to-save-overlay/18161/72
Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 target/linux/brcm47xx/image/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/target/linux/brcm47xx/image/Makefile b/target/linux/brcm47xx/image/Makefile
index c2bf9d41d5..969d523956 100644
--- a/target/linux/brcm47xx/image/Makefile
+++ b/target/linux/brcm47xx/image/Makefile
@@ -916,6 +916,7 @@ define Device/netgear-wnr2000v2
   $(Device/netgear)
   NETGEAR_BOARD_ID := U12H114T00_NETGEAR
   NETGEAR_REGION := 2
+  DEFAULT := n
 endef
 TARGET_DEVICES += netgear-wnr2000v2
 
@@ -925,6 +926,7 @@ define Device/netgear-wnr3500l-v1-na
   $(Device/netgear)
   NETGEAR_BOARD_ID := U12H136T99_NETGEAR
   NETGEAR_REGION := 2
+  DEFAULT := n
 endef
 TARGET_DEVICES += netgear-wnr3500l-v1-na
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
