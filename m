Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF03AFF578
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 21:26:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3QMJlMkdBFicM80GUxzCT/52lqXP9jpYWmfv8aHZEo=; b=e+zo+C5A9PddHO
	vTKHzpgonMBmIVhN4+rDU7JRihaCNlKsvTVYvHVpirTXpCcjuGWavKwNmLZsm8EYq78JNS9z6Ebh1
	xr3UNulyR3avJUPM8Mx5ztCHej2QGfWUzTHaoxBNOR7pTXpTlO8+Kd4VOFUVn7/v4yfVrbmUK2N5v
	rDbfxxLp76Ad715B4t+QSI+2W54x5Zw2213lIgAuWdVPJ4f67nV4Vmx7hZpD8mSYa+fj09v593RQY
	FdXG9zHD3/TwrHjOK9dMlRi+2yJcUmGiQodkqKcQ2lnCxxGPPq0t9RlVbUi3uYOEorBrKWCkmYd4O
	B5/J5hmFnx5LL5W4DPEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW4e0-0007R4-F0; Sat, 16 Nov 2019 20:26:08 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW4bx-0003iB-Vr
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 20:24:03 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 78D8557BE9; Sat, 16 Nov 2019 21:23:50 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 415BF57BE7
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 21:23:50 +0100 (CET)
Received: (qmail 21381 invoked from network); 16 Nov 2019 21:23:50 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.27.109)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 16 Nov 2019 21:23:50 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 Nov 2019 21:23:40 +0100
Message-Id: <20191116202346.31885-12-jo@mein.io>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116202346.31885-1-jo@mein.io>
References: <20191116202346.31885-1-jo@mein.io>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_122402_188607_1CE5CE28 
X-CRM114-Status: UNSURE (   6.46  )
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
Subject: [OpenWrt-Devel] [PATCH 11/17] ramips: disable TP-Link TL-WA750RE by
 default
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

Disable the TP-Link TL-WA750RE image by default as the device has
insufficient flash space for release build images.

Ref: https://forum.openwrt.org/t/devices-too-big-to-save-overlay/18161/30
Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 target/linux/ar71xx/image/tiny-tp-link.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ar71xx/image/tiny-tp-link.mk b/target/linux/ar71xx/image/tiny-tp-link.mk
index 1c849cff32..8354823d3e 100644
--- a/target/linux/ar71xx/image/tiny-tp-link.mk
+++ b/target/linux/ar71xx/image/tiny-tp-link.mk
@@ -164,6 +164,7 @@ define Device/tl-wa750re-v1
   BOARDNAME := TL-WA750RE
   DEVICE_PROFILE := TLWA750
   TPLINK_HWID := 0x07500001
+  DEFAULT := n
 endef
 TARGET_DEVICES += tl-wa750re-v1
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
