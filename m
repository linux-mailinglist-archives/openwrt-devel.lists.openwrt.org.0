Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C963815A6FB
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 11:50:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SxVpW5eHb+DEsLEdnmEoSp4r1x8OraCsWYVxBQklens=; b=B1loM52F/JLkEV
	K9Dh/ToSaY5pDiJ4Bz00rPS28oQkmwOfHeE3oR0nvy/1fFN4+pv17dGNqtVchB1wQZtjZ/6rMAKUz
	oaL1yMDkifq86FYDMnSpgl5MRYE04mSmwOUeTZN4Vtf7vxGLXFq2NpSappkKLj48RyPgThiEnbhrL
	UFfM2t7jQjqNNwAlRktH1Nq4FmPHt06NhRTbd44vo5dYBVkzNN6R8zyH/rFcKV8E6uN3VIKTlSJ0w
	MOPP0TWLxv/a3ZgxS9k9Q7Sfily2gMpKUYuxgfA26ChvUHV47SSYmrg58kIXi7USgKkbQbpbPTY/z
	eqtER2xqRw0jWPATpmsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1paZ-000185-Rk; Wed, 12 Feb 2020 10:49:51 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pa6-0000o2-0I
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 10:49:23 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:49:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="251874736"
Received: from pon-swdev1.imu.intel.com ([10.91.128.250])
 by orsmga002.jf.intel.com with ESMTP; 12 Feb 2020 02:49:19 -0800
From: Hauke Mehrtens <hauke.mehrtens@intel.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 12 Feb 2020 11:48:59 +0100
Message-Id: <20200212104902.7779-1-hauke.mehrtens@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_024922_125481_501F2525 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/4] build: Add option KERNEL_UBSAN
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

The kernel Undefined Behavior Sanitizer is able to detect some memory
bugs in the kernel like out of range array accesses.

Signed-off-by: Hauke Mehrtens <hauke.mehrtens@intel.com>
---
 config/Config-kernel.in          | 35 ++++++++++++++++++++++++++++++++
 target/linux/generic/config-4.14 |  4 ++++
 target/linux/generic/config-4.19 |  3 +++
 3 files changed, 42 insertions(+)

diff --git a/config/Config-kernel.in b/config/Config-kernel.in
index 20930326ca..bf1c1055f1 100644
--- a/config/Config-kernel.in
+++ b/config/Config-kernel.in
@@ -85,6 +85,41 @@ config KERNEL_PROFILING
 	  Enable the extended profiling support mechanisms used by profilers such
 	  as OProfile.
 
+config KERNEL_UBSAN
+	bool "Compile the kernel with undefined behaviour sanity checker"
+	help
+	  This option enables undefined behaviour sanity checker
+	  Compile-time instrumentation is used to detect various undefined
+	  behaviours in runtime. Various types of checks may be enabled
+	  via boot parameter ubsan_handle
+	  (see: Documentation/dev-tools/ubsan.rst).
+
+config KERNEL_UBSAN_SANITIZE_ALL
+	bool "Enable instrumentation for the entire kernel"
+	depends on KERNEL_UBSAN
+	default y
+	help
+	  This option activates instrumentation for the entire kernel.
+	  If you don't enable this option, you have to explicitly specify
+	  UBSAN_SANITIZE := y for the files/directories you want to check for UB.
+	  Enabling this option will get kernel image size increased
+	  significantly.
+
+config KERNEL_UBSAN_ALIGNMENT
+	bool "Enable checking of pointers alignment"
+	depends on KERNEL_UBSAN
+	help
+	  This option enables detection of unaligned memory accesses.
+	  Enabling this option on architectures that support unaligned
+	  accesses may produce a lot of false positives.
+
+config KERNEL_UBSAN_NULL
+	bool "Enable checking of null pointers"
+	depends on KERNEL_UBSAN
+	help
+	  This option enables detection of memory accesses via a
+	  null pointer.
+
 config KERNEL_TASKSTATS
 	bool "Compile the kernel with task resource/io statistics and accounting"
 	default n
diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
index 9681d9c278..73b0d77155 100644
--- a/target/linux/generic/config-4.14
+++ b/target/linux/generic/config-4.14
@@ -1516,6 +1516,10 @@ CONFIG_GACT_PROB=y
 # CONFIG_GAMEPORT is not set
 # CONFIG_GATEWORKS_GW16083 is not set
 # CONFIG_GCC_PLUGINS is not set
+# CONFIG_GCC_PLUGIN_CYC_COMPLEXITY is not set
+# CONFIG_GCC_PLUGIN_LATENT_ENTROPY is not set
+# CONFIG_GCC_PLUGIN_RANDSTRUCT is not set
+# CONFIG_GCC_PLUGIN_STRUCTLEAK is not set
 # CONFIG_GCOV is not set
 # CONFIG_GCOV_KERNEL is not set
 # CONFIG_GDB_SCRIPTS is not set
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index d8ea243fc7..aba7bccaf6 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -1605,6 +1605,8 @@ CONFIG_GACT_PROB=y
 # CONFIG_GAMEPORT is not set
 # CONFIG_GATEWORKS_GW16083 is not set
 # CONFIG_GCC_PLUGINS is not set
+# CONFIG_GCC_PLUGIN_CYC_COMPLEXITY is not set
+# CONFIG_GCC_PLUGIN_LATENT_ENTROPY is not set
 # CONFIG_GCOV is not set
 # CONFIG_GCOV_KERNEL is not set
 # CONFIG_GDB_SCRIPTS is not set
@@ -5197,6 +5199,7 @@ CONFIG_TCP_CONG_CUBIC=y
 # CONFIG_TEST_STATIC_KEYS is not set
 # CONFIG_TEST_STRING_HELPERS is not set
 # CONFIG_TEST_SYSCTL is not set
+# CONFIG_TEST_UBSAN is not set
 # CONFIG_TEST_UDELAY is not set
 # CONFIG_TEST_USER_COPY is not set
 # CONFIG_TEST_UUID is not set
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
