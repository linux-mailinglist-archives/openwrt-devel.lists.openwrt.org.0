Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 365CD1DFACF
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 21:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dB5oO+q3z4L8BFm5QCNBDasg4xF0la2jtuHOQ40q/Z0=; b=dgoWkeb3sF5TDx
	4K6LtFVY0IqpwUzE+Oi+mTm/hLf/+zD+QsJXvm6K11GzsVW0EAu+d92sPMA7UscRdbPl+19LxtBQg
	OUqOMFjaa3Y+UwSi96zIiGI8AP+LAr6sEE07+g9Efppt0CDJI1vA5k3fDIQ34BFkhZ15mKXI3nEPx
	X6kXpHMWLhFkkYEUCPip87Xw9q0UwWlEGzSb5yUQbm58hk8SgOR8z8ymWfg/xqNrzEXI5xmSDiM0C
	q9Xnh6e5PKjRU/SsZylGXEzoHtr/Oqtjryni2NcjPmCT/ZsOGXWIHgUdwSyZZR6Zr1gFZUGhiBxeG
	9b0CPuNEEAM3wWgeXFDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcaFP-0006ER-D0; Sat, 23 May 2020 19:55:55 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcaF2-00064R-Qs
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 19:55:34 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 5978C264B0;
 Sat, 23 May 2020 21:55:29 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 23 May 2020 21:55:21 +0200
Message-Id: <368170de2dca67ac23dcd2803636b717f9992023.1590262714.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590262714.git.mschiffer@universe-factory.net>
References: <cover.1590262714.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_125533_158841_AE5C8195 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] musl: restore lock skipping for
 mostly-singlethreaded programs, and related patches
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

The remainder of the patch series proposed by upstream [2] for the locking
synchronization issue [1].

[1] https://www.openwall.com/lists/musl/2020/05/22/3
[2] https://www.openwall.com/lists/musl/2020/05/22/10

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 ...ist-unlink-in-pthread_exit-after-all.patch | 51 +++++++++++
 ...own-size-of-some-libc-struct-members.patch | 25 ++++++
 ...pping-for-processes-that-return-to-s.patch | 90 +++++++++++++++++++
 3 files changed, 166 insertions(+)
 create mode 100644 toolchain/musl/patches/500-0001-reorder-thread-list-unlink-in-pthread_exit-after-all.patch
 create mode 100644 toolchain/musl/patches/500-0003-cut-down-size-of-some-libc-struct-members.patch
 create mode 100644 toolchain/musl/patches/500-0004-restore-lock-skipping-for-processes-that-return-to-s.patch

