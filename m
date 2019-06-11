Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 608A23C8F8
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 12:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSZIvA2zZM5OJcJK0Xcgirahxisb87fNR09dqZ8pH4Y=; b=oKCDWQk5QRZnbT
	gjt7CNEcB+M+lQ/0GP4HLYGLYo9LcL4zhstunBJdMfbHdTGt5aNEgbGjJdc96QkDCbMVk2K08bM6M
	ayWdbZBiuGHVwSFLwOn7ogL2sbZGcHBVsNv49ol4vjtXScWDwued2PLD1U8nGRWqoltZFmonOGD+c
	3c1Wfluk8qPh4oqP1EV7W9ehuJj3za0lOmMfeP5cM8DkdpsBi8bvfAyZQH8IUacV14Lp56LTzc66A
	+gzWNqt3EnizBR/XHI7hUXQfnhPiMwSQ7RQNVkqN/sOjXYsozcos4W6kH3GUf1WQL6wdWSk6lLrNH
	noQjqORvBgiBYSn1m8yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hae2u-0007pu-JN; Tue, 11 Jun 2019 10:30:28 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hae2b-0007PF-1p
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 10:30:10 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x5BANTPh075905;
 Tue, 11 Jun 2019 18:23:29 +0800 (GMT-8)
 (envelope-from nylon7@andestech.com)
Received: from atcfdc88.andestech.com (10.0.15.132) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3;
 Tue, 11 Jun 2019 18:29:57 +0800
From: Nylon Chen <nylon7@andestech.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 11 Jun 2019 18:30:41 +0800
Message-ID: <20190611103042.31736-2-nylon7@andestech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190611103042.31736-1-nylon7@andestech.com>
References: <20190611103042.31736-1-nylon7@andestech.com>
MIME-Version: 1.0
X-Originating-IP: [10.0.15.132]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x5BANTPh075905
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_033009_388860_95F9A261 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
Subject: [OpenWrt-Devel] [PATCH 1/4] toolchain: add support of nds32
 architecture
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
Cc: Nylon Chen <nylon7717@gmail.com>, Nylon Chen <nylon7@andestech.com>,
 Che-Wei Chuang <cnoize@andestech.com>, Greentime Hu <greentime@andestech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This commit provides basic support for the
Andes 32-bit (nds32) architecture.

Signed-off-by: Che-Wei Chuang <cnoize@andestech.com>
Signed-off-by: Nylon Chen <nylon7@andestech.com>
---
 include/kernel.mk   |  2 ++
 include/site/nds32  | 33 +++++++++++++++++++++++++++++++++
 include/target.mk   |  4 ++++
 target/Config.in    |  5 +++++
 toolchain/Config.in |  9 ++++++---
 5 files changed, 50 insertions(+), 3 deletions(-)
 create mode 100644 include/site/nds32

diff --git a/include/kernel.mk b/include/kernel.mk
index 3195090a0a..d0b5b779b9 100644
--- a/include/kernel.mk
+++ b/include/kernel.mk
@@ -85,6 +85,8 @@ ifneq (,$(findstring uml,$(BOARD)))
   LINUX_KARCH=um
 else ifneq (,$(findstring $(ARCH) , aarch64 aarch64_be ))
   LINUX_KARCH := arm64
+else ifneq (,$(findstring $(ARCH) , nds32 ))
+  LINUX_KARCH := nds32
 else ifneq (,$(findstring $(ARCH) , arceb ))
   LINUX_KARCH := arc
 else ifneq (,$(findstring $(ARCH) , armeb ))
