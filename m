Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8A319500F
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Mar 2020 05:28:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UFMv0sjr+6FcExsdZXnndCiiCBUKB6V4crtMDBI6EQc=; b=h5t/0HAkb4M3oG
	tp3xPgy9QnFN8PKQ67SmnYntxzQBkB9WlpEGciqXbstK7IGIzPfV9MHwDoNcIOk5jOgEBvDbLeWHS
	dNUpPyz7zlBsrAx/UfSYM/axvgKpAxVuUf5+riFou/OGvUJSv9cJpQ52dwYzcjG4oaZaK5gWVGIoA
	/x1Ue/ClW872K9SDrrpJqDF3orCd3GkCsjV3DIShs8nOgAwqibepEOFEHCk18wjIMZ1Zx6zFTT5M5
	kq5LVuCF7K3kcQ8o2cyzVju2dFmIcc9c78MzTfKG9hbb4we03T961w3RrtAvZ/duqD8go2rvyEeii
	Uj6WJVUw1Fyf2lw6ml3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHgbW-0006ri-UU; Fri, 27 Mar 2020 04:28:22 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHgbQ-0006rH-LL
 for openwrt-devel@lists.openwrt.org; Fri, 27 Mar 2020 04:28:18 +0000
Received: by mail-pf1-x442.google.com with SMTP id 23so3921578pfj.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 21:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OOwov+Umt/J3A2hJA1No7ZuENAEGeZuLSJltq8O79Cc=;
 b=oDX6MuCfnVbmJYn8JvtESViY7COjnGJe+bitQVYhWHsQJ678Ldi8bpk4Du+RlejRgM
 lgPsrik0KjbXTLtZoVXgcltmH8tZAbXaXzxAVeMOLznd+bpLo1aSRjJ6LwweJe662uD+
 xtDt6o/5+1m+7bxsNbfAOEsypvtuC02C/W7zczFnBjZrwnlmYR/q0snW/pxTfLN7DL/j
 5JwQjqBBjwt0gS+QlCk6rAaKkKxJSzxe0efqiTZxl4vdQsDo1o8hgoFa2t3EItgbbFmR
 Tgmlfp3i7Kc6ecgmniQzReW5gUhcnKVbenDJ4dII/06MeDrubG8ZKqPj/ApD5xKn7cWJ
 uOww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OOwov+Umt/J3A2hJA1No7ZuENAEGeZuLSJltq8O79Cc=;
 b=rEAtwamjT+2GLKPLzvAE/xQPXtKZ0gJYm/zAHMnyy1/yDC1AqD2MOiCKRVyHnUWGFw
 AhxsiRXzFXwyL/dp9ZD2bLmaRx4uL7kd5hbPUvQODXNPAFquKCCJwR7RtjGMfv9PH8S/
 sPCYyJDb4im0R22hgt5bUwDGGdVvIgzfrL8BIjmRdEUwewQd3ATVGVzhVczGehhIBJ+5
 7upPmg5VTcgEdzO++yVNKhLSvdt6eI3ukcy5MYo6ktAzgQqRYbhtbkWVKyvIwwdMMCPM
 orIOlDEfhHJv5KNuNoJnPz1FXlvQWTy0Oz8pM0FoLpoxgyALMbXkoGu5yAAy97s4UEqu
 b71A==
X-Gm-Message-State: ANhLgQ0+pjpSyp0kr0ux93Bb5i5HRWh7xk+N0YLXwWSZVd+1dXjbiv2N
 XzN0uBzL7QmgkQMJVNZbfOtR+hX8
X-Google-Smtp-Source: ADFU+vs6w7t204WsEkGdBJ33Bep2JTUUcltPyZKMtOyNmOHYHMV+2CexD2vroF9v7dOJt6DxNZHoeA==
X-Received: by 2002:aa7:8bd0:: with SMTP id s16mr12745071pfd.101.1585283292081; 
 Thu, 26 Mar 2020 21:28:12 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id b4sm3083407pfd.18.2020.03.26.21.28.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Mar 2020 21:28:11 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 27 Mar 2020 12:28:01 +0800
Message-Id: <20200327042801.61504-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_212816_699847_7046FAEC 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] generic: mips: exclude more dsemul code
 when fpu-emu is not enabled
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, hauke@hauke-m.de, rosenp@gmail.com,
 ldir@darbyshire-bryant.me.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The patch is backported from mips-next.  In addition to minor reduction
of code size and runtime memory use, the more apparent difference is
that the delay slot emulation page will not be present for those targets
with fpu emulation disabled (CONFIG_MIPS_FP_SUPPORT=n)

