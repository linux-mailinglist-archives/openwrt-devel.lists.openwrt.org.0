Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8576E159845
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 19:20:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UIJJuGm0BE8ZhJRSF2BQ9noPd4CDv6LtBlc2aoWl6mE=; b=j7V4TKnrovNp8i
	nSMZAUzDCOCnwzpV9R3nSDYAmEjHS+YEHK7nZkMSVN+wgyIlIbZh0nKv69Dq4G+TBgegLt2H8NAEv
	jsJBgrgVJOz8fz3pR2DteeTUiWifLZLSMsZ5dsfEYtEBaXGlXy1V7yqO/oKGqZhJ9B39hdT6AsKc6
	QHMeWOqfW1aL4Vga+YfmBGR38FVaDI/KX3UPyXotWl2oJRbwQwzQNNQWYzUB6t4XVOGF7lhA4mCSS
	X3HmeObz7u4pWvkIwKDxYNuNZh39JKNkJjQB+vo/BkxCmPceOCXsGDjfHGtZ+ioMkH8NSldMyd2fD
	K6NmA/mNOF2jLLkMao0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a9B-0007OM-0q; Tue, 11 Feb 2020 18:20:33 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zql-0004D9-QH
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 18:01:34 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 10:01:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="266345252"
Received: from pon-swdev1.imu.intel.com ([10.91.128.250])
 by fmsmga002.fm.intel.com with ESMTP; 11 Feb 2020 10:01:27 -0800
From: Hauke Mehrtens <hauke.mehrtens@intel.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 11 Feb 2020 19:01:24 +0100
Message-Id: <20200211180124.17523-1-hauke.mehrtens@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_100131_919452_71D7F48E 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] x86: Add missing kernel option
 CONFIG_X86_DECODER_SELFTEST
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

This option has now a different dependency and can be activated, set a
default value.

Fixes: 20b5a4ca01ca ("kernel: bump 4.19 to 4.19.101")
Signed-off-by: Hauke Mehrtens <hauke.mehrtens@intel.com>
---
 target/linux/x86/config-4.14 | 1 +
 target/linux/x86/config-4.19 | 1 +
 2 files changed, 2 insertions(+)

diff --git a/target/linux/x86/config-4.14 b/target/linux/x86/config-4.14
index 18b7de832f..8d358aacac 100644
--- a/target/linux/x86/config-4.14
+++ b/target/linux/x86/config-4.14
@@ -469,6 +469,7 @@ CONFIG_X86_CMPXCHG64=y
 # CONFIG_X86_CPUFREQ_NFORCE2 is not set
 # CONFIG_X86_CPUID is not set
 # CONFIG_X86_DEBUG_FPU is not set
+# CONFIG_X86_DECODER_SELFTEST is not set
 # CONFIG_X86_EXTENDED_PLATFORM is not set
 CONFIG_X86_F00F_BUG=y
 CONFIG_X86_FAST_FEATURE_TESTS=y
diff --git a/target/linux/x86/config-4.19 b/target/linux/x86/config-4.19
index ecfaf45d90..afc8d6af57 100644
--- a/target/linux/x86/config-4.19
+++ b/target/linux/x86/config-4.19
@@ -453,6 +453,7 @@ CONFIG_X86_CMPXCHG64=y
 # CONFIG_X86_CPUFREQ_NFORCE2 is not set
 # CONFIG_X86_CPUID is not set
 # CONFIG_X86_DEBUG_FPU is not set
+# CONFIG_X86_DECODER_SELFTEST is not set
 # CONFIG_X86_EXTENDED_PLATFORM is not set
 CONFIG_X86_F00F_BUG=y
 CONFIG_X86_FEATURE_NAMES=y
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
