Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 592221D214B
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 23:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+o2hT0D/MFp1g+xYhr1Sbj/Z0wQ1/UozZHTkghnFnrA=; b=kefMoImhOkscku
	L/l2CkGmN3KHeTwCqUmdvmGbI3GpzYufSR2e25PzoSiRLRe1jt7GMrq/8fLBDnrGHSuhK7c0vfOF1
	XAftdspB22dQeFxAd9VhWn0J1v/fECgLlNx0HprP/RoodR0OK900Yu0qTaWEZzvq/EPkb71gbSlsQ
	yl1Gc1etWxXBIXjxs70AmOm3m6+JWhEMa242bxvqttp+6wxJ8/OSCF95BHJU7XNDvi5PQGanhK8ud
	P6YLLINnpKhmLx9oLGVfXKbPa6UgHXToY2JbDH0QskEv+nU0ZGinl50TPrPsoQnznNhDnHtJQrrsl
	Bgeo+y3mtLxP/E1g6NwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYz9T-00021L-Do; Wed, 13 May 2020 21:42:55 +0000
Received: from mout-p-102.mailbox.org ([80.241.56.152])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYz9N-00020v-4z
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 21:42:51 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 49Mp794k3DzKmPs;
 Wed, 13 May 2020 23:42:45 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id Tr5ANVo0O01f; Wed, 13 May 2020 23:42:42 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 May 2020 23:42:15 +0200
Message-Id: <20200513214215.4808-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 697C91758
X-Rspamd-Score: -0.64 / 15.00 / 15.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_144249_360150_3C83CCCF 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.56.152 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: Fix ubnt_edgeswitch-8xp
 DEVICE_PACKAGES
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Tobias Schramm <tobleminer@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

switch-bcm53xx-mdio does not exists, use kmod-switch-bcm53xx-mdio
instead.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
Cc: Tobias Schramm <tobleminer@gmail.com>
---
 target/linux/ath79/image/generic-ubnt.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index d056ab6783cc..de2c18becd3d 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -150,7 +150,7 @@ TARGET_DEVICES += ubnt_edgeswitch-5xp
 define Device/ubnt_edgeswitch-8xp
   $(Device/ubnt-sw)
   DEVICE_MODEL := EdgeSwitch 8XP
-  DEVICE_PACKAGES += switch-bcm53xx-mdio
+  DEVICE_PACKAGES += kmod-switch-bcm53xx-mdio
 endef
 TARGET_DEVICES += ubnt_edgeswitch-8xp
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
