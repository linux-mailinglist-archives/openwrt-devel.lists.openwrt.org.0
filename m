Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C564FF573
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 21:25:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NM18icJovD6cuAFFRVHNiNXjWIFoaJqeC2+KNG7yxDk=; b=D12paaSmFt6uZP
	kRI5X9ExcRu/ed0IRXAcbXXGI7Fq0UdgBy6RslRCvoDBAiaD0wcHea5ZQVv6X4YSAU0DLvXpF1OQg
	d5/hIxIfeqUMEiPEZSUqRHINkyaQiFxm0+gEvgfbfj+BU4EzLvAcdfXqdS9kjyYRYAmjFBw8FQeAG
	mPASfbROSjBCkvWyS8/gbubL9XH2yVf4D5R8kWzwo0+4SgvLazNbfIImJyOdWiBpbPXsoluvF3445
	3P97F0LqyqHABzp/VtmYnZaugSwcM5gAUSECX0jIKbK0MhYyvXr0jnFXK4JaQwPWcmwKcvmbpYexS
	r0AeQdAypiUdP3/j9nyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW4d9-0005hr-FD; Sat, 16 Nov 2019 20:25:15 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW4bs-0003dO-Om
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 20:23:58 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 0807B57BD8; Sat, 16 Nov 2019 21:23:49 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id C533457BD3
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 21:23:48 +0100 (CET)
Received: (qmail 21317 invoked from network); 16 Nov 2019 21:23:48 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.27.109)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 16 Nov 2019 21:23:48 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 Nov 2019 21:23:34 +0100
Message-Id: <20191116202346.31885-6-jo@mein.io>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116202346.31885-1-jo@mein.io>
References: <20191116202346.31885-1-jo@mein.io>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_122356_985723_BA51CDC7 
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
Subject: [OpenWrt-Devel] [PATCH 05/17] ar71xx: disable Netgear WNR2000v4 by
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

Disable the Netgear WNR2000v4 image by default as the device has
insufficient flash space for release build images.

Ref: https://forum.openwrt.org/t/devices-too-big-to-save-overlay/18161/11
Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 target/linux/ar71xx/image/tiny-legacy-devices.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ar71xx/image/tiny-legacy-devices.mk b/target/linux/ar71xx/image/tiny-legacy-devices.mk
index 32912f79d6..4703e08541 100644
--- a/target/linux/ar71xx/image/tiny-legacy-devices.mk
+++ b/target/linux/ar71xx/image/tiny-legacy-devices.mk
@@ -105,6 +105,7 @@ LEGACY_DEVICES += WNR2000V3
 define LegacyDevice/WNR2000V4
   DEVICE_TITLE := NETGEAR WNR2000V4
   DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  DEFAULT := n
 endef
 LEGACY_DEVICES += WNR2000V4
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
