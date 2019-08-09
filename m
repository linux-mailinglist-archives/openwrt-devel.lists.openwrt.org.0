Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C68A88183
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 19:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/IjppNYoT0qx3nRpuD9AQyBBdScKF8FzDe6tIFYrct4=; b=dSniDvcDlwELg5
	/1mIbtgpVLF1qxEwZaPkHpzYRiXsblgvBo8SC6GQh5T74nMG7YSS3zcZ5U3dGNomMclWdaz0hWqDn
	M3WaXOlzMr/1IVkXjayiFbj/dPhs1KufGe75vRpMQs7cTZlEv9UU7Rbd70dZk7ywEjwTzBt5ThV2S
	h6hlqSKpCXRyUWGjGITz6avkythIs4WHiy3tzIsOO5SaPsNVeTq2tXnizQ3acLW3xnkhv1JIMFo2e
	ha/XSzIcNs1CjX3lVE/H6v9seo0WDBCwBfiYREpRV2tJoozb6Eaf4xKTtSPAWY4yT3pQmMwcqVokq
	tAULvI5SWS5KrRwtG4dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8xB-0001XA-BH; Fri, 09 Aug 2019 17:45:25 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8x2-0001Wk-MO
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 17:45:19 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 7BC74A12D4;
 Fri,  9 Aug 2019 19:45:12 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id 7lnFAdAI_6DK; Fri,  9 Aug 2019 19:45:02 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  9 Aug 2019 19:44:48 +0200
Message-Id: <20190809174448.22566-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_104516_886035_A906BFD0 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] hostapd: Allow CONFIG_IEEE80211W for all but mini
 variant
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This commit will activate CONFIG_IEEE80211W for all, but the mini
variant when at least one driver supports it. This will add ieee80211w
support for the mesh variant for example.

Fixes: FS#2397
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/network/services/hostapd/Makefile | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index be2a9069c7..cca3d72f8d 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -7,7 +7,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=hostapd
-PKG_RELEASE:=6
+PKG_RELEASE:=7
 
 PKG_SOURCE_URL:=http://w1.fi/hostap.git
 PKG_SOURCE_PROTO:=git
@@ -89,11 +89,7 @@ DRIVER_MAKEOPTS= \
 space :=
 space +=
 
-ifeq ($(LOCAL_VARIANT),full)
-  DRIVER_MAKEOPTS += CONFIG_IEEE80211W=$(CONFIG_DRIVER_11W_SUPPORT)
-endif
-
-ifeq ($(LOCAL_VARIANT),basic)
+ifneq ($(LOCAL_VARIANT),mini)
   DRIVER_MAKEOPTS += CONFIG_IEEE80211W=$(CONFIG_DRIVER_11W_SUPPORT)
 endif
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
