Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C24021A0037
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 23:34:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R7t68D0cdPyzc7y5EKsf5w0xF33nuzHHdVfkokqVpTI=; b=lJ6PPOJZEwzOCi
	nhvuKiAi2xaYtRd2gCm3C7N8CqyDiZ2YGw64EikygmqjIzQmyafe3LyrssH1/rZWNpV8+VozGOTta
	Hl8pd2Rk268W1zB8NM9509fMA4vDw519tDv4zcoXDf6IgbCn86MWseGolRI/1jOlflQ6kCP+tcUnG
	6PvFWBc1HH7V71+ILtSEVvB0HkjbhnCzuV5AHSNVtV0zOqWO4SEmpH1PuaVCTAAnipuDlY91RCMMN
	t2kRAYolSpsKbDajoo9Tu6DZcuQ5Ejy4oAOiC65JEWyUqTJ49YAQkk8iSG45pIsgt5+8LPzm6nZDV
	lsMkffrq86fzaLt0eOOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLZOD-0001sD-D0; Mon, 06 Apr 2020 21:34:41 +0000
Received: from mout-p-201.mailbox.org ([80.241.56.171])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLZO6-0001ot-22
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 21:34:36 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-201.mailbox.org (Postfix) with ESMTPS id 48x3hd19YmzQjhF;
 Mon,  6 Apr 2020 23:34:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id 3Ihh_StlTyzw; Mon,  6 Apr 2020 23:34:21 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 23:34:10 +0200
Message-Id: <20200406213410.2241-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-Rspamd-Queue-Id: E5C7F1742
X-Rspamd-Score: -7.21 / 15.00 / 15.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_143434_249580_D2E2D7A9 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.56.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] toolchain: gcc: Fix ath79 kernel boot
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

This reverts a commit from GCC which causes boot problems with ath79
boards with MIPS 74Kc CPUs.
The kernel crashed like this:
[    0.097796] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.107070] Kernel panic - not syncing: Unexpected DSP exception
[    0.113470] Rebooting in 1 seconds..

The following GCC ticket was opened:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94506

Fixes: FS#2928
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 ...e-optimization-91355-optimized-code-.patch | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 toolchain/gcc/patches/8.4.0/200-Revert-re-PR-tree-optimization-91355-optimized-code-.patch

diff --git a/toolchain/gcc/patches/8.4.0/200-Revert-re-PR-tree-optimization-91355-optimized-code-.patch b/toolchain/gcc/patches/8.4.0/200-Revert-re-PR-tree-optimization-91355-optimized-code-.patch
new file mode 100644
index 000000000000..0fbab6ebf569
--- /dev/null
+++ b/toolchain/gcc/patches/8.4.0/200-Revert-re-PR-tree-optimization-91355-optimized-code-.patch
@@ -0,0 +1,46 @@
+From e73998c880ed37d41a926ce9e2aa9c143eb7077a Mon Sep 17 00:00:00 2001
+From: Hauke Mehrtens <hauke@hauke-m.de>
+Date: Mon, 6 Apr 2020 21:15:31 +0200
+Subject: [PATCH] Revert "re PR tree-optimization/91355 (optimized code does
+ not call destructor while unwinding after exception)"
+
+This reverts commit 9fe0f3b6468871448bf40751a4f30cf20118ce6a.
+---
+ gcc/ChangeLog                          |  4 ----
+ gcc/testsuite/ChangeLog                |  3 ---
+ gcc/testsuite/g++.dg/torture/pr91355.C | 28 --------------------------
+ gcc/tree-ssa-sink.c                    |  2 +-
+ 4 files changed, 1 insertion(+), 36 deletions(-)
+ delete mode 100644 gcc/testsuite/g++.dg/torture/pr91355.C
+
+diff --git a/gcc/ChangeLog b/gcc/ChangeLog
+index 142499c563c..5b83f1b2370 100644
+--- a/gcc/ChangeLog
++++ b/gcc/ChangeLog
+@@ -644,10 +644,6 @@
+ 
+ 2019-11-21  Jakub Jelinek  <jakub@redhat.com>
+ 
+-	PR tree-optimization/91355
+-	* tree-ssa-sink.c (select_best_block): Use >= rather than >
+-	for early_bb scaled count with best_bb count comparison.
+-
+ 	Backported from mainline
+ 	2019-11-20  Jakub Jelinek  <jakub@redhat.com>
+ 
+diff --git a/gcc/tree-ssa-sink.c b/gcc/tree-ssa-sink.c
+index 5ac18289d90..345ed2b0329 100644
+--- a/gcc/tree-ssa-sink.c
++++ b/gcc/tree-ssa-sink.c
+@@ -229,7 +229,7 @@ select_best_block (basic_block early_bb,
+       /* If result of comparsion is unknown, preffer EARLY_BB.
+ 	 Thus use !(...>=..) rather than (...<...)  */
+       && !(best_bb->count.apply_scale (100, 1)
+-	   >= early_bb->count.apply_scale (threshold, 1)))
++	   > (early_bb->count.apply_scale (threshold, 1))))
+     return best_bb;
+ 
+   /* No better block found, so return EARLY_BB, which happens to be the
+-- 
+2.20.1
+
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
