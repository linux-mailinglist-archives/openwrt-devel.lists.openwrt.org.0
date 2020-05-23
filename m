Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEE71DFAD0
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 21:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zumnq9lrcrqKHWwcNxxrG1n+gW8AHLY333G+4AAvqm0=; b=AcXLlcd/KGPCbb
	N0ih8OtV0G12ojuIoxtz1A6lcoAU94WKGTQWpJcBhbtRnQWxtXkWScjBZ4kRSKw9KIVGOm2tOMJ/6
	x566AA8MzWGzhChstFEkZvszUR3WKwcIO6QhIxaLww0ppCUVATAurASjdYcWYYaduYiQSvxawENjG
	bNCm/2ng3h3f/h29CTiUeTtYmY0lrtmBk3HK73kkj7ZW1n3htw3aWT+iNkWZDJytT1axPZt6ESTZq
	oa0MQtnKKeqranZ5rsde+j8w6BpVOI1YnbfJEq5p4HSZ7M+74A+ZaIQmdIxU1yu7rNxRUJr2nybeq
	eA6M5g68ajrkvCq58UlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcaFb-0006Up-Dk; Sat, 23 May 2020 19:56:07 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcaF3-00064S-F6
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 19:55:35 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 36E33264AF;
 Sat, 23 May 2020 21:55:29 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 23 May 2020 21:55:20 +0200
Message-Id: <7b8c635fb7946238734aec0ba68b6840fcec1896.1590262714.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590262714.git.mschiffer@universe-factory.net>
References: <cover.1590262714.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_125533_653520_F9215E91 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/2] musl: fix locking synchronization bug
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
Cc: Matthias Schiffer <mschiffer@universe-factory.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Import proposed upstream fix [2] for the critical locking
synchronization bug recently found in musl [1].

This affects all programs that are temporarily multithreaded, but then
return to single-threaded operation.

[1] https://www.openwall.com/lists/musl/2020/05/22/3
[2] https://www.openwall.com/lists/musl/2020/05/22/10

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 ...hreads_minus_1-as-relaxed-atomic-for.patch | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 toolchain/musl/patches/500-0002-don-t-use-libc.threads_minus_1-as-relaxed-atomic-for.patch

diff --git a/toolchain/musl/patches/500-0002-don-t-use-libc.threads_minus_1-as-relaxed-atomic-for.patch b/toolchain/musl/patches/500-0002-don-t-use-libc.threads_minus_1-as-relaxed-atomic-for.patch
new file mode 100644
index 000000000000..4ca51b0be0a2
--- /dev/null
+++ b/toolchain/musl/patches/500-0002-don-t-use-libc.threads_minus_1-as-relaxed-atomic-for.patch
@@ -0,0 +1,69 @@
+From e01b5939b38aea5ecbe41670643199825874b26c Mon Sep 17 00:00:00 2001
+From: Rich Felker <dalias@aerifal.cx>
+Date: Thu, 21 May 2020 23:32:45 -0400
+Subject: [PATCH 2/4] don't use libc.threads_minus_1 as relaxed atomic for
+ skipping locks
+
+after all but the last thread exits, the next thread to observe
+libc.threads_minus_1==0 and conclude that it can skip locking fails to
+synchronize with any changes to memory that were made by the
+last-exiting thread. this can produce data races.
+
+on some archs, at least x86, memory synchronization is unlikely to be
+a problem; however, with the inline locks in malloc, skipping the lock
+also eliminated the compiler barrier, and caused code that needed to
+re-check chunk in-use bits after obtaining the lock to reuse a stale
+value, possibly from before the process became single-threaded. this
+in turn produced corruption of the heap state.
+
+some uses of libc.threads_minus_1 remain, especially for allocation of
+new TLS in the dynamic linker; otherwise, it could be removed
+entirely. it's made non-volatile to reflect that the remaining
+accesses are only made under lock on the thread list.
+
+instead of libc.threads_minus_1, libc.threaded is now used for
+skipping locks. the difference is that libc.threaded is permanently
+true once an additional thread has been created. this will produce
+some performance regression in processes that are mostly
+single-threaded but occasionally creating threads. in the future it
+may be possible to bring back the full lock-skipping, but more care
+needs to be taken to produce a safe design.
+---
+ src/internal/libc.h | 2 +-
+ src/malloc/malloc.c | 2 +-
+ src/thread/__lock.c | 2 +-
+ 3 files changed, 3 insertions(+), 3 deletions(-)
+
+--- a/src/internal/libc.h
++++ b/src/internal/libc.h
+@@ -21,7 +21,7 @@ struct __libc {
+ 	int can_do_threads;
+ 	int threaded;
+ 	int secure;
+-	volatile int threads_minus_1;
++	int threads_minus_1;
+ 	size_t *auxv;
+ 	struct tls_module *tls_head;
+ 	size_t tls_size, tls_align, tls_cnt;
+--- a/src/malloc/malloc.c
++++ b/src/malloc/malloc.c
+@@ -26,7 +26,7 @@ int __malloc_replaced;
+ 
+ static inline void lock(volatile int *lk)
+ {
+-	if (libc.threads_minus_1)
++	if (libc.threaded)
+ 		while(a_swap(lk, 1)) __wait(lk, lk+1, 1, 1);
+ }
+ 
+--- a/src/thread/__lock.c
++++ b/src/thread/__lock.c
+@@ -18,7 +18,7 @@
+ 
+ void __lock(volatile int *l)
+ {
+-	if (!libc.threads_minus_1) return;
++	if (!libc.threaded) return;
+ 	/* fast path: INT_MIN for the lock, +1 for the congestion */
+ 	int current = a_cas(l, 0, INT_MIN + 1);
+ 	if (!current) return;
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
