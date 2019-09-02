Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6C3A5D21
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Sep 2019 22:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xwzuclnBKBrVlI0NnK1WyCTEq73T11zKouzQRTreIAo=; b=NKFghgszuPPEy4
	sX2VfM61Ekc6X3A8QlCR4zwmZ5XtrCSLNgHxg5gOLv3MLaQze01i/DhE3XLozWCV1RS9KasaHdAbn
	N3DkABEgRPFSDGARk+0lnrLNPCFyXkdk+BGCkIv3ayYVgpzq+wMXTWfyuxVhyAP0yyYq7sOIwX2l1
	WdZISIGSgkViKV/l3mc5iCG2zHV+Kt5E8evRr1zlHc77msqHu8XF3ItXeiD3U6nVkDxry0v+eEVb/
	3YqT10ET9Ee0dYjjMZNENs8c/j4QZCJI+hu1ISJSZLO7d4s1k7sVEp+2O0ZqNY6rabSSwV7vI2ZEQ
	dsjamEC6lZ5JYC1W/hfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4t0l-0007PN-6w; Mon, 02 Sep 2019 20:33:15 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4t0a-0007Oz-N8
 for openwrt-devel@lists.openwrt.org; Mon, 02 Sep 2019 20:33:06 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 51A34A58B3;
 Mon,  2 Sep 2019 22:33:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id JdPzbcdaU0Pp; Mon,  2 Sep 2019 22:32:56 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  2 Sep 2019 22:32:44 +0200
Message-Id: <20190902203244.3104-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_133304_908787_E4D72331 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] fstools: mkdev: Avoid out of bounds read
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

readlink() truncates and does not null terminate the string when more
bytes would be written than available. Just increase the char array by
one and assume that there is a problem when all bytes are needed.

Coverity: #1330087, #1329991
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 libblkid-tiny/mkdev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/libblkid-tiny/mkdev.c b/libblkid-tiny/mkdev.c
index a35722b..e8ce841 100644
--- a/libblkid-tiny/mkdev.c
+++ b/libblkid-tiny/mkdev.c
@@ -31,7 +31,7 @@
 
 #include <syslog.h>
 
-static char buf[PATH_MAX];
+static char buf[PATH_MAX + 1];
 static char buf2[PATH_MAX];
 static unsigned int mode = 0600;
 
@@ -66,7 +66,7 @@ static void find_devs(bool block)
 
 		strcpy(path, dp->d_name);
 		len = readlink(buf2, buf, sizeof(buf));
-		if (len <= 0)
+		if (len <= 0 || len == sizeof(buf))
 			continue;
 
 		buf[len] = 0;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
