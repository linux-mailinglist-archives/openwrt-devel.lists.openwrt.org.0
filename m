Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46538DDB45
	for <lists+openwrt-devel@lfdr.de>; Sun, 20 Oct 2019 00:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fMHNLxu9ZXeHsvExiqgxQltoV5KL7ex7lSKJsashgpg=; b=rZTAerwah8Nyyt
	4Z+iknVXeXIwzONJeiHrLvREZN2kk3UBhK/NDz31PW27XEPdjAlXI7x0IReIbrSNmXQEVxJg5SDgS
	dCquGrBOjafYReJW9nsGIbSDZt5T8ZlUCn8UwcezIv0p+axYlKfFV4nP14YOaKFwTXSuOTsOmX+xe
	HhowIW7ZudRPp7WGl5qSV0EiUywtDe+AmGZi1RdmH1HnkosmSOQQib5A1X04I/Jh3+glw3PI3jRPy
	QvM2KYd7bKBGt9qVHZYh65h0WBHeqF0Fz1QDZQ4FbS+UlulpSlQYCY2oaNq58VX64XfFD2pUVGY4r
	EGg8UcQxXui6EtvNSU/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLwmu-0001oY-3k; Sat, 19 Oct 2019 22:01:28 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLwml-0001o7-6u
 for openwrt-devel@lists.openwrt.org; Sat, 19 Oct 2019 22:01:21 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id 26A63A2118;
 Sun, 20 Oct 2019 00:01:16 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id UPJe__s4U83O; Sun, 20 Oct 2019 00:01:12 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 20 Oct 2019 00:00:59 +0200
Message-Id: <20191019220059.31342-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_150119_561239_277F01DD 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] kernel: Fix arm64 include files
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch fixes the build of gdb and strace on arm64 targets with
kernel 4.19.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 ...angle-uapi-asm-ptrace.h-from-uapi-as.patch | 280 ++++++++++++++++++
 1 file changed, 280 insertions(+)
 create mode 100644 target/linux/generic/backport-4.19/210-arm64-sve-Disentangle-uapi-asm-ptrace.h-from-uapi-as.patch