diff --git a/toolchain/musl/patches/500-0001-reorder-thread-list-unlink-in-pthread_exit-after-all.patch b/toolchain/musl/patches/500-0001-reorder-thread-list-unlink-in-pthread_exit-after-all.patch
new file mode 100644
index 000000000000..d47f2f4108a6
--- /dev/null
+++ b/toolchain/musl/patches/500-0001-reorder-thread-list-unlink-in-pthread_exit-after-all.patch
@@ -0,0 +1,51 @@
+From 4d5aa20a94a2d3fae3e69289dc23ecafbd0c16c4 Mon Sep 17 00:00:00 2001
+From: Rich Felker <dalias@aerifal.cx>
+Date: Fri, 22 May 2020 17:35:14 -0400
+Subject: [PATCH 1/4] reorder thread list unlink in pthread_exit after all
+ locks
+
+since the backend for LOCK() skips locking if single-threaded, it's
+unsafe to make the process appear single-threaded before the last use
+of lock.
+
+this fixes potential unsynchronized access to a linked list via
+__dl_thread_cleanup.
+---
+ src/thread/pthread_create.c | 19 +++++++++++--------
+ 1 file changed, 11 insertions(+), 8 deletions(-)
+
+--- a/src/thread/pthread_create.c
++++ b/src/thread/pthread_create.c
+@@ -90,14 +90,7 @@ _Noreturn void __pthread_exit(void *resu
+ 		exit(0);
+ 	}
+ 
+-	/* At this point we are committed to thread termination. Unlink
+-	 * the thread from the list. This change will not be visible
+-	 * until the lock is released, which only happens after SYS_exit
+-	 * has been called, via the exit futex address pointing at the lock. */
+-	libc.threads_minus_1--;
+-	self->next->prev = self->prev;
+-	self->prev->next = self->next;
+-	self->prev = self->next = self;
++	/* At this point we are committed to thread termination. */
+ 
+ 	/* Process robust list in userspace to handle non-pshared mutexes
+ 	 * and the detached thread case where the robust list head will
+@@ -121,6 +114,16 @@ _Noreturn void __pthread_exit(void *resu
+ 	__do_orphaned_stdio_locks();
+ 	__dl_thread_cleanup();
+ 
++	/* Last, unlink thread from the list. This change will not be visible
++	 * until the lock is released, which only happens after SYS_exit
++	 * has been called, via the exit futex address pointing at the lock.
++	 * This needs to happen after any possible calls to LOCK() that might
++	 * skip locking if libc.threads_minus_1 is zero. */
++	libc.threads_minus_1--;
++	self->next->prev = self->prev;
++	self->prev->next = self->next;
++	self->prev = self->next = self;
++
+ 	/* This atomic potentially competes with a concurrent pthread_detach
+ 	 * call; the loser is responsible for freeing thread resources. */
+ 	int state = a_cas(&self->detach_state, DT_JOINABLE, DT_EXITING);
diff --git a/toolchain/musl/patches/500-0003-cut-down-size-of-some-libc-struct-members.patch b/toolchain/musl/patches/500-0003-cut-down-size-of-some-libc-struct-members.patch
new file mode 100644
index 000000000000..66504343979f
--- /dev/null
+++ b/toolchain/musl/patches/500-0003-cut-down-size-of-some-libc-struct-members.patch
@@ -0,0 +1,25 @@
+From f12888e9eb9eed60cc266b899dcafecb4752964a Mon Sep 17 00:00:00 2001
+From: Rich Felker <dalias@aerifal.cx>
+Date: Fri, 22 May 2020 17:25:38 -0400
+Subject: [PATCH 3/4] cut down size of some libc struct members
+
+these are all flags that can be single-byte values.
+---
+ src/internal/libc.h | 6 +++---
+ 1 file changed, 3 insertions(+), 3 deletions(-)
+
+--- a/src/internal/libc.h
++++ b/src/internal/libc.h
+@@ -18,9 +18,9 @@ struct tls_module {
+ };
+ 
+ struct __libc {
+-	int can_do_threads;
+-	int threaded;
+-	int secure;
++	char can_do_threads;
++	char threaded;
++	char secure;
+ 	int threads_minus_1;
+ 	size_t *auxv;
+ 	struct tls_module *tls_head;
diff --git a/toolchain/musl/patches/500-0004-restore-lock-skipping-for-processes-that-return-to-s.patch b/toolchain/musl/patches/500-0004-restore-lock-skipping-for-processes-that-return-to-s.patch
new file mode 100644
index 000000000000..83a6d0247a9f
--- /dev/null
+++ b/toolchain/musl/patches/500-0004-restore-lock-skipping-for-processes-that-return-to-s.patch
@@ -0,0 +1,90 @@
+From 8d81ba8c0bc6fe31136cb15c9c82ef4c24965040 Mon Sep 17 00:00:00 2001
+From: Rich Felker <dalias@aerifal.cx>
+Date: Fri, 22 May 2020 17:45:47 -0400
+Subject: [PATCH 4/4] restore lock-skipping for processes that return to
+ single-threaded state
+
+the design used here relies on the barrier provided by the first lock
+operation after the process returns to single-threaded state to
+synchronize with actions by the last thread that exited. by storing
+the intent to change modes in the same object used to detect whether
+locking is needed, it's possible to avoid an extra (possibly costly)
+memory load after the lock is taken.
+---
+ src/internal/libc.h         | 1 +
+ src/malloc/malloc.c         | 5 ++++-
+ src/thread/__lock.c         | 4 +++-
+ src/thread/pthread_create.c | 8 ++++----
+ 4 files changed, 12 insertions(+), 6 deletions(-)
+
+--- a/src/internal/libc.h
++++ b/src/internal/libc.h
+@@ -21,6 +21,7 @@ struct __libc {
+ 	char can_do_threads;
+ 	char threaded;
+ 	char secure;
++	volatile signed char need_locks;
+ 	int threads_minus_1;
+ 	size_t *auxv;
+ 	struct tls_module *tls_head;
+--- a/src/malloc/malloc.c
++++ b/src/malloc/malloc.c
+@@ -26,8 +26,11 @@ int __malloc_replaced;
+ 
+ static inline void lock(volatile int *lk)
+ {
+-	if (libc.threaded)
++	int need_locks = libc.need_locks;
++	if (need_locks) {
+ 		while(a_swap(lk, 1)) __wait(lk, lk+1, 1, 1);
++		if (need_locks < 0) libc.need_locks = 0;
++	}
+ }
+ 
+ static inline void unlock(volatile int *lk)
+--- a/src/thread/__lock.c
++++ b/src/thread/__lock.c
+@@ -18,9 +18,11 @@
+ 
+ void __lock(volatile int *l)
+ {
+-	if (!libc.threaded) return;
++	int need_locks = libc.need_locks;
++	if (!need_locks) return;
+ 	/* fast path: INT_MIN for the lock, +1 for the congestion */
+ 	int current = a_cas(l, 0, INT_MIN + 1);
++	if (need_locks < 0) libc.need_locks = 0;
+ 	if (!current) return;
+ 	/* A first spin loop, for medium congestion. */
+ 	for (unsigned i = 0; i < 10; ++i) {
+--- a/src/thread/pthread_create.c
++++ b/src/thread/pthread_create.c
+@@ -118,8 +118,8 @@ _Noreturn void __pthread_exit(void *resu
+ 	 * until the lock is released, which only happens after SYS_exit
+ 	 * has been called, via the exit futex address pointing at the lock.
+ 	 * This needs to happen after any possible calls to LOCK() that might
+-	 * skip locking if libc.threads_minus_1 is zero. */
+-	libc.threads_minus_1--;
++	 * skip locking if process appears single-threaded. */
++	if (!--libc.threads_minus_1) libc.need_locks = -1;
+ 	self->next->prev = self->prev;
+ 	self->prev->next = self->next;
+ 	self->prev = self->next = self;
+@@ -339,7 +339,7 @@ int __pthread_create(pthread_t *restrict
+ 		~(1UL<<((SIGCANCEL-1)%(8*sizeof(long))));
+ 
+ 	__tl_lock();
+-	libc.threads_minus_1++;
++	if (!libc.threads_minus_1++) libc.need_locks = 1;
+ 	ret = __clone((c11 ? start_c11 : start), stack, flags, args, &new->tid, TP_ADJ(new), &__thread_list_lock);
+ 
+ 	/* All clone failures translate to EAGAIN. If explicit scheduling
+@@ -363,7 +363,7 @@ int __pthread_create(pthread_t *restrict
+ 		new->next->prev = new;
+ 		new->prev->next = new;
+ 	} else {
+-		libc.threads_minus_1--;
++		if (!--libc.threads_minus_1) libc.need_locks = 0;
+ 	}
+ 	__tl_unlock();
+ 	__restore_sigs(&set);
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
