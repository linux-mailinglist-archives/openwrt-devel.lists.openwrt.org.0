Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F3C1ACC1
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 May 2019 17:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FttanfyCnfpoTtPH2Fw7vw/+V07Q6Ku+Op/UG2dZySs=; b=TJWh6yPGhli41D
	7HzlttswYcSu9By2NcrmR1efL8bEEEJc2DVyDueIU5sOQBF0iajJ1VZ0PPNR9V2TQIXyT1LAYxIEO
	KlqKvXSPsFZ6cq+mAuSCEOtR7Fm97FRm9nhIzq6Q/SYRJ1ZTnXFVZe7TOEg/TQVLtkfpJEz8JX8j5
	kgtHsx5oYa2Q6bVtFzPuFPc21zV/WqNbrggVQeUkHLpY7n1PIBaqvSBFwfxdNvpWK6aCYm6ZIKsRx
	WSaC9p5uN1VQFy9zkURlcn1VGZtcrazf6k0LHo0OCBKTnwZjB8vfdWDeeK8OEmYiHGvcLUwOHyfWt
	FaOlyMZbMmdOmUQhfeeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqIh-0003DV-5F; Sun, 12 May 2019 15:22:07 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqIV-00034V-Ht
 for openwrt-devel@lists.openwrt.org; Sun, 12 May 2019 15:21:59 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 56EED4E96B;
 Sun, 12 May 2019 17:21:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id gH3XE9aOJi5X; Sun, 12 May 2019 17:21:43 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 May 2019 17:21:23 +0200
Message-Id: <20190512152123.13487-2-hauke@hauke-m.de>
In-Reply-To: <20190512152123.13487-1-hauke@hauke-m.de>
References: <20190512152123.13487-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_082155_856982_51A7B84C 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 2/2] malta: Deactivate MIPS O32 and N32
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
 target/linux/malta/be64/config-default | 9 +++------
 target/linux/malta/le64/config-default | 9 +++------
 2 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/target/linux/malta/be64/config-default b/target/linux/malta/be64/config-default
index 67d017d7ab..3792b7fce8 100644
--- a/target/linux/malta/be64/config-default
+++ b/target/linux/malta/be64/config-default
@@ -5,9 +5,6 @@ CONFIG_ARCH_MMAP_RND_BITS=12
 CONFIG_ARCH_MMAP_RND_BITS_MAX=18
 CONFIG_ARCH_MMAP_RND_BITS_MIN=12
 CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
-CONFIG_ARCH_WANT_COMPAT_IPC_PARSE_VERSION=y
-CONFIG_ARCH_WANT_OLD_COMPAT_IPC=y
-CONFIG_BINFMT_ELF32=y
 CONFIG_CPU_BIG_ENDIAN=y
 # CONFIG_CPU_LITTLE_ENDIAN is not set
 CONFIG_CPU_MIPS64=y
@@ -20,9 +17,9 @@ CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
 CONFIG_HAVE_EBPF_JIT=y
 CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
 # CONFIG_HUGETLBFS is not set
-CONFIG_MIPS32_COMPAT=y
-CONFIG_MIPS32_N32=y
-CONFIG_MIPS32_O32=y
+# CONFIG_MIPS32_N32 is not set
+# CONFIG_MIPS32_O32 is not set
+CONFIG_MIPS_EBPF_JIT=y
 # CONFIG_MIPS_VA_BITS_48 is not set
 CONFIG_MODULES_USE_ELF_RELA=y
 CONFIG_PCI_BUS_ADDR_T_64BIT=y
diff --git a/target/linux/malta/le64/config-default b/target/linux/malta/le64/config-default
index 87bb0fb6b7..ff4496382d 100644
--- a/target/linux/malta/le64/config-default
+++ b/target/linux/malta/le64/config-default
@@ -5,9 +5,6 @@ CONFIG_ARCH_MMAP_RND_BITS=12
 CONFIG_ARCH_MMAP_RND_BITS_MAX=18
 CONFIG_ARCH_MMAP_RND_BITS_MIN=12
 CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
-CONFIG_ARCH_WANT_COMPAT_IPC_PARSE_VERSION=y
-CONFIG_ARCH_WANT_OLD_COMPAT_IPC=y
-CONFIG_BINFMT_ELF32=y
 # CONFIG_CPU_BIG_ENDIAN is not set
 CONFIG_CPU_LITTLE_ENDIAN=y
 CONFIG_CPU_MIPS64=y
@@ -20,9 +17,9 @@ CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
 CONFIG_HAVE_EBPF_JIT=y
 CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
 # CONFIG_HUGETLBFS is not set
-CONFIG_MIPS32_COMPAT=y
-CONFIG_MIPS32_N32=y
-CONFIG_MIPS32_O32=y
+# CONFIG_MIPS32_N32 is not set
+# CONFIG_MIPS32_O32 is not set
+CONFIG_MIPS_EBPF_JIT=y
 # CONFIG_MIPS_VA_BITS_48 is not set
 CONFIG_MODULES_USE_ELF_RELA=y
 CONFIG_PCI_BUS_ADDR_T_64BIT=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
