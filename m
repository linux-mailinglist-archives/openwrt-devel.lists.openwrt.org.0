Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA361ACC0
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 May 2019 17:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RyoX8EVFQIXvPK8u5Kklq9GTaDXnHOeblZzWDQoH+cE=; b=DrgPFogm6WxE7V
	nEz4fYRYEe04fR6fKZ52SPumC+8uwKHbKA1FVS51X752oOJRM0DvDC++M+VGmgmVlx0smJV4jgt2N
	wxOpu+NwG2Z5CyYguRpFcl3HGDTpmLGzjRs46XhJC5LySILJPKjQ6GUk8Xz8vfaefp9dD5CVkdsLw
	5J4/1at1M6x9geutynp7/C0xYTl5j6OTYydzuHCEytNTnhKmwcedzIp+ePkT8sEEPwY27azNOXb6+
	Zm/UInoACKtJmCpTjSTzP5w9gt7i495/dKIc6uZ0pKHWZ642GG6ZVuL/WjyTCAEeoEW9c97VYN46s
	FQAUTjpZ+UxQjguAN/jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqIX-00034N-1c; Sun, 12 May 2019 15:21:57 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqIQ-00033z-1G
 for openwrt-devel@lists.openwrt.org; Sun, 12 May 2019 15:21:52 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 9FB7BA109B;
 Sun, 12 May 2019 17:21:43 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id rAiu1kfR06F2; Sun, 12 May 2019 17:21:36 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 May 2019 17:21:22 +0200
Message-Id: <20190512152123.13487-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_082150_372853_EC16E5E0 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 1/2] octeon: Deactivate MIPS O32 and N32
 support
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

OpenWrt is completely compiled from sources using a 64 bit compiler, we
do not need support for the old 32 bit MIPS interface on 64 Bit CPUs,
deactivate it.

Fixes: 46af22de16b2 ("kernel: Remove CONFIG_COMPAT")
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/octeon/config-4.14 | 13 +++++--------
 target/linux/octeon/config-4.19 | 16 ++++++++++------
 2 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/target/linux/octeon/config-4.14 b/target/linux/octeon/config-4.14
index 6393c728f3..e2b926f8fc 100644
--- a/target/linux/octeon/config-4.14
+++ b/target/linux/octeon/config-4.14
@@ -25,10 +25,7 @@ CONFIG_ARCH_USE_BUILTIN_BSWAP=y
 CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
 CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
 CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
-CONFIG_ARCH_WANT_COMPAT_IPC_PARSE_VERSION=y
 CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
-CONFIG_ARCH_WANT_OLD_COMPAT_IPC=y
-CONFIG_BINFMT_ELF32=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_MQ_PCI=y
@@ -119,6 +116,7 @@ CONFIG_HAS_IOMEM=y
 CONFIG_HAS_IOPORT_MAP=y
 CONFIG_HAVE_64BIT_ALIGNED_ACCESS=y
 # CONFIG_HAVE_ARCH_BITREVERSE is not set
+CONFIG_HAVE_ARCH_COMPILER_H=y
 CONFIG_HAVE_ARCH_JUMP_LABEL=y
 CONFIG_HAVE_ARCH_KGDB=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
@@ -179,16 +177,17 @@ CONFIG_MDIO_BUS=y
 CONFIG_MDIO_CAVIUM=y
 CONFIG_MDIO_DEVICE=y
 CONFIG_MDIO_OCTEON=y
+CONFIG_MIGRATION=y
 CONFIG_MIPS=y
-CONFIG_MIPS32_COMPAT=y
-CONFIG_MIPS32_N32=y
-CONFIG_MIPS32_O32=y
+# CONFIG_MIPS32_N32 is not set
+# CONFIG_MIPS32_O32 is not set
 CONFIG_MIPS_ASID_BITS=8
 CONFIG_MIPS_ASID_SHIFT=0
 # CONFIG_MIPS_CLOCK_VSYSCALL is not set
 # CONFIG_MIPS_CMDLINE_DTB_EXTEND is not set
 CONFIG_MIPS_CMDLINE_FROM_BOOTLOADER=y
 # CONFIG_MIPS_CMDLINE_FROM_DTB is not set
+CONFIG_MIPS_EBPF_JIT=y
 # CONFIG_MIPS_ELF_APPENDED_DTB is not set
 # CONFIG_MIPS_HUGE_TLB_SUPPORT is not set
 CONFIG_MIPS_L1_CACHE_SHIFT=7
@@ -202,7 +201,6 @@ CONFIG_MIPS_SPRAM=y
 CONFIG_MMC=y
 CONFIG_MMC_BLOCK=y
 CONFIG_MMC_CAVIUM_OCTEON=y
