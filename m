Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E090613AD8
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 17:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tnfl1RvUgYuUODg6Vp/9IHsLQieO2WZRrxhSB6Pb1Xo=; b=PY57nqVbVH853B
	OhteZZ5M+giAmnYCGMyjmrVqqj5YphGjIacu0D/KulkB6r9rrMAuGVAWdo5qG3pelmadS0t4UXdB6
	0JsdGnpJO/jK2ZCFNVS0K4Qm8W/FNmhZEUnm5XUjWY9GhtH/ahOzUDNCggekGCgieeee0CCvGTIaJ
	49qaQNfeQQOwPg1lpeRvidfhHHBBQS3LICxKL+ynxckq9wqnQux+j8l/WJqRYrsHCgmCPtOrpvTyP
	HRR35ZWlg+m/qkLfJ65UcpYyN7mXRLlC1BClWgoo6ApAc0skCOkoYXkHm9YyAF2hF5T1YBO8895/r
	kSY9ghLJ4tS8hWi60qYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMwOw-0005iY-2J; Sat, 04 May 2019 15:16:34 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMwOo-0005gk-OX
 for openwrt-devel@lists.openwrt.org; Sat, 04 May 2019 15:16:28 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 78153A013E;
 Sat,  4 May 2019 17:16:21 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id 9-pHdJvPszPs; Sat,  4 May 2019 17:16:15 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  4 May 2019 17:16:02 +0200
Message-Id: <20190504151602.7194-6-hauke@hauke-m.de>
In-Reply-To: <20190504151602.7194-1-hauke@hauke-m.de>
References: <20190504151602.7194-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_081626_953572_EF7AEC11 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 6/6] hostapd: Remove ROBO switch support
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The driver was removed from OpenWrt a long time ago.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/network/services/hostapd/Makefile | 2 --
 1 file changed, 2 deletions(-)

diff --git a/package/network/services/hostapd/Makefile b/package/network/services/hostapd/Makefile
index 5f0e548742..6e760babb2 100644
--- a/package/network/services/hostapd/Makefile
+++ b/package/network/services/hostapd/Makefile
@@ -129,8 +129,6 @@ ifneq ($(LOCAL_TYPE),hostapd)
   ifdef CONFIG_WPA_RFKILL_SUPPORT
     DRIVER_MAKEOPTS += NEED_RFKILL=y
   endif
-  DRIVER_MAKEOPTS += \
-	CONFIG_DRIVER_ROBOSWITCH=$(CONFIG_PACKAGE_kmod-switch)
 endif
 
 ifdef CONFIG_USE_GLIBC
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
