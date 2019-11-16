Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56720FF577
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 21:25:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gw+/oqRxluM6e/OFtQGpDd5JxPTBMqzI0ZFLNkwxs5U=; b=dEShyl6mRHWna7
	T/W2BsGawTkYvub4mKUxfsdVxNmYFVPtjCnzJtlK/9qoY3MS3I4doKmsU0XprSRDlx9oJ6TlIxSuw
	/1rBzpZOQCJML5hBq3n4Ztr0y17bPi1Y5jX/7vkOFWg/fgAx19Z0NUmZUx5AzQx/IfHGCCZyz996e
	UM4YqXY8DsAQSzCardK7aOIKGtU991OA6TE6lfSJYw9cq6eO61FyW3Y+GEYiDBrYfRHn/LzQDWZoN
	2FTQ2Hk9cBzOOJwZNs3M8z6KdAYOWZ08iiHUluvc7c3wMaHBeE9JB/IO1r5pcZ2RRTW1r3sE8g9CI
	W7aknZ552wArHRTkpc1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW4do-0007BS-1Y; Sat, 16 Nov 2019 20:25:56 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW4bw-0003fs-1O
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 20:24:01 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id DDAB057BE4; Sat, 16 Nov 2019 21:23:49 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id A5B6057BE0
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 21:23:49 +0100 (CET)
Received: (qmail 21357 invoked from network); 16 Nov 2019 21:23:49 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.27.109)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 16 Nov 2019 21:23:49 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 Nov 2019 21:23:38 +0100
Message-Id: <20191116202346.31885-10-jo@mein.io>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116202346.31885-1-jo@mein.io>
References: <20191116202346.31885-1-jo@mein.io>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_122400_254474_653F44D0 
X-CRM114-Status: UNSURE (   6.37  )
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
Subject: [OpenWrt-Devel] [PATCH 09/17] ramips: disable TP-Link TL-WR840N v5
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

Disable the TP-Link TL-WR840N v5 image by default as the device has
insufficient flash space for release build images.

Ref: https://forum.openwrt.org/t/devices-too-big-to-save-overlay/18161/29
Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 target/linux/ramips/image/mt76x8.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index 2280a1a618..054935e595 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -243,6 +243,7 @@ define Device/tl-wr840n-v5
   KERNEL_INITRAMFS := $(KERNEL_DTB) | tplink-v2-header -e
   IMAGE/sysupgrade.bin := tplink-v2-image -s -e | append-metadata | \
 	check-size $$$$(IMAGE_SIZE)
+  DEFAULT := n
 endef
 TARGET_DEVICES += tl-wr840n-v5
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
