Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE5FFF579
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 21:26:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eK4zZVsZFtKn8zgCWr7uJtLWuuViu2l5xCf71TggK4Q=; b=jgC00cOzYfGxCO
	kwL8Y38z5A+xukFNrUGkI5bqWv4nhSVlAQt568hQ4rpkns0NW791gNK7LyAdXY7hSxel+VtmH3wvQ
	ME9Aho+DjYaZp1WqMVYr0JcA+04vHeeitLjEDlkVv9FLBw9rF1cR9T1z85BGlFKc4c+lLOOMuFurF
	x/xd4iCKKcwlatC17wmS9DWsIjJyC+kFqb1mOcZIrI0E5jtRZMm7mfLnNXmOje+nXm16s15xLVirA
	Fa644gonItNSVbdwltatw9F3BLDko1V86+lrkGf2KB8uIuv3UXaxOyLyW580k1wB2ZK38TbOk3djh
	boRDhvXh6lkDs1ChwDog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW4eC-0007hP-CV; Sat, 16 Nov 2019 20:26:20 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW4bx-0003iA-Vs
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 20:24:03 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 1F9ED57BE6; Sat, 16 Nov 2019 21:23:50 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id DB3E857BE3
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 21:23:49 +0100 (CET)
Received: (qmail 21367 invoked from network); 16 Nov 2019 21:23:49 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.27.109)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 16 Nov 2019 21:23:49 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 Nov 2019 21:23:39 +0100
Message-Id: <20191116202346.31885-11-jo@mein.io>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116202346.31885-1-jo@mein.io>
References: <20191116202346.31885-1-jo@mein.io>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_122402_209488_62E5C3D4 
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
Subject: [OpenWrt-Devel] [PATCH 10/17] ar71xx: disable TP-Link TL-WA850RE by
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

Disable the TP-Link TL-WA850RE image by default as the device has
insufficient flash space for release build images.

Ref: https://forum.openwrt.org/t/devices-too-big-to-save-overlay/18161/30
Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 target/linux/ar71xx/image/tiny-tp-link.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ar71xx/image/tiny-tp-link.mk b/target/linux/ar71xx/image/tiny-tp-link.mk
index db5f735498..1c849cff32 100644
--- a/target/linux/ar71xx/image/tiny-tp-link.mk
+++ b/target/linux/ar71xx/image/tiny-tp-link.mk
@@ -272,6 +272,7 @@ define Device/tl-wa860re-v1
   BOARDNAME := TL-WA860RE
   DEVICE_PROFILE := TLWA860
   TPLINK_HWID := 0x08600001
+  DEFAULT := n
 endef
 TARGET_DEVICES += tl-wa860re-v1
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
