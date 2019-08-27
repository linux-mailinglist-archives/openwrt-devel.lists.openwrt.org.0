Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF81C9F5B6
	for <lists+openwrt-devel@lfdr.de>; Tue, 27 Aug 2019 23:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kyegEle3ZiH8xEo4y+9LCrkQM8m028eexT+BDaC/Yig=; b=eOR7izMNiNYww4
	r2m4YPXkLW8R0JIA3JZSNdwcybYyB9hLjJAJHJCNcz7s+7Qxof1JXrB3UNJpnhF52QRa0HZmIEt4t
	cLfwV7m5aQkQxKX4iaDSoEVKCf2SEfGQEmGD9f+UIqJR8ylWGQl05vk7Hsb6I7dMgjTtK7NKeCiIE
	amxI79oagMeStNzwFPR9yBGJDO0hHuv48pTxTuaRsR/43vkdwP53w8oq/+zz0L4PCpRQ1qsT5ueF+
	5MeMvkH0ezsewS3UKiF12YEkSocXtDIpfXddwkGjrJqnM5IXyhx9htt1XJstKD1ApDnZEMgScIlSn
	xpTqogyCksqTxKYMnm4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2jTT-00053z-Md; Tue, 27 Aug 2019 21:57:59 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2jTA-000535-2w
 for openwrt-devel@lists.openwrt.org; Tue, 27 Aug 2019 21:57:41 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F0D0700D4FFC72EB65BD8B7.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0d:700:d4ff:c72e:b65b:d8b7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 85C591FAF8;
 Tue, 27 Aug 2019 23:57:31 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 27 Aug 2019 23:57:11 +0200
Message-Id: <20190827215711.14113-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_145740_277459_C8B3F6F5 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: add factory image for NETGEAR R6220
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
Cc: dev@andreas-ziegler.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds an easy-installation factory image for the NETGEAR R6220
router. The factory image can either be flashed via the vendor Web-UI or
the bootloader using nmrpflash.

Tested with NETGEAR V1.1.0.86 firmware.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ramips/image/mt7621.mk | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 5dc8efe7c5..a00e6280c7 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -397,7 +397,12 @@ define Device/netgear_r6220
   KERNEL_SIZE := 4096k
   IMAGE_SIZE := 28672k
   UBINIZE_OPTS := -E 5
-  IMAGES += kernel.bin rootfs.bin
+  SERCOMM_HWID := AYA
+  SERCOMM_HWVER := A001
+  SERCOMM_SWVER := 0x0086
+  IMAGES += factory.img kernel.bin rootfs.bin
+  IMAGE/factory.img := pad-extra 2048k | append-kernel | pad-to 6144k | append-ubi | \
+	pad-to $$$$(BLOCKSIZE) | sercom-footer | pad-to 128 | zip R6220.bin | sercom-seal
   IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
   IMAGE/kernel.bin := append-kernel
   IMAGE/rootfs.bin := append-ubi | check-size $$$$(IMAGE_SIZE)
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
