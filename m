Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D89BFF148E
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 12:06:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5OX1fpeG1a0Q5VpseyxFGPzoNQYBGixbXZjjH0toCc=; b=CQbD0vQnv78BMP
	3XxU8r6t+BvcgY0j1ia2CZVmbx8HJv1Ny2LTb0O40bdpdGi/OFvgwQ4+25MLakelEFaWuSE97Zrb4
	Fm6w+S9aS7GaHkUH9AWtTjWsUk8wFfLgHMkLRktY5wSG/loP4g91W0x0wfd/JLy6LOTL8TDp4ZEeA
	oqS3cgmFSOd1hkLOtZH41jlxsUYb5lA6Uqudo24d2B0Jv3pVDWUSlO3QGGrq8yVNTfWkNiKu6+NKX
	dob+f1S+gRKiX/oI0yCxV/zPXzBhRZSeVpzjqGtfgBKRHSnYjvBL/5Tbue3/O7Pfapx/6V3r/f/Z2
	cFhSK+CrfYhTqHzkefog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJ8i-00027Q-1k; Wed, 06 Nov 2019 11:06:16 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJ7v-0001Qy-R5
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 11:05:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id AFA806B26;
 Wed,  6 Nov 2019 12:05:23 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id fb08d2c4;
 Wed, 6 Nov 2019 12:05:13 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 12:05:07 +0100
Message-Id: <20191106110514.20413-3-ynezz@true.cz>
In-Reply-To: <20191106110514.20413-1-ynezz@true.cz>
References: <20191106110514.20413-1-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_030528_047944_3207D475 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07 02/14] hostapd: Allow
 CONFIG_IEEE80211W for all but mini variant
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Hauke Mehrtens <hauke@hauke-m.de>

This commit will activate CONFIG_IEEE80211W for all, but the mini
variant when at least one driver supports it. This will add ieee80211w
support for the mesh variant for example.

Fixes: FS#2397
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
(cherry picked from commit 1d4df52c215874a5238ddef7bccf0139f7758c24)
---
 package/network/services/hostapd/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index 233ef389ae50..d0866f670c0b 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -7,7 +7,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=hostapd
-PKG_RELEASE:=9
+PKG_RELEASE:=7
 
 PKG_SOURCE_URL:=http://w1.fi/hostap.git
 PKG_SOURCE_PROTO:=git

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
