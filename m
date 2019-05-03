Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C6D1348B
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 22:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHVK9ASRWABw1G9v1WV+eswRs5r0Xm1oDOMyr0g5+DE=; b=cOb8LXHa617Ng+
	eSL9CVCvgirhK8/TaoLwl4gIBwveOpLeT++CXj5cddAv0z7ZB0LUU9M8HLtpKi/0+BTQ5e3odma1I
	09IFi3MASEa113N+WJIRmdopU97NgZPCjf2yXTubEUmQdXRebWbWiRiCdSBhKNrhbPPn896tUgtz8
	954tRaqJ5tm5YrUNVTxNLg/0FJ0CRw2j7szLXaDWKwKvFGMxUtb1ZDrtploBrdWJvf7ets8T2RwDQ
	EQbhnN8QOzCPu7+0+QzvorvVcQAI78Eo29jWTdzSZlqRy33VFxBqGFWMcMPQ/Ffca4Jj2HJrFjPYT
	29ulBzD9f/87pXIe63pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfBK-0008Fq-K4; Fri, 03 May 2019 20:53:22 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfAi-0007Xo-61
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 20:52:46 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 110084DADB;
 Fri,  3 May 2019 22:52:41 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id h-ORfH9tI-OC; Fri,  3 May 2019 22:52:29 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 22:52:07 +0200
Message-Id: <20190503205207.7675-11-hauke@hauke-m.de>
In-Reply-To: <20190503205207.7675-1-hauke@hauke-m.de>
References: <20190503205207.7675-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_135244_372250_C9AB8436 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 10/10] gemini: Make kernel text and rodata
 read-only
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

This is activate for all other targets except gemini, also activate it
there.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/gemini/config-4.14 | 2 --
 target/linux/gemini/config-4.19 | 2 --
 2 files changed, 4 deletions(-)

diff --git a/target/linux/gemini/config-4.14 b/target/linux/gemini/config-4.14
index 8dddf02018..c049200fe0 100644
--- a/target/linux/gemini/config-4.14
+++ b/target/linux/gemini/config-4.14
@@ -391,8 +391,6 @@ CONFIG_SPI_MASTER=y
 CONFIG_SPLIT_PTLOCK_CPUS=999999
 CONFIG_SRCU=y
 # CONFIG_STAGING is not set
-# CONFIG_STRICT_KERNEL_RWX is not set
-# CONFIG_STRICT_MODULE_RWX is not set
 # CONFIG_STRIP_ASM_SYMS is not set
 CONFIG_SWIOTLB=y
 CONFIG_SWPHY=y
diff --git a/target/linux/gemini/config-4.19 b/target/linux/gemini/config-4.19
index 745bad67da..7eee5fe9c0 100644
--- a/target/linux/gemini/config-4.19
+++ b/target/linux/gemini/config-4.19
@@ -446,8 +446,6 @@ CONFIG_SPI_MASTER=y
 CONFIG_SPLIT_PTLOCK_CPUS=999999
 CONFIG_SRCU=y
 # CONFIG_STAGING is not set
-# CONFIG_STRICT_KERNEL_RWX is not set
-# CONFIG_STRICT_MODULE_RWX is not set
 # CONFIG_STRIP_ASM_SYMS is not set
 CONFIG_SWPHY=y
 CONFIG_SYNC_FILE=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
