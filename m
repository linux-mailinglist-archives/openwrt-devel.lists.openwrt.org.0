Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E58F6035
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 17:06:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3OfINvdYdtlZlRtdEQXVUU8T48mM91x5janK7KiOLAQ=; b=HSpVLYyBSLWdtQ
	OLJWU6ZKekfi511dhVstC0041k+LOzdYVEM3bd1REb6XLzRG/wvrWXYmWSWjz3RE1nJ12Q0m/LDX7
	gY7EFLiWJAGZH4QZH1B+ukI6Fe4oG2qKgjFM4mzsNFcBi/b1ob1TFVnBVd9DwigZo5ZZkh7ht6EFn
	CfBrjok3HD5XXNLNYhDwFewEd202p+IwF/CM5SEXm0famb3nvV5g0KjPmKfwitr+5GXVkelGyaqcp
	zhjVOvhvGbfaeuWTbsTn5Sqa51Vq7xb3CMqgEDsqo9IKa7DMnwzCOp3N0zrUEkjzwRD0UYFJa/lhv
	RT34UCtXV+SuTncXUQlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTTGG-0007pM-AT; Sat, 09 Nov 2019 16:06:52 +0000
Received: from mout-u-204.mailbox.org ([91.198.250.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTTG0-0007gM-Mm
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 16:06:39 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 479MT14mx6zQl9W;
 Sat,  9 Nov 2019 17:06:29 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id rfzj2CtplH3i; Sat,  9 Nov 2019 17:06:26 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  9 Nov 2019 17:06:06 +0100
Message-Id: <20191109160606.26657-3-hauke@hauke-m.de>
In-Reply-To: <20191109160606.26657-1-hauke@hauke-m.de>
References: <20191109160606.26657-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_080636_907145_3F9EB1FF 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 3/3] ath10k-ct: Use ath10k-ct version 5.4
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, greearb@candelatech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This makes ath10k-ct use the version based on kernel 5.4 by default.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---

This was only tested in AP mode on a IPQ4019 device so far.

 package/kernel/ath10k-ct/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/kernel/ath10k-ct/Makefile b/package/kernel/ath10k-ct/Makefile
index b32d1923f7..4e9b0c1883 100644
--- a/package/kernel/ath10k-ct/Makefile
+++ b/package/kernel/ath10k-ct/Makefile
@@ -12,10 +12,10 @@ PKG_SOURCE_DATE:=2019-11-07
 PKG_SOURCE_VERSION:=080cd781e12dfc2a83f41c4de7a7257398943839
 PKG_MIRROR_HASH:=2a66e0188b699b4e240ae9d605f36a3bba072f33e6ce71e370b65dafcc5ad0db
 
-# Build the 5.2 ath10k-ct driver version.  Other option is "-4.19".
+# Build the 5.4 ath10k-ct driver version.  Other option is "-4.19".
 # Probably this should match as closely as
 # possible to whatever mac80211 backports version is being used.
-CT_KVER="-4.19"
+CT_KVER="-5.4"
 
 PKG_MAINTAINER:=Ben Greear <greearb@candelatech.com>
 PKG_BUILD_PARALLEL:=1
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
