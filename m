Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6935AFF575
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 21:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKTFCzL1wMSi1uk3IEQi8/BZvoRWWTK3QTss9Ln+a1Q=; b=olOWLD4/1K21zp
	B2n6+reNzV7SpM73bMF2BO/Sei7D3gEvKXKhk/DcvJ96YSKf6GHaqB5+gnN7XHpE0DNIg/JO+qgxU
	mtTUU4oz5pIZITaLfsNRCo6NWw9DBIxfsJcZr00OfGSlgyv15W6rg6+kksDLIzBHg6hasnXBXVclw
	PJQ0ioNOza0Y301DBgx4wgadRHf0IbLVYLe1ZygbXRbNYJ+G8Ht5ZLZL7jC89WAFDNGMrQ1Kr/qPz
	GWJNu3Wyaue9DtRIXBJriVpdcBVAp+CREMNIalnfHBMHAV7VOSw6URuWerZJy/9ka8FWQLv/cMUab
	Wv1jYBVTDLjf60Vd7W9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW4dS-0006f3-Va; Sat, 16 Nov 2019 20:25:34 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW4bv-0003fc-OY
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 20:24:01 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id A795B57BE1; Sat, 16 Nov 2019 21:23:49 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 6FB3357BDE
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 21:23:49 +0100 (CET)
Received: (qmail 21347 invoked from network); 16 Nov 2019 21:23:49 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.27.109)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 16 Nov 2019 21:23:49 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 Nov 2019 21:23:37 +0100
Message-Id: <20191116202346.31885-9-jo@mein.io>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116202346.31885-1-jo@mein.io>
References: <20191116202346.31885-1-jo@mein.io>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_122359_966173_23E80AD6 
X-CRM114-Status: UNSURE (   6.26  )
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
Subject: [OpenWrt-Devel] [PATCH 08/17] ramips: disable Sitecom WL-351 by
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

Disable the Sitecom WL-351 image by default as the device has
insufficient flash space for release build images.

Ref: https://forum.openwrt.org/t/devices-too-big-to-save-overlay/18161/24
Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 target/linux/ramips/image/rt305x.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ramips/image/rt305x.mk b/target/linux/ramips/image/rt305x.mk
index 3e2977cb96..de3d788563 100644
--- a/target/linux/ramips/image/rt305x.mk
+++ b/target/linux/ramips/image/rt305x.mk
@@ -817,6 +817,7 @@ define Device/wl-351
   IMAGE_SIZE := $(ralink_default_fw_size_4M)
   DEVICE_TITLE := Sitecom WL-351 v1
   DEVICE_PACKAGES := kmod-switch-rtl8366rb kmod-swconfig swconfig
+  DEFAULT := n
 endef
 TARGET_DEVICES += wl-351
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
