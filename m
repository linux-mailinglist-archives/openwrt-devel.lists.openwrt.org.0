Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155D818D9D
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 18:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ut0Df/7NGBvS1OMIH8Af2QafTvvWz3oIE2mQ/4G50K4=; b=Q5AvXz5y7yu6Rl
	gRmJM7PHwBcRZ5JHKnyU5oIB2fpJB3GDuUTu+r41pKIp7NPb4AEcFjwutWqV7WfY8iasuTyjADQHc
	jdhA70wHgYx+Ct3Govg3e5/GYi9iIIALSpM8l59+sGBdGF8x01noS3mx/WvMwfL5SqscpHv5PxnlE
	xjb/+xwuMgBqQDgc77gZbcYzdJD4GUZQfZlyWOxC6jImrSbv8mGtfx/lDNAjNP1L2RiB3J86ftwNw
	7XsCVt71DfJGtBNHAQd8+w2rh3vzhoIC71S43Fbf8yGFBhHpBwnXElrlWiohu8J90fvW+AQE50buT
	dBg37+fpR8uhDeyBbVBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOlXL-0001l2-9v; Thu, 09 May 2019 16:04:47 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOlXD-0001kL-5U
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 16:04:41 +0000
Received: from localhost.localdomain (ip-109-40-131-79.web.vodafone.de
 [109.40.131.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 20C7E1E3DC;
 Thu,  9 May 2019 18:04:34 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 May 2019 18:04:06 +0200
Message-Id: <20190509160406.8047-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_090439_351702_4984089A 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ramips: fix R6120 factory image
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Andreas Ziegler <dev@andreas-ziegler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The factory firmware omits the JFFS2 end-marker while flashing via
web-interface. Add a 64k padding after the marker fixes this problem.

When the end-marker is not present, OpenWRT won't save the overlayfs
after initial flash.

Reported-by: Andreas Ziegler <dev@andreas-ziegler.de>
Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ramips/image/mt76x8.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index 571ddf3d51..ba3354a8a6 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -135,7 +135,7 @@ define Device/netgear_r6120
   IMAGES += factory.img
   IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE)| append-rootfs | pad-rootfs
   IMAGE/sysupgrade.bin := $$(IMAGE/default) | append-metadata | check-size $$$$(IMAGE_SIZE)
-  IMAGE/factory.img := pad-extra 576k | $$(IMAGE/default) | \
+  IMAGE/factory.img := pad-extra 576k | $$(IMAGE/default) | pad-to $$$$(BLOCKSIZE) | \
 	sercom-footer | pad-to 128 | zip R6120.bin | sercom-seal
 endef
 TARGET_DEVICES += netgear_r6120
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
