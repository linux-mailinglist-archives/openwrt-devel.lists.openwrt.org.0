Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8CE15A6FC
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 11:50:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3LZDWBNlE9TKsK7F3pSUUJVeTxF9REgBLTWB/xMCdc=; b=au/ce7/S8qIg5r
	5ATb9jhA2NjXIHCyTGzyOOY47lY298kFFYwnaYH+dJ8g025anYkvLw7YknB7bZlQ+Ql5ecwUug/+W
	j8gBcaJxCgLM9z3y5yEX1UEH2d+xeAVuLzp4SULbqA6qtytL2jEt0SuPfFKTxmSCps4TOVl65dH94
	0qtad+ewLAG36q/IqNBjmFUnDzSreLgvYJ8MVKfXoasw6p37+kEmbN1mlHCqMVgc2lzVDbrpMZ/HX
	X7i3iz5MD2qAVRY2tEf6RuRt5Xy4lnCVV8aPMMSphxzAM2eLvBKVWLXO21C1UZQ6+0JRs51uxoeVQ
	W3dtURNyFXqHF5WUTz5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pao-0001PA-TV; Wed, 12 Feb 2020 10:50:07 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pa7-0000qd-FA
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 10:49:25 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:49:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="251874740"
Received: from pon-swdev1.imu.intel.com ([10.91.128.250])
 by orsmga002.jf.intel.com with ESMTP; 12 Feb 2020 02:49:20 -0800
From: Hauke Mehrtens <hauke.mehrtens@intel.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 12 Feb 2020 11:49:00 +0100
Message-Id: <20200212104902.7779-2-hauke.mehrtens@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200212104902.7779-1-hauke.mehrtens@intel.com>
References: <20200212104902.7779-1-hauke.mehrtens@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_024923_620601_36ECAA63 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/4] build: Add option KERNEL_KASAN
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

The kernel kernel address sanitizer is able to detect some memory
bugs in the kernel like out of range array accesses.

Signed-off-by: Hauke Mehrtens <hauke.mehrtens@intel.com>
---
 config/Config-kernel.in          | 52 ++++++++++++++++++++++++++++++++
 target/linux/generic/config-4.14 |  1 +
 target/linux/generic/config-4.19 |  1 +
 3 files changed, 54 insertions(+)

diff --git a/config/Config-kernel.in b/config/Config-kernel.in
index bf1c1055f1..3059a45f48 100644
--- a/config/Config-kernel.in
+++ b/config/Config-kernel.in
@@ -120,6 +120,58 @@ config KERNEL_UBSAN_NULL
 	  This option enables detection of memory accesses via a
 	  null pointer.
 
+config KERNEL_KASAN
+	bool "Compile the kernel with KASan: runtime memory debugger"
+	select KERNEL_SLUB_DEBUG
+	depends on (x86_64 || aarch64)
+	help
+	  Enables kernel address sanitizer - runtime memory debugger,
+	  designed to find out-of-bounds accesses and use-after-free bugs.
+	  This is strictly a debugging feature and it requires a gcc version
+	  of 4.9.2 or later. Detection of out of bounds accesses to stack or
+	  global variables requires gcc 5.0 or later.
+	  This feature consumes about 1/8 of available memory and brings about
+	  ~x3 performance slowdown.
+	  For better error detection enable CONFIG_STACKTRACE.
+	  Currently CONFIG_KASAN doesn't work with CONFIG_DEBUG_SLAB
+	  (the resulting kernel does not boot).
+
+config KERNEL_KASAN_EXTRA
+	bool "KAsan: extra checks"
+	depends on KERNEL_KASAN && KERNEL_DEBUG_KERNEL
+	help
+	  This enables further checks in the kernel address sanitizer, for now
+	  it only includes the address-use-after-scope check that can lead
+	  to excessive kernel stack usage, frame size warnings and longer
+	  compile time.
+	  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81715 has more
+
+
+choice
+	prompt "Instrumentation type"
+	depends on KERNEL_KASAN
+	default KERNEL_KASAN_OUTLINE
+
+config KERNEL_KASAN_OUTLINE
+	bool "Outline instrumentation"
+	help
+	  Before every memory access compiler insert function call
+	  __asan_load*/__asan_store*. These functions performs check
+	  of shadow memory. This is slower than inline instrumentation,
+	  however it doesn't bloat size of kernel's .text section so
+	  much as inline does.
+
+config KERNEL_KASAN_INLINE
+	bool "Inline instrumentation"
+	help
+	  Compiler directly inserts code checking shadow memory before
+	  memory accesses. This is faster than outline (in some workloads
+	  it gives about x2 boost over outline instrumentation), but
+	  make kernel's .text size much bigger.
+	  This requires a gcc version of 5.0 or later.
+
+endchoice
+
 config KERNEL_TASKSTATS
 	bool "Compile the kernel with task resource/io statistics and accounting"
 	default n
diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
index 73b0d77155..5a9b82db80 100644
--- a/target/linux/generic/config-4.14
+++ b/target/linux/generic/config-4.14
@@ -4927,6 +4927,7 @@ CONFIG_TCP_CONG_CUBIC=y
 # CONFIG_TEST_FIRMWARE is not set
 # CONFIG_TEST_HASH is not set
 # CONFIG_TEST_HEXDUMP is not set
+# CONFIG_TEST_KASAN is not set
 # CONFIG_TEST_KMOD is not set
 # CONFIG_TEST_KSTRTOX is not set
 # CONFIG_TEST_LIST_SORT is not set
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index aba7bccaf6..372cad70a6 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -5187,6 +5187,7 @@ CONFIG_TCP_CONG_CUBIC=y
 # CONFIG_TEST_HASH is not set
 # CONFIG_TEST_HEXDUMP is not set
 # CONFIG_TEST_IDA is not set
+# CONFIG_TEST_KASAN is not set
 # CONFIG_TEST_KMOD is not set
 # CONFIG_TEST_KSTRTOX is not set
 # CONFIG_TEST_LIST_SORT is not set
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
