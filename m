Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0B51348A
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 22:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+WW2/g3o1dTB2/MRHKawLm2q5VrfxG0AGBBbHmnWvJo=; b=ltEUSxlTa5FUvF
	wT2543ud5RTn0sEDpcOHEf4kX8ByaqyqFdmEnBAxEeqacQoAXOoev0Z2fRAQLD8vgE0pN63g+XQPj
	Vp8XahUpjL8JM9e/CUkNJKLUwfkxOY8gTurDYh4YInNmSk6ujszekOsSz1NMQW8j7UGECr7Z2ZAVT
	IZaofKDr8HyC9XSdOxcAROAPixRfYbKY1S3oouPAK3L6uiLOPuLPLm0MMek2xmwZgaRv4GkxDBmkA
	qOlbxIm697Fd/Rr0WTyVjcUgcXApRz16j3hxwsx/7vENAZOHnwqApT+uxnc2xePLUtnceGVsAdBSa
	7nIGPqpTgVIJ1RjnFmgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfBA-0007zY-Af; Fri, 03 May 2019 20:53:12 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfAh-0007Xm-7c
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 20:52:46 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 61F374C8AB;
 Fri,  3 May 2019 22:52:40 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id n5wrWblfJpfi; Fri,  3 May 2019 22:52:29 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 22:52:06 +0200
Message-Id: <20190503205207.7675-10-hauke@hauke-m.de>
In-Reply-To: <20190503205207.7675-1-hauke@hauke-m.de>
References: <20190503205207.7675-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_135243_772723_9781FFF6 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 09/10] cns3xxx: Activate
 CONFIG_CPU_SW_DOMAIN_PAN
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is already activated for all other ARM targets

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/cns3xxx/config-4.14 | 1 -
 target/linux/cns3xxx/config-4.19 | 1 -
 2 files changed, 2 deletions(-)

diff --git a/target/linux/cns3xxx/config-4.14 b/target/linux/cns3xxx/config-4.14
index a0c65fa5f0..54f7576ea5 100644
--- a/target/linux/cns3xxx/config-4.14
+++ b/target/linux/cns3xxx/config-4.14
@@ -71,7 +71,6 @@ CONFIG_CPU_HAS_ASID=y
 # CONFIG_CPU_ICACHE_DISABLE is not set
 CONFIG_CPU_PABRT_V6=y
 CONFIG_CPU_RMAP=y
-# CONFIG_CPU_SW_DOMAIN_PAN is not set
 CONFIG_CPU_THUMB_CAPABLE=y
 CONFIG_CPU_TLB_V6=y
 CONFIG_CPU_V6K=y
diff --git a/target/linux/cns3xxx/config-4.19 b/target/linux/cns3xxx/config-4.19
index 63fedc1bea..b92b1e2aef 100644
--- a/target/linux/cns3xxx/config-4.19
+++ b/target/linux/cns3xxx/config-4.19
@@ -67,7 +67,6 @@ CONFIG_CPU_HAS_ASID=y
 # CONFIG_CPU_ICACHE_DISABLE is not set
 CONFIG_CPU_PABRT_V6=y
 CONFIG_CPU_RMAP=y
-# CONFIG_CPU_SW_DOMAIN_PAN is not set
 CONFIG_CPU_THUMB_CAPABLE=y
 CONFIG_CPU_TLB_V6=y
 CONFIG_CPU_V6K=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