diff --git a/target/linux/generic/backport-4.19/210-arm64-sve-Disentangle-uapi-asm-ptrace.h-from-uapi-as.patch b/target/linux/generic/backport-4.19/210-arm64-sve-Disentangle-uapi-asm-ptrace.h-from-uapi-as.patch
new file mode 100644
index 0000000000..f061adf3e7
--- /dev/null
+++ b/target/linux/generic/backport-4.19/210-arm64-sve-Disentangle-uapi-asm-ptrace.h-from-uapi-as.patch
@@ -0,0 +1,280 @@
+From 7a06dfecb95d8a5ac6b136fce003bbedb3176000 Mon Sep 17 00:00:00 2001
+From: Dave Martin <Dave.Martin@arm.com>
+Date: Fri, 4 Jan 2019 13:09:51 +0000
+Subject: [PATCH] arm64/sve: Disentangle <uapi/asm/ptrace.h> from
+ <uapi/asm/sigcontext.h>
+
+Currently, <uapi/asm/sigcontext.h> provides common definitions for
+describing SVE context structures that are also used by the ptrace
+definitions in <uapi/asm/ptrace.h>.
+
+For this reason, a #include of <asm/sigcontext.h> was added in
+ptrace.h, but it this turns out that this can interact badly with
+userspace code that tries to include ptrace.h on top of the libc
+headers (which may provide their own shadow definitions for
+sigcontext.h).
+
+To make the headers easier for userspace to consume, this patch
+bounces the common definitions into an __SVE_* namespace and moves
+them to a backend header <uapi/asm/sve_context.h> that can be
+included by the other headers as appropriate.  This should allow
+ptrace.h to be used alongside libc's sigcontext.h (if any) without
+ill effects.
+
+This should make the situation unambiguous: <asm/sigcontext.h> is
+the header to include for the sigframe-specific definitions, while
+<asm/ptrace.h> is the header to include for ptrace-specific
+definitions.
+
+To avoid conflicting with existing usage, <asm/sigcontext.h>
+remains the canonical way to get the common definitions for
+SVE_VQ_MIN, sve_vq_from_vl() etc., both in userspace and in the
+kernel: relying on these being defined as a side effect of
+including just <asm/ptrace.h> was never intended to be safe.
+
+Signed-off-by: Dave Martin <Dave.Martin@arm.com>
+Signed-off-by: Will Deacon <will.deacon@arm.com>
+---
+ arch/arm64/include/uapi/asm/ptrace.h      | 39 ++++++++--------
+ arch/arm64/include/uapi/asm/sigcontext.h  | 56 +++++++++++------------
+ arch/arm64/include/uapi/asm/sve_context.h | 53 +++++++++++++++++++++
+ 3 files changed, 99 insertions(+), 49 deletions(-)
+ create mode 100644 arch/arm64/include/uapi/asm/sve_context.h
+
+--- a/arch/arm64/include/uapi/asm/ptrace.h
++++ b/arch/arm64/include/uapi/asm/ptrace.h
+@@ -23,7 +23,7 @@
+ #include <linux/types.h>
+ 
+ #include <asm/hwcap.h>
+-#include <asm/sigcontext.h>
++#include <asm/sve_context.h>
+ 
+ 
+ /*
+@@ -128,9 +128,9 @@ struct user_sve_header {
+  */
+ 
+ /* Offset from the start of struct user_sve_header to the register data */
+-#define SVE_PT_REGS_OFFSET					\
+-	((sizeof(struct user_sve_header) + (SVE_VQ_BYTES - 1))	\
+-		/ SVE_VQ_BYTES * SVE_VQ_BYTES)
++#define SVE_PT_REGS_OFFSET						\
++	((sizeof(struct user_sve_header) + (__SVE_VQ_BYTES - 1))	\
++		/ __SVE_VQ_BYTES * __SVE_VQ_BYTES)
+ 
+ /*
+  * The register data content and layout depends on the value of the
+@@ -176,39 +176,36 @@ struct user_sve_header {
+  * Additional data might be appended in the future.
+  */
+ 
+-#define SVE_PT_SVE_ZREG_SIZE(vq)	SVE_SIG_ZREG_SIZE(vq)
+-#define SVE_PT_SVE_PREG_SIZE(vq)	SVE_SIG_PREG_SIZE(vq)
+-#define SVE_PT_SVE_FFR_SIZE(vq)		SVE_SIG_FFR_SIZE(vq)
++#define SVE_PT_SVE_ZREG_SIZE(vq)	__SVE_ZREG_SIZE(vq)
++#define SVE_PT_SVE_PREG_SIZE(vq)	__SVE_PREG_SIZE(vq)
++#define SVE_PT_SVE_FFR_SIZE(vq)		__SVE_FFR_SIZE(vq)
+ #define SVE_PT_SVE_FPSR_SIZE		sizeof(__u32)
+ #define SVE_PT_SVE_FPCR_SIZE		sizeof(__u32)
+ 
+-#define __SVE_SIG_TO_PT(offset) \
+-	((offset) - SVE_SIG_REGS_OFFSET + SVE_PT_REGS_OFFSET)
+-
+ #define SVE_PT_SVE_OFFSET		SVE_PT_REGS_OFFSET
+ 
+ #define SVE_PT_SVE_ZREGS_OFFSET \
+-	__SVE_SIG_TO_PT(SVE_SIG_ZREGS_OFFSET)
++	(SVE_PT_REGS_OFFSET + __SVE_ZREGS_OFFSET)
+ #define SVE_PT_SVE_ZREG_OFFSET(vq, n) \
+-	__SVE_SIG_TO_PT(SVE_SIG_ZREG_OFFSET(vq, n))
++	(SVE_PT_REGS_OFFSET + __SVE_ZREG_OFFSET(vq, n))
+ #define SVE_PT_SVE_ZREGS_SIZE(vq) \
+-	(SVE_PT_SVE_ZREG_OFFSET(vq, SVE_NUM_ZREGS) - SVE_PT_SVE_ZREGS_OFFSET)
++	(SVE_PT_SVE_ZREG_OFFSET(vq, __SVE_NUM_ZREGS) - SVE_PT_SVE_ZREGS_OFFSET)
+ 
+ #define SVE_PT_SVE_PREGS_OFFSET(vq) \
+-	__SVE_SIG_TO_PT(SVE_SIG_PREGS_OFFSET(vq))
++	(SVE_PT_REGS_OFFSET + __SVE_PREGS_OFFSET(vq))
+ #define SVE_PT_SVE_PREG_OFFSET(vq, n) \
+-	__SVE_SIG_TO_PT(SVE_SIG_PREG_OFFSET(vq, n))
++	(SVE_PT_REGS_OFFSET + __SVE_PREG_OFFSET(vq, n))
+ #define SVE_PT_SVE_PREGS_SIZE(vq) \
+-	(SVE_PT_SVE_PREG_OFFSET(vq, SVE_NUM_PREGS) - \
++	(SVE_PT_SVE_PREG_OFFSET(vq, __SVE_NUM_PREGS) - \
+ 		SVE_PT_SVE_PREGS_OFFSET(vq))
+ 
+ #define SVE_PT_SVE_FFR_OFFSET(vq) \
+-	__SVE_SIG_TO_PT(SVE_SIG_FFR_OFFSET(vq))
++	(SVE_PT_REGS_OFFSET + __SVE_FFR_OFFSET(vq))
+ 
+ #define SVE_PT_SVE_FPSR_OFFSET(vq)				\
+ 	((SVE_PT_SVE_FFR_OFFSET(vq) + SVE_PT_SVE_FFR_SIZE(vq) +	\
+-			(SVE_VQ_BYTES - 1))			\
+-		/ SVE_VQ_BYTES * SVE_VQ_BYTES)
++			(__SVE_VQ_BYTES - 1))			\
++		/ __SVE_VQ_BYTES * __SVE_VQ_BYTES)
+ #define SVE_PT_SVE_FPCR_OFFSET(vq) \
+ 	(SVE_PT_SVE_FPSR_OFFSET(vq) + SVE_PT_SVE_FPSR_SIZE)
+ 
+@@ -219,8 +216,8 @@ struct user_sve_header {
+ 
+ #define SVE_PT_SVE_SIZE(vq, flags)					\
+ 	((SVE_PT_SVE_FPCR_OFFSET(vq) + SVE_PT_SVE_FPCR_SIZE		\
+-			- SVE_PT_SVE_OFFSET + (SVE_VQ_BYTES - 1))	\
+-		/ SVE_VQ_BYTES * SVE_VQ_BYTES)
++			- SVE_PT_SVE_OFFSET + (__SVE_VQ_BYTES - 1))	\
++		/ __SVE_VQ_BYTES * __SVE_VQ_BYTES)
+ 
+ #define SVE_PT_SIZE(vq, flags)						\
+ 	 (((flags) & SVE_PT_REGS_MASK) == SVE_PT_REGS_SVE ?		\
+--- a/arch/arm64/include/uapi/asm/sigcontext.h
++++ b/arch/arm64/include/uapi/asm/sigcontext.h
+@@ -130,6 +130,8 @@ struct sve_context {
+ 
+ #endif /* !__ASSEMBLY__ */
+ 
++#include <asm/sve_context.h>
++
+ /*
+  * The SVE architecture leaves space for future expansion of the
+  * vector length beyond its initial architectural limit of 2048 bits
+@@ -138,21 +140,20 @@ struct sve_context {
+  * See linux/Documentation/arm64/sve.txt for a description of the VL/VQ
+  * terminology.
+  */
+-#define SVE_VQ_BYTES		16	/* number of bytes per quadword */
++#define SVE_VQ_BYTES		__SVE_VQ_BYTES	/* bytes per quadword */
+ 
+-#define SVE_VQ_MIN		1
+-#define SVE_VQ_MAX		512
++#define SVE_VQ_MIN		__SVE_VQ_MIN
++#define SVE_VQ_MAX		__SVE_VQ_MAX
+ 
+-#define SVE_VL_MIN		(SVE_VQ_MIN * SVE_VQ_BYTES)
+-#define SVE_VL_MAX		(SVE_VQ_MAX * SVE_VQ_BYTES)
++#define SVE_VL_MIN		__SVE_VL_MIN
++#define SVE_VL_MAX		__SVE_VL_MAX
+ 
+-#define SVE_NUM_ZREGS		32
+-#define SVE_NUM_PREGS		16
++#define SVE_NUM_ZREGS		__SVE_NUM_ZREGS
++#define SVE_NUM_PREGS		__SVE_NUM_PREGS
+ 
+-#define sve_vl_valid(vl) \
+-	((vl) % SVE_VQ_BYTES == 0 && (vl) >= SVE_VL_MIN && (vl) <= SVE_VL_MAX)
+-#define sve_vq_from_vl(vl)	((vl) / SVE_VQ_BYTES)
+-#define sve_vl_from_vq(vq)	((vq) * SVE_VQ_BYTES)
++#define sve_vl_valid(vl)	__sve_vl_valid(vl)
++#define sve_vq_from_vl(vl)	__sve_vq_from_vl(vl)
++#define sve_vl_from_vq(vq)	__sve_vl_from_vq(vq)
+ 
+ /*
+  * If the SVE registers are currently live for the thread at signal delivery,
+@@ -205,34 +206,33 @@ struct sve_context {
+  * Additional data might be appended in the future.
+  */
+ 
+-#define SVE_SIG_ZREG_SIZE(vq)	((__u32)(vq) * SVE_VQ_BYTES)
+-#define SVE_SIG_PREG_SIZE(vq)	((__u32)(vq) * (SVE_VQ_BYTES / 8))
+-#define SVE_SIG_FFR_SIZE(vq)	SVE_SIG_PREG_SIZE(vq)
++#define SVE_SIG_ZREG_SIZE(vq)	__SVE_ZREG_SIZE(vq)
++#define SVE_SIG_PREG_SIZE(vq)	__SVE_PREG_SIZE(vq)
++#define SVE_SIG_FFR_SIZE(vq)	__SVE_FFR_SIZE(vq)
+ 
+ #define SVE_SIG_REGS_OFFSET					\
+-	((sizeof(struct sve_context) + (SVE_VQ_BYTES - 1))	\
+-		/ SVE_VQ_BYTES * SVE_VQ_BYTES)
++	((sizeof(struct sve_context) + (__SVE_VQ_BYTES - 1))	\
++		/ __SVE_VQ_BYTES * __SVE_VQ_BYTES)
+ 
+-#define SVE_SIG_ZREGS_OFFSET	SVE_SIG_REGS_OFFSET
++#define SVE_SIG_ZREGS_OFFSET \
++		(SVE_SIG_REGS_OFFSET + __SVE_ZREGS_OFFSET)
+ #define SVE_SIG_ZREG_OFFSET(vq, n) \
+-	(SVE_SIG_ZREGS_OFFSET + SVE_SIG_ZREG_SIZE(vq) * (n))
+-#define SVE_SIG_ZREGS_SIZE(vq) \
+-	(SVE_SIG_ZREG_OFFSET(vq, SVE_NUM_ZREGS) - SVE_SIG_ZREGS_OFFSET)
++		(SVE_SIG_REGS_OFFSET + __SVE_ZREG_OFFSET(vq, n))
++#define SVE_SIG_ZREGS_SIZE(vq) __SVE_ZREGS_SIZE(vq)
+ 
+ #define SVE_SIG_PREGS_OFFSET(vq) \
+-	(SVE_SIG_ZREGS_OFFSET + SVE_SIG_ZREGS_SIZE(vq))
++		(SVE_SIG_REGS_OFFSET + __SVE_PREGS_OFFSET(vq))
+ #define SVE_SIG_PREG_OFFSET(vq, n) \
+-	(SVE_SIG_PREGS_OFFSET(vq) + SVE_SIG_PREG_SIZE(vq) * (n))
+-#define SVE_SIG_PREGS_SIZE(vq) \
+-	(SVE_SIG_PREG_OFFSET(vq, SVE_NUM_PREGS) - SVE_SIG_PREGS_OFFSET(vq))
++		(SVE_SIG_REGS_OFFSET + __SVE_PREG_OFFSET(vq, n))
++#define SVE_SIG_PREGS_SIZE(vq) __SVE_PREGS_SIZE(vq)
+ 
+ #define SVE_SIG_FFR_OFFSET(vq) \
+-	(SVE_SIG_PREGS_OFFSET(vq) + SVE_SIG_PREGS_SIZE(vq))
++		(SVE_SIG_REGS_OFFSET + __SVE_FFR_OFFSET(vq))
+ 
+ #define SVE_SIG_REGS_SIZE(vq) \
+-	(SVE_SIG_FFR_OFFSET(vq) + SVE_SIG_FFR_SIZE(vq) - SVE_SIG_REGS_OFFSET)
+-
+-#define SVE_SIG_CONTEXT_SIZE(vq) (SVE_SIG_REGS_OFFSET + SVE_SIG_REGS_SIZE(vq))
++		(__SVE_FFR_OFFSET(vq) + __SVE_FFR_SIZE(vq))
+ 
++#define SVE_SIG_CONTEXT_SIZE(vq) \
++		(SVE_SIG_REGS_OFFSET + SVE_SIG_REGS_SIZE(vq))
+ 
+ #endif /* _UAPI__ASM_SIGCONTEXT_H */
+--- /dev/null
++++ b/arch/arm64/include/uapi/asm/sve_context.h
+@@ -0,0 +1,53 @@
++/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
++/* Copyright (C) 2017-2018 ARM Limited */
++
++/*
++ * For use by other UAPI headers only.
++ * Do not make direct use of header or its definitions.
++ */
++
++#ifndef _UAPI__ASM_SVE_CONTEXT_H
++#define _UAPI__ASM_SVE_CONTEXT_H
++
++#include <linux/types.h>
++
++#define __SVE_VQ_BYTES		16	/* number of bytes per quadword */
++
++#define __SVE_VQ_MIN		1
++#define __SVE_VQ_MAX		512
++
++#define __SVE_VL_MIN		(__SVE_VQ_MIN * __SVE_VQ_BYTES)
++#define __SVE_VL_MAX		(__SVE_VQ_MAX * __SVE_VQ_BYTES)
++
++#define __SVE_NUM_ZREGS		32
++#define __SVE_NUM_PREGS		16
++
++#define __sve_vl_valid(vl)			\
++	((vl) % __SVE_VQ_BYTES == 0 &&		\
++	 (vl) >= __SVE_VL_MIN &&		\
++	 (vl) <= __SVE_VL_MAX)
++
++#define __sve_vq_from_vl(vl)	((vl) / __SVE_VQ_BYTES)
++#define __sve_vl_from_vq(vq)	((vq) * __SVE_VQ_BYTES)
++
++#define __SVE_ZREG_SIZE(vq)	((__u32)(vq) * __SVE_VQ_BYTES)
++#define __SVE_PREG_SIZE(vq)	((__u32)(vq) * (__SVE_VQ_BYTES / 8))
++#define __SVE_FFR_SIZE(vq)	__SVE_PREG_SIZE(vq)
++
++#define __SVE_ZREGS_OFFSET	0
++#define __SVE_ZREG_OFFSET(vq, n) \
++	(__SVE_ZREGS_OFFSET + __SVE_ZREG_SIZE(vq) * (n))
++#define __SVE_ZREGS_SIZE(vq) \
++	(__SVE_ZREG_OFFSET(vq, __SVE_NUM_ZREGS) - __SVE_ZREGS_OFFSET)
++
++#define __SVE_PREGS_OFFSET(vq) \
++	(__SVE_ZREGS_OFFSET + __SVE_ZREGS_SIZE(vq))
++#define __SVE_PREG_OFFSET(vq, n) \
++	(__SVE_PREGS_OFFSET(vq) + __SVE_PREG_SIZE(vq) * (n))
++#define __SVE_PREGS_SIZE(vq) \
++	(__SVE_PREG_OFFSET(vq, __SVE_NUM_PREGS) - __SVE_PREGS_OFFSET(vq))
++
++#define __SVE_FFR_OFFSET(vq) \
++	(__SVE_PREGS_OFFSET(vq) + __SVE_PREGS_SIZE(vq))
++
++#endif /* ! _UAPI__ASM_SVE_CONTEXT_H */
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
