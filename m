Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC3F1ACC6
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 May 2019 17:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0lzbXMmF/NqbzM4tJvXNaBKsGn5ydqeeDmoI/tdEEQI=; b=hFKcIZKu078PPJ
	U7ZwzWpbOSll0ca9NWEIGvOHGO+BEi0gtr986LuS59D7dsyfYOKO7uw1abC4phHjUdzm6sgxohrgc
	xQpmGhB+A2ioq7zL/7iOAJcwjE8hlN7SUbnJ7QQdEwakjE4n7FzZHFXUkudcr03EbY3/FwSl7tVYb
	264me2oYGXK+8unj3hx7ipRtgTKgYnRk2YSPlsVYUPGL+FLOQqYzd5FdNtweTQCawXWqdBO38JpoB
	5l4Ol/SXqKq7/U+D11DzTkYtIV0qgl5OBSDAhtAcDWloK+FaxDQPx1I+PHHZMzv0i0C0twcSfurhr
	Q7FzLuOdGBfJK5jalkTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqL3-0004UW-5d; Sun, 12 May 2019 15:24:33 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqKv-0004Tz-6Z
 for openwrt-devel@lists.openwrt.org; Sun, 12 May 2019 15:24:27 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id D319A4E9C5;
 Sun, 12 May 2019 17:24:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id GcUOkbqCKF7B; Sun, 12 May 2019 17:24:12 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 May 2019 17:24:06 +0200
Message-Id: <20190512152406.13992-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_082425_536850_E26E3165 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] strace: Update to version 5.0
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The removed patch was merged upstream.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/devel/strace/Makefile                 |  4 +-
 .../patches/001-mips-o32-fix-build.patch      | 91 -------------------
 ...00-workaround--pt-reg-collisions-ppc.patch | 10 +-
 3 files changed, 7 insertions(+), 98 deletions(-)
 delete mode 100644 package/devel/strace/patches/001-mips-o32-fix-build.patch

diff --git a/package/devel/strace/Makefile b/package/devel/strace/Makefile
index b342a8c0d0..2d4332bf79 100644
--- a/package/devel/strace/Makefile
+++ b/package/devel/strace/Makefile
@@ -9,12 +9,12 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=strace
-PKG_VERSION:=4.26
+PKG_VERSION:=5.0
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://strace.io/files/$(PKG_VERSION)
-PKG_HASH:=7c4d2ffeef4f7d1cdc71062ca78d1130eb52f947c2fca82f59f6a1183bfa1e1c
+PKG_HASH:=3b7ad77eb2b81dc6078046a9cc56eed5242b67b63748e7fc28f7c2daf4e647da
 
 PKG_LICENSE:=BSD-3c
 PKG_LICENSE_FILES:=COPYRIGHT