Memory maps of busybox before and after this change

  root@OpenWrt:/# cat /proc/self/maps
  00400000-00449000 r-xp 00000000 00:02 23         /bin/busybox
  00458000-00459000 r-xp 00048000 00:02 23         /bin/busybox
  00459000-0045a000 rwxp 00049000 00:02 23         /bin/busybox
  77dc0000-77de2000 r-xp 00000000 00:02 273        /lib/libgcc_s.so.1
  77de2000-77de3000 r-xp 00012000 00:02 273        /lib/libgcc_s.so.1
  77de3000-77de4000 rwxp 00013000 00:02 273        /lib/libgcc_s.so.1
  77de4000-77e7b000 r-xp 00000000 00:02 271        /lib/libc.so
  77e8a000-77e8c000 rwxp 00096000 00:02 271        /lib/libc.so
  77e8c000-77e8e000 rwxp 00000000 00:00 0
  7fd86000-7fda7000 rw-p 00000000 00:00 0          [stack]
  7fefd000-7fefe000 r-xp 00000000 00:00 0
  7ffe6000-7ffe7000 r--p 00000000 00:00 0          [vvar]
  7ffe7000-7ffe8000 r-xp 00000000 00:00 0          [vdso]

  root@OpenWrt:/# cat /proc/self/maps
  00400000-00449000 r-xp 00000000 00:02 23         /bin/busybox
  00458000-00459000 r-xp 00048000 00:02 23         /bin/busybox
  00459000-0045a000 rwxp 00049000 00:02 23         /bin/busybox
  77d55000-77d77000 r-xp 00000000 00:02 274        /lib/libgcc_s.so.1
  77d77000-77d78000 r-xp 00012000 00:02 274        /lib/libgcc_s.so.1
  77d78000-77d79000 rwxp 00013000 00:02 274        /lib/libgcc_s.so.1
  77d79000-77e10000 r-xp 00000000 00:02 272        /lib/libc.so
  77e1f000-77e21000 rwxp 00096000 00:02 272        /lib/libc.so
  77e21000-77e23000 rwxp 00000000 00:00 0
  7fe23000-7fe44000 rw-p 00000000 00:00 0          [stack]
  7ff63000-7ff64000 r--p 00000000 00:00 0          [vvar]
  7ff64000-7ff65000 r-xp 00000000 00:00 0          [vdso]

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 ...e-dsemul-code-when-CONFIG_MIPS_FP_SU.patch | 140 ++++++++++++++++++
 1 file changed, 140 insertions(+)
 create mode 100644 target/linux/generic/backport-5.4/300-MIPS-Exclude-more-dsemul-code-when-CONFIG_MIPS_FP_SU.patch

