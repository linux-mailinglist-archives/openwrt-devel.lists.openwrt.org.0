Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D8E15A6FF
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 11:50:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDXQhOA9UZCIgmb9QKVQd6Cl2UfvPa1PbYFDfavi9HA=; b=YHKn40vmIiOj3h
	aB3+xN2tYUbN+1q+aqg8Cdg3p9S45Gr+wanTEZzTbYPxwvJuimNn0jvJErsuiu/aEGEJYsTAjAzMk
	ThsLRH8X7yHZ6smh7vkr9Dzplg2vQYge8jWgEr9RFp79CzYwdGImxxMDwuoXINYCpHIxGwvDpC9+Q
	fN4ufGuelo1MoIwPEq53K9dhOOYdv+Pcl/Lw3z+g7v5v1CpWxTMMfILGbPFXG17BG2NL4hLN455ni
	4MT589WyMcM/ZmThLqBsrZHyFU5tm/ReTs2X/wmGT5kAvT92OQWnZnKI8VfgdoECgyABZpw3KqpAe
	jZm9jEWfwQZMd6tOVwUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pb4-0002sj-BV; Wed, 12 Feb 2020 10:50:22 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pa8-0000o2-F7
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 10:49:26 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:49:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="251874744"
Received: from pon-swdev1.imu.intel.com ([10.91.128.250])
 by orsmga002.jf.intel.com with ESMTP; 12 Feb 2020 02:49:22 -0800
From: Hauke Mehrtens <hauke.mehrtens@intel.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 12 Feb 2020 11:49:01 +0100
Message-Id: <20200212104902.7779-3-hauke.mehrtens@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200212104902.7779-1-hauke.mehrtens@intel.com>
References: <20200212104902.7779-1-hauke.mehrtens@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_024925_126557_B113F74E 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/4] build: Add KCOV kernel code coverage
 for fuzzing
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
Cc: hauke@hauke-m.de, Hauke Mehrtens <hauke.mehrtens@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The adds an option to activate KCOV (Code coverage for fuzzing).

Signed-off-by: Hauke Mehrtens <hauke.mehrtens@intel.com>
---
 config/Config-kernel.in | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/config/Config-kernel.in b/config/Config-kernel.in
index 3059a45f48..8e9e3518bf 100644
--- a/config/Config-kernel.in
+++ b/config/Config-kernel.in
@@ -172,6 +172,39 @@ config KERNEL_KASAN_INLINE
 
 endchoice
 
+config KERNEL_KCOV
+	bool "Compile the kernel with code coverage for fuzzing"
+	select KERNEL_DEBUG_FS
+	help
+	  KCOV exposes kernel code coverage information in a form suitable
+	  for coverage-guided fuzzing (randomized testing).
+
+	  If RANDOMIZE_BASE is enabled, PC values will not be stable across
+	  different machines and across reboots. If you need stable PC values,
+	  disable RANDOMIZE_BASE.
+
+	  For more details, see Documentation/kcov.txt.
+
+config KERNEL_KCOV_ENABLE_COMPARISONS
+	bool "Enable comparison operands collection by KCOV"
+	depends on KERNEL_KCOV
+	help
+	  KCOV also exposes operands of every comparison in the instrumented
+	  code along with operand sizes and PCs of the comparison instructions.
+	  These operands can be used by fuzzing engines to improve the quality
+	  of fuzzing coverage.
+
+config KERNEL_KCOV_INSTRUMENT_ALL
+	bool "Instrument all code by default"
+	depends on KERNEL_KCOV
+	default y if KERNEL_KCOV
+	help
+	  If you are doing generic system call fuzzing (like e.g. syzkaller),
+	  then you will want to instrument the whole kernel and you should
+	  say y here. If you are doing more targeted fuzzing (like e.g.
+	  filesystem fuzzing with AFL) then you will want to enable coverage
+	  for more specific subsets of files, and should say n here.
+
 config KERNEL_TASKSTATS
 	bool "Compile the kernel with task resource/io statistics and accounting"
 	default n
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
