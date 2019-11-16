Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF711FF580
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 21:27:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UJs9ssti/DERAWl0QUw9BF305O55HyWf+DfdNB6ICA=; b=Y2qHFraxQgXOGP
	Uzml5dGxtoQcOer3cOTRPkWUGP/cD1LCMdKvuRPvSozXMAvO2UGfLLp5024tquuNVS04sSWuiWJuV
	gmS26Q5miPRFcDWV5tX7aLli/+XK3SOfKIILXyjXZ4026jbwlBA2tziIghYuAEqb4vqB1cfdT++75
	5F0nmvAUDdeke/LRqmG0XvZsYtZcnewYHOBCqYHT60XTwhRbqurBrYoJvdllKZrkbAnx9LkKyWYyg
	D4dmyaEU2qftZ2kK5RUtcEmBJSQo4QN8pKIYmG2imOuJRvIWDRfc/JEsX991jiOh2uB/LP6wmZdrJ
	61PubzhJV1a9OZBysdFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW4ez-0000TH-7H; Sat, 16 Nov 2019 20:27:09 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW4c3-0003nl-1I
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 20:24:09 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id A8A8657BF9; Sat, 16 Nov 2019 21:23:51 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 7210257BF6
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 21:23:51 +0100 (CET)
Received: (qmail 21454 invoked from network); 16 Nov 2019 21:23:51 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.27.109)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 16 Nov 2019 21:23:51 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 Nov 2019 21:23:45 +0100
Message-Id: <20191116202346.31885-17-jo@mein.io>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116202346.31885-1-jo@mein.io>
References: <20191116202346.31885-1-jo@mein.io>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_122407_274144_70C74C5D 
X-CRM114-Status: UNSURE (   6.49  )
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
Subject: [OpenWrt-Devel] [PATCH 16/17] ramips: disable WR512-3GN 4MB variant
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

Disable the WR512-3GN 4MB image by default as the device has
insufficient flash space for release build images.

Ref: https://forum.openwrt.org/t/devices-too-big-to-save-overlay/18161/72
Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 target/linux/ramips/image/rt305x.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ramips/image/rt305x.mk b/target/linux/ramips/image/rt305x.mk
index cb2fe628bc..9e599b4125 100644
--- a/target/linux/ramips/image/rt305x.mk
+++ b/target/linux/ramips/image/rt305x.mk
@@ -838,6 +838,7 @@ define Device/wr512-3gn-4M
   DTS := WR512-3GN-4M
   IMAGE_SIZE := $(ralink_default_fw_size_4M)
   DEVICE_TITLE := WR512-3GN (4M)
+  DEFAULT := n
 endef
 TARGET_DEVICES += wr512-3gn-4M
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
