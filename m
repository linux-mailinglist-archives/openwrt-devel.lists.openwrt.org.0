Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FC41348F
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 22:54:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ilzeZntJRu+HH8zLLfd5S79Yl+ewMpu0Yk/0wHxQPs=; b=HNlIJaCqlq3Nri
	HktQzSRL2ixQFRxcu4JmLYE4g6XE8iF+pMyy/5ljNoUnlLBMMZOOtyzMv7MYnni0mhH8PL8rtVQmx
	aoq7BFXaAuLfDo3wRZ855M/1u+AMjIniutjJgr5zZvxsvQwaxTv8WKssYypudzLKRvzUfG6Pb2cVF
	pAt9iMfrg43dr0IOg83htvJPjK7OowV78rXoG8o1lLfUiZej5yAip+TfkTKbdJIfoS8IbX5xYdWQ4
	pLUAvF35KGxf59JHsRnbOP6BXeNfoLFXEyn3Krm1n3WDSlmxzRzKDwEVdQEqM/pUpy2K9ByWdjqX2
	FgyAZYcAFl0hpq4c2zOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfBz-0000pk-Jb; Fri, 03 May 2019 20:54:03 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfAk-0007Zx-NE
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 20:52:48 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 4F9804E182;
 Fri,  3 May 2019 22:52:43 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id NdumAJrxHogX; Fri,  3 May 2019 22:52:27 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 22:52:00 +0200
Message-Id: <20190503205207.7675-4-hauke@hauke-m.de>
In-Reply-To: <20190503205207.7675-1-hauke@hauke-m.de>
References: <20190503205207.7675-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_135246_914944_E7FAC7CD 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 03/10] kernel: Remove CONFIG_DEBUG_RODATA
 and CONFIG_DEBUG_SET_MODULE_RONX
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

These were renamed to CONFIG_STRICT_KERNEL_RWX and CONFIG_STRICT_MODULE_RWX and are
activated in kernel 4.14 and later by default.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/generic/config-4.14 | 2 --
 target/linux/generic/config-4.19 | 2 --
 2 files changed, 4 deletions(-)

diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
index f9834b8cf8..b4b622dd2c 100644
--- a/target/linux/generic/config-4.14
+++ b/target/linux/generic/config-4.14
@@ -1050,12 +1050,10 @@ CONFIG_DEBUG_KERNEL=y
 # CONFIG_DEBUG_PINCTRL is not set
 # CONFIG_DEBUG_PI_LIST is not set
 # CONFIG_DEBUG_PREEMPT is not set
-# CONFIG_DEBUG_RODATA is not set
 # CONFIG_DEBUG_RODATA_TEST is not set
 # CONFIG_DEBUG_RT_MUTEXES is not set
 # CONFIG_DEBUG_SECTION_MISMATCH is not set
 # CONFIG_DEBUG_SEMIHOSTING is not set
-# CONFIG_DEBUG_SET_MODULE_RONX is not set
 # CONFIG_DEBUG_SG is not set
 # CONFIG_DEBUG_SHIRQ is not set
 # CONFIG_DEBUG_SLAB is not set
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index dc392ebb56..adc941cdac 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -1105,14 +1105,12 @@ CONFIG_DEBUG_KERNEL=y
 # CONFIG_DEBUG_PINCTRL is not set
 # CONFIG_DEBUG_PI_LIST is not set
 # CONFIG_DEBUG_PREEMPT is not set
-# CONFIG_DEBUG_RODATA is not set
 # CONFIG_DEBUG_RODATA_TEST is not set
 # CONFIG_DEBUG_RSEQ is not set
 # CONFIG_DEBUG_RT_MUTEXES is not set
 # CONFIG_DEBUG_RWSEMS is not set
 # CONFIG_DEBUG_SECTION_MISMATCH is not set
 # CONFIG_DEBUG_SEMIHOSTING is not set
-# CONFIG_DEBUG_SET_MODULE_RONX is not set
 # CONFIG_DEBUG_SG is not set
 # CONFIG_DEBUG_SHIRQ is not set
 # CONFIG_DEBUG_SLAB is not set
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