-CONFIG_MMC_OCTEON=y
 # CONFIG_MMC_TIFM_SD is not set
 CONFIG_MODULES_USE_ELF_REL=y
 CONFIG_MODULES_USE_ELF_RELA=y
@@ -246,7 +244,6 @@ CONFIG_PHYLIB=y
 CONFIG_PHYS_ADDR_T_64BIT=y
 CONFIG_POSIX_MQUEUE=y
 CONFIG_POSIX_MQUEUE_SYSCTL=y
-CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=13
 CONFIG_QUEUED_RWLOCKS=y
 CONFIG_QUEUED_SPINLOCKS=y
 CONFIG_RCU_NEED_SEGCBLIST=y
diff --git a/target/linux/octeon/config-4.19 b/target/linux/octeon/config-4.19
index 521dd55de6..5b8a21318e 100644
--- a/target/linux/octeon/config-4.19
+++ b/target/linux/octeon/config-4.19
@@ -5,20 +5,19 @@ CONFIG_ARCH_DISCARD_MEMBLOCK=y
 CONFIG_ARCH_DMA_ADDR_T_64BIT=y
 CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
 CONFIG_ARCH_HAS_PHYS_TO_DMA=y
+CONFIG_ARCH_HIBERNATION_POSSIBLE=y
 CONFIG_ARCH_MMAP_RND_BITS=12
 CONFIG_ARCH_MMAP_RND_BITS_MAX=18
 CONFIG_ARCH_MMAP_RND_BITS_MIN=12
 CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=15
 CONFIG_ARCH_SPARSEMEM_ENABLE=y
 CONFIG_ARCH_SUPPORTS_UPROBES=y
+CONFIG_ARCH_SUSPEND_POSSIBLE=y
 CONFIG_ARCH_USE_BUILTIN_BSWAP=y
 CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
 CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
 CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
-CONFIG_ARCH_WANT_COMPAT_IPC_PARSE_VERSION=y
 CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
-CONFIG_ARCH_WANT_OLD_COMPAT_IPC=y
-CONFIG_BINFMT_ELF32=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_MQ_PCI=y
@@ -115,6 +114,8 @@ CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
 CONFIG_HAVE_CONTEXT_TRACKING=y
 CONFIG_HAVE_COPY_THREAD_TLS=y
 CONFIG_HAVE_C_RECORDMCOUNT=y
+CONFIG_HAVE_DEBUG_KMEMLEAK=y
+CONFIG_HAVE_DEBUG_STACKOVERFLOW=y
 CONFIG_HAVE_DMA_CONTIGUOUS=y
 CONFIG_HAVE_DYNAMIC_FTRACE=y
 CONFIG_HAVE_EBPF_JIT=y
@@ -122,8 +123,10 @@ CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
 CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
 CONFIG_HAVE_FUNCTION_TRACER=y
 CONFIG_HAVE_GENERIC_DMA_COHERENT=y
+CONFIG_HAVE_IDE=y
 CONFIG_HAVE_IRQ_EXIT_ON_IRQ_STACK=y
 CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
+CONFIG_HAVE_KVM=y
 CONFIG_HAVE_LATENCYTOP_SUPPORT=y
 CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y
 CONFIG_HAVE_MEMBLOCK=y
@@ -159,14 +162,14 @@ CONFIG_MDIO_OCTEON=y
 CONFIG_MEMFD_CREATE=y
 CONFIG_MIGRATION=y
 CONFIG_MIPS=y
-CONFIG_MIPS32_COMPAT=y
-CONFIG_MIPS32_N32=y
-CONFIG_MIPS32_O32=y
+# CONFIG_MIPS32_N32 is not set
+# CONFIG_MIPS32_O32 is not set
 CONFIG_MIPS_ASID_BITS=8
 CONFIG_MIPS_ASID_SHIFT=0
 # CONFIG_MIPS_CMDLINE_DTB_EXTEND is not set
 CONFIG_MIPS_CMDLINE_FROM_BOOTLOADER=y
 # CONFIG_MIPS_CMDLINE_FROM_DTB is not set
+CONFIG_MIPS_EBPF_JIT=y
 # CONFIG_MIPS_ELF_APPENDED_DTB is not set
 CONFIG_MIPS_L1_CACHE_SHIFT=7
 CONFIG_MIPS_L1_CACHE_SHIFT_7=y
@@ -270,4 +273,5 @@ CONFIG_VM_EVENT_COUNTERS=y
 CONFIG_WATCHDOG_CORE=y
 CONFIG_WEAK_ORDERING=y
 CONFIG_XPS=y
+CONFIG_ZLIB_INFLATE=y
 CONFIG_ZONE_DMA32=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