diff --git a/package/devel/strace/patches/001-mips-o32-fix-build.patch b/package/devel/strace/patches/001-mips-o32-fix-build.patch
deleted file mode 100644
index 71dbf70da8..0000000000
--- a/package/devel/strace/patches/001-mips-o32-fix-build.patch
+++ /dev/null
@@ -1,91 +0,0 @@
-From 2c8b6de913973274e877639658e9e7273a012adb Mon Sep 17 00:00:00 2001
-From: "Dmitry V. Levin" <ldv@altlinux.org>
-Date: Tue, 8 Jan 2019 19:23:44 +0000
-Subject: [PATCH] mips o32: fix build
-
-Commit 917c2ccf3a67 "Refactor stack pointers" moved mips_REG_* macros
-from linux/mips/arch_regs.h to linux/mips/arch_regs.c because these
-macros are no longer used outside syscall.c or files included by
-syscall.c, but this caused a build regression on mips o32 because
-decode_syscall_subcall() uses mips_REG_SP prior to its definition.
-
-* syscall.c (decode_syscall_subcall): Move ...
-* linux/mips/get_syscall_args.c: ... here.
-* NEWS: Mention this fix.
-
-Reported-by: Baruch Siach <baruch@tkos.co.il>
-Fixes: v4.26~61 "Refactor stack pointers"
----
- NEWS                          |  1 +
- linux/mips/get_syscall_args.c | 26 ++++++++++++++++++++++++++
- syscall.c                     | 27 ++-------------------------
- 3 files changed, 29 insertions(+), 25 deletions(-)
-
---- a/linux/mips/get_syscall_args.c
-+++ b/linux/mips/get_syscall_args.c
-@@ -37,3 +37,29 @@ arch_get_syscall_args(struct tcb *tcp)
- #endif
- 	return 1;
- }
-+
-+#ifdef SYS_syscall_subcall
-+static void
-+decode_syscall_subcall(struct tcb *tcp)
-+{
-+	if (!scno_is_valid(tcp->u_arg[0]))
-+		return;
-+	tcp->scno = tcp->u_arg[0];
-+	tcp->qual_flg = qual_flags(tcp->scno);
-+	tcp->s_ent = &sysent[tcp->scno];
-+	memmove(&tcp->u_arg[0], &tcp->u_arg[1],
-+		sizeof(tcp->u_arg) - sizeof(tcp->u_arg[0]));
-+	/*
-+	 * Fetching the last arg of 7-arg syscalls (fadvise64_64
-+	 * and sync_file_range) requires additional code,
-+	 * see linux/mips/get_syscall_args.c
-+	 */
-+	if (tcp->s_ent->nargs == MAX_ARGS) {
-+		if (umoven(tcp,
-+			   mips_REG_SP + MAX_ARGS * sizeof(tcp->u_arg[0]),
-+			   sizeof(tcp->u_arg[0]),
-+			   &tcp->u_arg[MAX_ARGS - 1]) < 0)
-+		tcp->u_arg[MAX_ARGS - 1] = 0;
-+	}
-+}
-+#endif /* SYS_syscall_subcall */
---- a/syscall.c
-+++ b/syscall.c
-@@ -349,31 +349,8 @@ decode_ipc_subcall(struct tcb *tcp)
- #endif /* SYS_ipc_subcall */
- 
- #ifdef SYS_syscall_subcall
--static void
--decode_syscall_subcall(struct tcb *tcp)
--{
--	if (!scno_is_valid(tcp->u_arg[0]))
--		return;
--	tcp->scno = tcp->u_arg[0];
--	tcp->qual_flg = qual_flags(tcp->scno);
--	tcp->s_ent = &sysent[tcp->scno];
--	memmove(&tcp->u_arg[0], &tcp->u_arg[1],
--		sizeof(tcp->u_arg) - sizeof(tcp->u_arg[0]));
--# ifdef LINUX_MIPSO32
--	/*
--	 * Fetching the last arg of 7-arg syscalls (fadvise64_64
--	 * and sync_file_range) requires additional code,
--	 * see linux/mips/get_syscall_args.c
--	 */
--	if (tcp->s_ent->nargs == MAX_ARGS) {
--		if (umoven(tcp,
--			   mips_REG_SP + MAX_ARGS * sizeof(tcp->u_arg[0]),
--			   sizeof(tcp->u_arg[0]),
--			   &tcp->u_arg[MAX_ARGS - 1]) < 0)
--		tcp->u_arg[MAX_ARGS - 1] = 0;
--	}
--# endif /* LINUX_MIPSO32 */
--}
-+/* The implementation is architecture specific.  */
-+static void decode_syscall_subcall(struct tcb *);
- #endif /* SYS_syscall_subcall */
- 
- static void
diff --git a/package/devel/strace/patches/100-workaround--pt-reg-collisions-ppc.patch b/package/devel/strace/patches/100-workaround--pt-reg-collisions-ppc.patch
index 9560804a7a..93e2980749 100644
--- a/package/devel/strace/patches/100-workaround--pt-reg-collisions-ppc.patch
+++ b/package/devel/strace/patches/100-workaround--pt-reg-collisions-ppc.patch
@@ -1,17 +1,17 @@
 --- a/ptrace.h
 +++ b/ptrace.h
 @@ -30,7 +30,14 @@
- # define ptrace_peeksiginfo_args XXX_ptrace_peeksiginfo_args
- #endif
+ #  define ptrace_peeksiginfo_args XXX_ptrace_peeksiginfo_args
+ # endif
  
 +#if POWERPC
 +#include <linux/types.h>
 +#define __ASSEMBLY__
 +#endif
- #include <linux/ptrace.h>
+ # include <linux/ptrace.h>
 +#if POWERPC
 +#undef __ASSEMBLY__
 +#endif
  
- #ifdef HAVE_STRUCT_IA64_FPREG
- # undef ia64_fpreg
+ # ifdef HAVE_STRUCT_IA64_FPREG
+ #  undef ia64_fpreg
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