diff --git a/target/linux/generic/backport-5.4/300-MIPS-Exclude-more-dsemul-code-when-CONFIG_MIPS_FP_SU.patch b/target/linux/generic/backport-5.4/300-MIPS-Exclude-more-dsemul-code-when-CONFIG_MIPS_FP_SU.patch
new file mode 100644
index 0000000000..1be051e1df
--- /dev/null
+++ b/target/linux/generic/backport-5.4/300-MIPS-Exclude-more-dsemul-code-when-CONFIG_MIPS_FP_SU.patch
@@ -0,0 +1,140 @@
+From d96c3157f9ca177727fbad960fcf6f52f145f471 Mon Sep 17 00:00:00 2001
+From: Yousong Zhou <yszhou4tech@gmail.com>
+Date: Thu, 9 Jan 2020 11:33:19 +0800
+Subject: [PATCH] MIPS: Exclude more dsemul code when CONFIG_MIPS_FP_SUPPORT=n
+
+This furthers what commit 42b10815d559 ("MIPS: Don't compile math-emu
+when CONFIG_MIPS_FP_SUPPORT=n") has done
+
+Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
+---
+ arch/mips/include/asm/processor.h | 12 ++++++------
+ arch/mips/kernel/process.c        | 10 ++++++++--
+ arch/mips/kernel/vdso.c           | 26 +++++++++++++++-----------
+ 3 files changed, 29 insertions(+), 19 deletions(-)
+
+diff --git a/arch/mips/include/asm/processor.h b/arch/mips/include/asm/processor.h
+index 7619ad319400..813ba94d87bb 100644
+--- a/arch/mips/include/asm/processor.h
++++ b/arch/mips/include/asm/processor.h
+@@ -253,13 +253,13 @@ struct thread_struct {
+ #ifdef CONFIG_MIPS_FP_SUPPORT
+ 	/* Saved fpu/fpu emulator stuff. */
+ 	struct mips_fpu_struct fpu FPU_ALIGN;
+-#endif
+ 	/* Assigned branch delay slot 'emulation' frame */
+ 	atomic_t bd_emu_frame;
+ 	/* PC of the branch from a branch delay slot 'emulation' */
+ 	unsigned long bd_emu_branch_pc;
+ 	/* PC to continue from following a branch delay slot 'emulation' */
+ 	unsigned long bd_emu_cont_pc;
++#endif
+ #ifdef CONFIG_MIPS_MT_FPAFF
+ 	/* Emulated instruction count */
+ 	unsigned long emulated_fp;
+@@ -302,7 +302,11 @@ struct thread_struct {
+ 		.fpr		= {{{0,},},},			\
+ 		.fcr31		= 0,				\
+ 		.msacsr		= 0,				\
+-	},
++	},							\
++	/* Delay slot emulation */				\
++	.bd_emu_frame = ATOMIC_INIT(BD_EMUFRAME_NONE),		\
++	.bd_emu_branch_pc = 0,					\
++	.bd_emu_cont_pc = 0,
+ #else
+ # define FPU_INIT
+ #endif
+@@ -334,10 +338,6 @@ struct thread_struct {
+ 	 * FPU affinity state (null if not FPAFF)		\
+ 	 */							\
+ 	FPAFF_INIT						\
+-	/* Delay slot emulation */				\
+-	.bd_emu_frame = ATOMIC_INIT(BD_EMUFRAME_NONE),		\
+-	.bd_emu_branch_pc = 0,					\
+-	.bd_emu_cont_pc = 0,					\
+ 	/*							\
+ 	 * Saved DSP stuff					\
+ 	 */							\
+diff --git a/arch/mips/kernel/process.c b/arch/mips/kernel/process.c
+index 339870ed92f7..b2a797557825 100644
+--- a/arch/mips/kernel/process.c
++++ b/arch/mips/kernel/process.c
+@@ -75,7 +75,9 @@ void start_thread(struct pt_regs * regs, unsigned long pc, unsigned long sp)
+ 	lose_fpu(0);
+ 	clear_thread_flag(TIF_MSA_CTX_LIVE);
+ 	clear_used_math();
++#ifdef CONFIG_MIPS_FP_SUPPORT
+ 	atomic_set(&current->thread.bd_emu_frame, BD_EMUFRAME_NONE);
++#endif
+ 	init_dsp();
+ 	regs->cp0_epc = pc;
+ 	regs->regs[29] = sp;
+@@ -176,7 +178,9 @@ int copy_thread_tls(unsigned long clone_flags, unsigned long usp,
+ 	clear_tsk_thread_flag(p, TIF_FPUBOUND);
+ #endif /* CONFIG_MIPS_MT_FPAFF */
+ 
++#ifdef CONFIG_MIPS_FP_SUPPORT
+ 	atomic_set(&p->thread.bd_emu_frame, BD_EMUFRAME_NONE);
++#endif
+ 
+ 	if (clone_flags & CLONE_SETTLS)
+ 		ti->tp_value = tls;
+@@ -650,8 +654,10 @@ unsigned long mips_stack_top(void)
+ {
+ 	unsigned long top = TASK_SIZE & PAGE_MASK;
+ 
+-	/* One page for branch delay slot "emulation" */
+-	top -= PAGE_SIZE;
++	if (IS_ENABLED(CONFIG_MIPS_FP_SUPPORT)) {
++		/* One page for branch delay slot "emulation" */
++		top -= PAGE_SIZE;
++	}
+ 
+ 	/* Space for the VDSO, data page & GIC user page */
+ 	top -= PAGE_ALIGN(current->thread.abi->vdso->size);
+diff --git a/arch/mips/kernel/vdso.c b/arch/mips/kernel/vdso.c
+index bc35f8499111..3adb7354bc01 100644
+--- a/arch/mips/kernel/vdso.c
++++ b/arch/mips/kernel/vdso.c
+@@ -71,10 +71,12 @@ subsys_initcall(init_vdso);
+ 
+ static unsigned long vdso_base(void)
+ {
+-	unsigned long base;
++	unsigned long base = STACK_TOP;
+ 
+-	/* Skip the delay slot emulation page */
+-	base = STACK_TOP + PAGE_SIZE;
++	if (IS_ENABLED(CONFIG_MIPS_FP_SUPPORT)) {
++		/* Skip the delay slot emulation page */
++		base += PAGE_SIZE;
++	}
+ 
+ 	if (current->flags & PF_RANDOMIZE) {
+ 		base += get_random_int() & (VDSO_RANDOMIZE_SIZE - 1);
+@@ -95,14 +97,16 @@ int arch_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
+ 	if (down_write_killable(&mm->mmap_sem))
+ 		return -EINTR;
+ 
+-	/* Map delay slot emulation page */
+-	base = mmap_region(NULL, STACK_TOP, PAGE_SIZE,
+-			   VM_READ | VM_EXEC |
+-			   VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC,
+-			   0, NULL);
+-	if (IS_ERR_VALUE(base)) {
+-		ret = base;
+-		goto out;
++	if (IS_ENABLED(CONFIG_MIPS_FP_SUPPORT)) {
++		/* Map delay slot emulation page */
++		base = mmap_region(NULL, STACK_TOP, PAGE_SIZE,
++				VM_READ | VM_EXEC |
++				VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC,
++				0, NULL);
++		if (IS_ERR_VALUE(base)) {
++			ret = base;
++			goto out;
++		}
+ 	}
+ 
+ 	/*

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
