Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E4BEC9FA
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 21:55:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPjSmRwonousC9E/Wn8Bkx3AgQcBQQlxg55in5mYSUQ=; b=epE5UK21o0KCRu
	WMPMyiOnIh2v5CDTjIJuJPIQ+8Ar6VCYoVlO9oMt0iivHAAlN5sEfgoYb/qwNfWAWnm3AIqsVPmb9
	anzcR4/VUtnBkRTJQft7++zyvAUANbJ93nwiAPKmwkx41y6LXmg3NyW8MJqyxS6wYwARwJssK9XxK
	WZEVVB2YFGU1BUmYpEPFU5ml43MCGXZSHesGyx8tiJW0ySxrRSW5trDXhy2be/9Nxp4P+DZPm81DY
	roA7714nPVSf13HltcejAC9OvddcLJswveZJoBJhb39RgF+M7nVUuijejGON+0WG/dRk+MVNHKZlB
	3qiOMd5zo4GJ6TfYmqAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQdxE-0005qZ-SU; Fri, 01 Nov 2019 20:55:32 +0000
Received: from mout-u-107.mailbox.org ([91.198.250.252])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQdwU-0003uW-0l
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 20:54:49 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 474ZF82FhyzKnht;
 Fri,  1 Nov 2019 21:54:36 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id kJjalV7-Jv5q; Fri,  1 Nov 2019 21:54:33 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 21:54:14 +0100
Message-Id: <20191101205416.17599-2-hauke@hauke-m.de>
In-Reply-To: <20191101205416.17599-1-hauke@hauke-m.de>
References: <20191101205416.17599-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_135446_227382_00825A4C 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/4] mtd: Activate LTO compile option
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

This decreases the size of the mtd application by 25% on MIPS BE.

old:
20,597 /sbin/mtd

new:
16,421 /sbin/mtd

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/system/mtd/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/package/system/mtd/Makefile b/package/system/mtd/Makefile
index 2347b8b723..166bb33281 100644
--- a/package/system/mtd/Makefile
+++ b/package/system/mtd/Makefile
@@ -36,7 +36,8 @@ endef
 target=$(firstword $(subst -, ,$(BOARD)))
 
 MAKE_FLAGS += TARGET="$(target)"
-TARGET_CFLAGS := $(TARGET_CFLAGS) -Dtarget_$(target)=1 -Wall
+TARGET_CFLAGS += -Dtarget_$(target)=1 -Wall -flto
+TARGET_LDFLAGS += -flto=jobserver
 
 ifdef CONFIG_MTD_REDBOOT_PARTS
   MAKE_FLAGS += FIS_SUPPORT=1
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
