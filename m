Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D6B13493
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 22:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FhIfklP0lkSM+DkuzXJZ9KORULr1ysRbTEm3O+7Pxd8=; b=H0pJvSHrD3wdau
	b/MgqSq7VKtloWF4Gh3TPPy8R1NE9QPg/rD8JJN+QGMgkAPNvwFYdFB6lNJJ6qfoAQ9P7YIAkMg/U
	/mBxiw6dzS76A+bLbercvbUi/E1xidcAymOraKn/4+Qr76ZphYhSYBT508MjVt+Un2wTuTww/bft3
	WwfmOnIi6aVYf1IfUd42Q20y/EsiYVyGYAkwXQpk5se2CTQiFwRtS91o4eh51Kdobo4MlIrur+XGs
	lkBn6QPYAyI7hXXRtliznzVDsgzMDRsgHmEu9JXKsjp+wPWBP+0Adp6L0OzMegCQneajscIfWoiIF
	X+HDMa7nueUn1RDYyNUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfCJ-0001KN-EG; Fri, 03 May 2019 20:54:23 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfAk-0007Zw-Mz
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 20:52:49 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 2DB3740ACC;
 Fri,  3 May 2019 22:52:44 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id egiFgaW30B2l; Fri,  3 May 2019 22:52:29 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 22:52:05 +0200
Message-Id: <20190503205207.7675-9-hauke@hauke-m.de>
In-Reply-To: <20190503205207.7675-1-hauke@hauke-m.de>
References: <20190503205207.7675-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_135246_920709_55E6F4E3 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 08/10] x86: Activate CONFIG_X86_SMAP
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

This activates "Supervisor Mode Access Prevention". modern CPUs will
prevent the kernel code from accessing any data from the userspace
without the usage of copy_to_user() or copy_from_user()

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/x86/config-4.14 | 2 +-
 target/linux/x86/config-4.19 | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/x86/config-4.14 b/target/linux/x86/config-4.14
index ae96e4d97a..014e7b275b 100644
--- a/target/linux/x86/config-4.14
+++ b/target/linux/x86/config-4.14
@@ -505,7 +505,7 @@ CONFIG_X86_PPRO_FENCE=y
 # CONFIG_X86_REBOOTFIXUPS is not set
 CONFIG_X86_REROUTE_FOR_BROKEN_BOOT_IRQS=y
 CONFIG_X86_RESERVE_LOW=64
-# CONFIG_X86_SMAP is not set
+CONFIG_X86_SMAP=y
 # CONFIG_X86_SPEEDSTEP_CENTRINO is not set
 # CONFIG_X86_SPEEDSTEP_ICH is not set
 # CONFIG_X86_SPEEDSTEP_LIB is not set
diff --git a/target/linux/x86/config-4.19 b/target/linux/x86/config-4.19
index d395876955..d8c2d966d0 100644
--- a/target/linux/x86/config-4.19
+++ b/target/linux/x86/config-4.19
@@ -484,7 +484,7 @@ CONFIG_X86_PLATFORM_DEVICES=y
 # CONFIG_X86_REBOOTFIXUPS is not set
 CONFIG_X86_REROUTE_FOR_BROKEN_BOOT_IRQS=y
 CONFIG_X86_RESERVE_LOW=64
-# CONFIG_X86_SMAP is not set
+CONFIG_X86_SMAP=y
 # CONFIG_X86_SPEEDSTEP_CENTRINO is not set
 # CONFIG_X86_SPEEDSTEP_ICH is not set
 # CONFIG_X86_SPEEDSTEP_SMI is not set
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