diff --git a/include/site/nds32 b/include/site/nds32
new file mode 100644
index 0000000000..b0a0977671
--- /dev/null
+++ b/include/site/nds32
@@ -0,0 +1,33 @@
+ac_cv_c_littleendian=${ac_cv_c_littleendian=yes}
+ac_cv_c_bigendian=${ac_cv_c_bigendian=no}
+
+ac_cv_sizeof___int64=${ac_cv_sizeof___int64=0}
+ac_cv_sizeof_bool=${ac_cv_sizeof_bool=1}
+ac_cv_sizeof_char=${ac_cv_sizeof_char=1}
+ac_cv_sizeof_char_p=${ac_cv_sizeof_int_p=4}
+ac_cv_sizeof_double=${ac_cv_sizeof_double=8}
+ac_cv_sizeof_float=${ac_cv_sizeof_float=4}
+ac_cv_sizeof_int=${ac_cv_sizeof_int=4}
+ac_cv_sizeof_int_p=${ac_cv_sizeof_int_p=4}
+ac_cv_sizeof_long=${ac_cv_sizeof_long=4}
+ac_cv_sizeof_long_double=${ac_cv_sizeof_long_double=8}
+ac_cv_sizeof_long_int=${ac_cv_sizeof_long_int=4}
+ac_cv_sizeof_long_long=${ac_cv_sizeof_long_long=8}
+ac_cv_sizeof_long_p=${ac_cv_sizeof_long_p=4}
+ac_cv_sizeof_off_t=${ac_cv_sizeof_off_t=4}
+ac_cv_sizeof_ptrdiff_t=${glib_cv_sizeof_ptrdiff_t=4}
+ac_cv_sizeof_short=${ac_cv_sizeof_short=2}
+ac_cv_sizeof_short_int=${ac_cv_sizeof_short_int=2}
+ac_cv_sizeof_signed_char=${ac_cv_sizeof_signed_char=1}
+ac_cv_sizeof_size_t=${ac_cv_sizeof_size_t=4}
+ac_cv_sizeof_unsigned_char=${ac_cv_sizeof_unsigned_char=1}
+ac_cv_sizeof_unsigned_short=${ac_cv_sizeof_unsigned_short=2}
+ac_cv_sizeof_unsigned=${ac_cv_sizeof_unsigned=4}
+ac_cv_sizeof_unsigned_int=${ac_cv_sizeof_unsigned_int=4}
+ac_cv_sizeof_unsigned_long=${ac_cv_sizeof_unsigned_long=4}
+ac_cv_sizeof_unsigned_long_long=${ac_cv_sizeof_unsigned_long_long=8}
+ac_cv_sizeof_void_p=${ac_cv_sizeof_void_p=4}
+ac_cv_sizeof_wchar_t=${ac_cv_sizeof_wchar_t=1}
+
+ac_cv_func_realloc_0_nonnull=yes
+ac_cv_func_malloc_0_nonnull=yes
diff --git a/include/target.mk b/include/target.mk
index 4f3bd43e6c..75e23f328f 100644
--- a/include/target.mk
+++ b/include/target.mk
@@ -176,6 +176,10 @@ ifeq ($(DUMP),1)
     CPU_CFLAGS_74kc = -mips32r2 -mtune=74kc
     CPU_CFLAGS_octeonplus = -march=octeon+ -mabi=64
   endif
+  ifeq ($(ARCH),nds32)
+    CPU_TYPE ?= nds32
+    CPU_CFLAGS += -march=v3
+  endif
   ifeq ($(ARCH),i386)
     CPU_TYPE ?= pentium
     CPU_CFLAGS_pentium = -march=pentium-mmx
diff --git a/target/Config.in b/target/Config.in
index 3ee23ebf7f..8d6aa8769c 100644
--- a/target/Config.in
+++ b/target/Config.in
@@ -192,6 +192,10 @@ config x86_64
 	select ARCH_64BIT
 	bool
 
+config nds32
+	select LITTLE_ENDIAN
+	bool
+
 config ARCH
 	string
 	default "aarch64"   if aarch64
@@ -215,4 +219,5 @@ config ARCH
 	default "sh4eb"     if sh4eb
 	default "sparc"     if sparc
 	default "x86_64"    if x86_64
+	default "nds32"	    if nds32
 
diff --git a/toolchain/Config.in b/toolchain/Config.in
index 82dddbc209..7cb65e803e 100644
--- a/toolchain/Config.in
+++ b/toolchain/Config.in
@@ -67,6 +67,7 @@ menuconfig EXTERNAL_TOOLCHAIN
 		default "mipsel-unknown-linux-gnu"   if mipsel
 		default "powerpc-unknown-linux-gnu"  if powerpc
 		default "x86_64-unknown-linux-gnu"   if x86_64
+		default "nds32le-linux"              if nds32
 
 	config TOOLCHAIN_PREFIX
 		string
@@ -81,6 +82,7 @@ menuconfig EXTERNAL_TOOLCHAIN
 		default "mipsel-unknown-linux-gnu-"   if mipsel
 		default "powerpc-unknown-linux-gnu-"  if powerpc
 		default "x86_64-unknown-linux-gnu-"   if x86_64
+		default "nds32le-linux-"              if nds32
 
 	config TOOLCHAIN_ROOT
 		string
@@ -113,11 +115,12 @@ menuconfig EXTERNAL_TOOLCHAIN
 		config EXTERNAL_TOOLCHAIN_LIBC_USE_UCLIBC
 			bool "uClibc"
 			select USE_UCLIBC
-			depends on !(aarch64 || aarch64_be)
+			depends on !(aarch64 || aarch64_be || nds32)
 
 		config EXTERNAL_TOOLCHAIN_LIBC_USE_MUSL
 			bool "musl"
 			select USE_MUSL
+			depends on !nds32
 
 	endchoice
 
@@ -251,13 +254,13 @@ choice
 	config LIBC_USE_UCLIBC
 		select USE_UCLIBC
 		bool "Use uClibc"
-		depends on !(aarch64 || aarch64_be || powerpc64)
+		depends on !(aarch64 || aarch64_be || powerpc64 || nds32)
 		depends on BROKEN || !(arm || armeb || i386 || x86_64 || mips || mipsel || mips64 || mips64el || powerpc)
 
 	config LIBC_USE_MUSL
 		select USE_MUSL
 		bool "Use musl"
-		depends on !(arc || powerpc64)
+		depends on !(arc || powerpc64 || nds32)
 
 endchoice
 
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
