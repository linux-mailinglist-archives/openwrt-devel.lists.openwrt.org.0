Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59ADF1AD83
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 May 2019 19:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a9e8phAJZcWZ4GN2jL2miHrUNm8lBBxFuu3W43FV1fE=; b=dQBhHd2aO8j/W2
	JUM/WYaguFNEQFbwsyxn3L909h8cSi39Ji79xD9X5XCJ0NEsXeUyQAbgDmO1Ng1FHVtcueIaEe0vN
	y9lx2kv9tLRP4FSQHEIexLGhI6YYdt74b4Cb20iHOiMFwCaTkBQ9QgjpFaCfAw8RtdWo5fxJ1QIyf
	qvCx7jcv7qefqnlojRqJkppiTrNIXMswkvnlyQ10DVMqJSL0hIOInTCKQKKDO7/Hqw0ziJUoFI9mN
	T1fk9VWMv4LZiSo+T15bEOcw9Zjmcp7z34q4g3JRv+gxbVqbKKH7zkzDB94TP5mpQxYMD2mY7OgFA
	uWYGEnOajbQKs0nMKakA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPsKM-000187-Jf; Sun, 12 May 2019 17:31:58 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPsKE-00017h-2T
 for openwrt-devel@lists.openwrt.org; Sun, 12 May 2019 17:31:52 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 638BC4C127;
 Sun, 12 May 2019 19:31:46 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id d-9e-LR_S1ka; Sun, 12 May 2019 19:31:39 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 May 2019 19:31:32 +0200
Message-Id: <20190512173132.27315-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_103150_423342_4C00BCA3 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] kernel: Activate CONFIG_OPTIMIZE_INLINING
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This will reduce the size of the kernel if CONFIG_CC_OPTIMIZE_FOR_SIZE is
set like for all targets with small_flash feature flag.
I haven't seen any changes for an ARM64 target which optimizes the
kernel for speed instead.

On the ath79/tiny target the uncompressed kernel size was reduced by
3.2% and the compressed kernel size by 2.1%

kernel size with CONFIG_OPTIMIZE_INLINING=n
4346412 build_dir/target-mips_24kc_musl/linux-ath79_tiny/vmlinux
1391169 build_dir/target-mips_24kc_musl/linux-ath79_tiny/tplink_tl-wr941-v4-kernel.bin

Kernel size with CONFIG_OPTIMIZE_INLINING=y
4212396 build_dir/target-mips_24kc_musl/linux-ath79_tiny/vmlinux
1362051 build_dir/target-mips_24kc_musl/linux-ath79_tiny/tplink_tl-wr941-v4-kernel.bin

This change is currently pending for kernel 5.2 and already in
linux-next, this updates our patch to match the upstream version.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/generic/config-4.14              |   2 +-
 target/linux/generic/config-4.19              |   2 +-
 .../pending-4.14/220-optimize_inlining.patch  | 143 +++++++++++-
 .../pending-4.19/220-optimize_inlining.patch  | 203 +++++++++++++++++-
 4 files changed, 332 insertions(+), 18 deletions(-)

diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
index 9680c4c41e..0a07f69f88 100644
--- a/target/linux/generic/config-4.14
+++ b/target/linux/generic/config-4.14
@@ -3377,7 +3377,7 @@ CONFIG_NMI_LOG_BUF_SHIFT=13
 # CONFIG_OPROFILE is not set
 # CONFIG_OPROFILE_EVENT_MULTIPLEX is not set
 # CONFIG_OPT3001 is not set
-# CONFIG_OPTIMIZE_INLINING is not set
+CONFIG_OPTIMIZE_INLINING=y
 # CONFIG_ORANGEFS_FS is not set
 # CONFIG_ORION_WATCHDOG is not set
 # CONFIG_OSF_PARTITION is not set
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index f9a4b83944..59141b21c9 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -3549,7 +3549,7 @@ CONFIG_NMI_LOG_BUF_SHIFT=13
 # CONFIG_OPROFILE is not set
 # CONFIG_OPROFILE_EVENT_MULTIPLEX is not set
 # CONFIG_OPT3001 is not set
-# CONFIG_OPTIMIZE_INLINING is not set
+CONFIG_OPTIMIZE_INLINING=y
 # CONFIG_ORANGEFS_FS is not set
 # CONFIG_ORION_WATCHDOG is not set
 # CONFIG_OSF_PARTITION is not set
diff --git a/target/linux/generic/pending-4.14/220-optimize_inlining.patch b/target/linux/generic/pending-4.14/220-optimize_inlining.patch
index dca1dcb204..cdf8bac323 100644
--- a/target/linux/generic/pending-4.14/220-optimize_inlining.patch
+++ b/target/linux/generic/pending-4.14/220-optimize_inlining.patch
@@ -1,3 +1,130 @@
+--- a/arch/arm/include/asm/hardirq.h
++++ b/arch/arm/include/asm/hardirq.h
+@@ -6,6 +6,7 @@
+ #include <linux/threads.h>
+ #include <asm/irq.h>
+ 
++/* number of IPIS _not_ including IPI_CPU_BACKTRACE */
+ #define NR_IPI	7
+ 
+ typedef struct {
+--- a/arch/arm/kernel/atags.h
++++ b/arch/arm/kernel/atags.h
+@@ -5,7 +5,7 @@ void convert_to_tag_list(struct tag *tag
+ const struct machine_desc *setup_machine_tags(phys_addr_t __atags_pointer,
+ 	unsigned int machine_nr);
+ #else
+-static inline const struct machine_desc *
++static inline const struct machine_desc * __init __noreturn
+ setup_machine_tags(phys_addr_t __atags_pointer, unsigned int machine_nr)
+ {
+ 	early_print("no ATAGS support: can't continue\n");
+--- a/arch/arm/kernel/smp.c
++++ b/arch/arm/kernel/smp.c
+@@ -76,6 +76,10 @@ enum ipi_msg_type {
+ 	IPI_CPU_STOP,
+ 	IPI_IRQ_WORK,
+ 	IPI_COMPLETION,
++	/*
++	 * CPU_BACKTRACE is special and not included in NR_IPI
++	 * or tracable with trace_ipi_*
++	 */
+ 	IPI_CPU_BACKTRACE,
+ 	/*
+ 	 * SGI8-15 can be reserved by secure firmware, and thus may
+@@ -801,7 +805,7 @@ core_initcall(register_cpufreq_notifier)
+ 
+ static void raise_nmi(cpumask_t *mask)
+ {
+-	smp_cross_call(mask, IPI_CPU_BACKTRACE);
++	__smp_cross_call(mask, IPI_CPU_BACKTRACE);
+ }
+ 
+ void arch_trigger_cpumask_backtrace(const cpumask_t *mask, bool exclude_self)
+--- a/arch/arm64/include/asm/cpufeature.h
++++ b/arch/arm64/include/asm/cpufeature.h
+@@ -125,7 +125,7 @@ static inline bool cpu_have_feature(unsi
+ }
+ 
+ /* System capability check for constant caps */
+-static inline bool __cpus_have_const_cap(int num)
++static __always_inline bool __cpus_have_const_cap(int num)
+ {
+ 	if (num >= ARM64_NCAPS)
+ 		return false;
+@@ -139,7 +139,7 @@ static inline bool cpus_have_cap(unsigne
+ 	return test_bit(num, cpu_hwcaps);
+ }
+ 
+-static inline bool cpus_have_const_cap(int num)
++static __always_inline bool cpus_have_const_cap(int num)
+ {
+ 	if (static_branch_likely(&arm64_const_caps_ready))
+ 		return __cpus_have_const_cap(num);
+--- a/arch/mips/include/asm/bitops.h
++++ b/arch/mips/include/asm/bitops.h
+@@ -462,7 +462,7 @@ static inline void __clear_bit_unlock(un
+  * Return the bit position (0..63) of the most significant 1 bit in a word
+  * Returns -1 if no 1 bit exists
+  */
+-static inline unsigned long __fls(unsigned long word)
++static __always_inline unsigned long __fls(unsigned long word)
+ {
+ 	int num;
+ 
+@@ -528,7 +528,7 @@ static inline unsigned long __fls(unsign
+  * Returns 0..SZLONG-1
+  * Undefined if no bit exists, so code should check against 0 first.
+  */
+-static inline unsigned long __ffs(unsigned long word)
++static __always_inline unsigned long __ffs(unsigned long word)
+ {
+ 	return __fls(word & -word);
+ }
+--- a/arch/mips/kernel/cpu-bugs64.c
++++ b/arch/mips/kernel/cpu-bugs64.c
+@@ -42,8 +42,8 @@ static inline void align_mod(const int a
+ 		: GCC_IMM_ASM() (align), GCC_IMM_ASM() (mod));
+ }
+ 
+-static inline void mult_sh_align_mod(long *v1, long *v2, long *w,
+-				     const int align, const int mod)
++static __always_inline void mult_sh_align_mod(long *v1, long *v2, long *w,
++					      const int align, const int mod)
+ {
+ 	unsigned long flags;
+ 	int m1, m2;
+--- a/arch/powerpc/kernel/prom_init.c
++++ b/arch/powerpc/kernel/prom_init.c
+@@ -474,14 +474,14 @@ static int __init prom_next_node(phandle
+ 	}
+ }
+ 
+-static inline int prom_getprop(phandle node, const char *pname,
+-			       void *value, size_t valuelen)
++static inline int __init prom_getprop(phandle node, const char *pname,
++				      void *value, size_t valuelen)
+ {
+ 	return call_prom("getprop", 4, 1, node, ADDR(pname),
+ 			 (u32)(unsigned long) value, (u32) valuelen);
+ }
+ 
+-static inline int prom_getproplen(phandle node, const char *pname)
++static inline int __init prom_getproplen(phandle node, const char *pname)
+ {
+ 	return call_prom("getproplen", 2, 1, node, ADDR(pname));
+ }
+--- a/arch/s390/include/asm/cpacf.h
++++ b/arch/s390/include/asm/cpacf.h
+@@ -184,7 +184,7 @@ static inline int __cpacf_check_opcode(u
+ 	}
+ }
+ 
+-static inline int cpacf_query(unsigned int opcode, cpacf_mask_t *mask)
++static __always_inline int cpacf_query(unsigned int opcode, cpacf_mask_t *mask)
+ {
+ 	if (__cpacf_check_opcode(opcode)) {
+ 		__cpacf_query(opcode, mask);
 --- a/arch/x86/Kconfig.debug
 +++ b/arch/x86/Kconfig.debug
 @@ -284,20 +284,6 @@ config CPA_DEBUG
@@ -23,13 +150,13 @@
  	depends on DEBUG_KERNEL
 --- a/lib/Kconfig.debug
 +++ b/lib/Kconfig.debug
-@@ -137,6 +137,20 @@ endmenu # "printk and dmesg options"
- 
- menu "Compile-time checks and compiler options"
+@@ -305,6 +305,20 @@ config HEADERS_CHECK
+ 	  exported to $(INSTALL_HDR_PATH) (usually 'usr/include' in
+ 	  your build tree), to make sure they're suitable.
  
 +config OPTIMIZE_INLINING
-+	bool "Allow gcc to uninline functions marked 'inline'"
-+	---help---
++	bool "Allow compiler to uninline functions marked 'inline'"
++	help
 +	  This option determines if the kernel forces gcc to inline the functions
 +	  developers have marked 'inline'. Doing so takes away freedom from gcc to
 +	  do what it thinks is best, which is desirable for the gcc 3.x series of
@@ -41,9 +168,9 @@
 +
 +	  If unsure, say N.
 +
- config DEBUG_INFO
- 	bool "Compile the kernel with debug info"
- 	depends on DEBUG_KERNEL && !COMPILE_TEST
+ config DEBUG_SECTION_MISMATCH
+ 	bool "Enable full Section mismatch analysis"
+ 	help
 --- a/arch/x86/Kconfig
 +++ b/arch/x86/Kconfig
 @@ -296,9 +296,6 @@ config ZONE_DMA32
diff --git a/target/linux/generic/pending-4.19/220-optimize_inlining.patch b/target/linux/generic/pending-4.19/220-optimize_inlining.patch
index 1411586086..52bf9180a7 100644
--- a/target/linux/generic/pending-4.19/220-optimize_inlining.patch
+++ b/target/linux/generic/pending-4.19/220-optimize_inlining.patch
@@ -1,3 +1,179 @@
+--- a/arch/arm/include/asm/hardirq.h
++++ b/arch/arm/include/asm/hardirq.h
+@@ -6,6 +6,7 @@
+ #include <linux/threads.h>
+ #include <asm/irq.h>
+ 
++/* number of IPIS _not_ including IPI_CPU_BACKTRACE */
+ #define NR_IPI	7
+ 
+ typedef struct {
+--- a/arch/arm/kernel/atags.h
++++ b/arch/arm/kernel/atags.h
+@@ -5,7 +5,7 @@ void convert_to_tag_list(struct tag *tag
+ const struct machine_desc *setup_machine_tags(phys_addr_t __atags_pointer,
+ 	unsigned int machine_nr);
+ #else
+-static inline const struct machine_desc *
++static inline const struct machine_desc * __init __noreturn
+ setup_machine_tags(phys_addr_t __atags_pointer, unsigned int machine_nr)
+ {
+ 	early_print("no ATAGS support: can't continue\n");
+--- a/arch/arm/kernel/smp.c
++++ b/arch/arm/kernel/smp.c
+@@ -76,6 +76,10 @@ enum ipi_msg_type {
+ 	IPI_CPU_STOP,
+ 	IPI_IRQ_WORK,
+ 	IPI_COMPLETION,
++	/*
++	 * CPU_BACKTRACE is special and not included in NR_IPI
++	 * or tracable with trace_ipi_*
++	 */
+ 	IPI_CPU_BACKTRACE,
+ 	/*
+ 	 * SGI8-15 can be reserved by secure firmware, and thus may
+@@ -803,7 +807,7 @@ core_initcall(register_cpufreq_notifier)
+ 
+ static void raise_nmi(cpumask_t *mask)
+ {
+-	smp_cross_call(mask, IPI_CPU_BACKTRACE);
++	__smp_cross_call(mask, IPI_CPU_BACKTRACE);
+ }
+ 
+ void arch_trigger_cpumask_backtrace(const cpumask_t *mask, bool exclude_self)
+--- a/arch/arm64/include/asm/cpufeature.h
++++ b/arch/arm64/include/asm/cpufeature.h
+@@ -365,7 +365,7 @@ static inline bool cpu_have_feature(unsi
+ }
+ 
+ /* System capability check for constant caps */
+-static inline bool __cpus_have_const_cap(int num)
++static __always_inline bool __cpus_have_const_cap(int num)
+ {
+ 	if (num >= ARM64_NCAPS)
+ 		return false;
+@@ -379,7 +379,7 @@ static inline bool cpus_have_cap(unsigne
+ 	return test_bit(num, cpu_hwcaps);
+ }
+ 
+-static inline bool cpus_have_const_cap(int num)
++static __always_inline bool cpus_have_const_cap(int num)
+ {
+ 	if (static_branch_likely(&arm64_const_caps_ready))
+ 		return __cpus_have_const_cap(num);
+--- a/arch/mips/include/asm/bitops.h
++++ b/arch/mips/include/asm/bitops.h
+@@ -463,7 +463,7 @@ static inline void __clear_bit_unlock(un
+  * Return the bit position (0..63) of the most significant 1 bit in a word
+  * Returns -1 if no 1 bit exists
+  */
+-static inline unsigned long __fls(unsigned long word)
++static __always_inline unsigned long __fls(unsigned long word)
+ {
+ 	int num;
+ 
+@@ -529,7 +529,7 @@ static inline unsigned long __fls(unsign
+  * Returns 0..SZLONG-1
+  * Undefined if no bit exists, so code should check against 0 first.
+  */
+-static inline unsigned long __ffs(unsigned long word)
++static __always_inline unsigned long __ffs(unsigned long word)
+ {
+ 	return __fls(word & -word);
+ }
+--- a/arch/mips/kernel/cpu-bugs64.c
++++ b/arch/mips/kernel/cpu-bugs64.c
+@@ -42,8 +42,8 @@ static inline void align_mod(const int a
+ 		: GCC_IMM_ASM() (align), GCC_IMM_ASM() (mod));
+ }
+ 
+-static inline void mult_sh_align_mod(long *v1, long *v2, long *w,
+-				     const int align, const int mod)
++static __always_inline void mult_sh_align_mod(long *v1, long *v2, long *w,
++					      const int align, const int mod)
+ {
+ 	unsigned long flags;
+ 	int m1, m2;
+--- a/arch/powerpc/kernel/prom_init.c
++++ b/arch/powerpc/kernel/prom_init.c
+@@ -498,14 +498,14 @@ static int __init prom_next_node(phandle
+ 	}
+ }
+ 
+-static inline int prom_getprop(phandle node, const char *pname,
+-			       void *value, size_t valuelen)
++static inline int __init prom_getprop(phandle node, const char *pname,
++				      void *value, size_t valuelen)
+ {
+ 	return call_prom("getprop", 4, 1, node, ADDR(pname),
+ 			 (u32)(unsigned long) value, (u32) valuelen);
+ }
+ 
+-static inline int prom_getproplen(phandle node, const char *pname)
++static inline int __init prom_getproplen(phandle node, const char *pname)
+ {
+ 	return call_prom("getproplen", 2, 1, node, ADDR(pname));
+ }
+--- a/arch/powerpc/mm/tlb-radix.c
++++ b/arch/powerpc/mm/tlb-radix.c
+@@ -90,8 +90,8 @@ void radix__tlbiel_all(unsigned int acti
+ 	asm volatile(PPC_INVALIDATE_ERAT "; isync" : : :"memory");
+ }
+ 
+-static inline void __tlbiel_pid(unsigned long pid, int set,
+-				unsigned long ric)
++static __always_inline void __tlbiel_pid(unsigned long pid, int set,
++					 unsigned long ric)
+ {
+ 	unsigned long rb,rs,prs,r;
+ 
+@@ -106,7 +106,7 @@ static inline void __tlbiel_pid(unsigned
+ 	trace_tlbie(0, 1, rb, rs, ric, prs, r);
+ }
+ 
+-static inline void __tlbie_pid(unsigned long pid, unsigned long ric)
++static __always_inline void __tlbie_pid(unsigned long pid, unsigned long ric)
+ {
+ 	unsigned long rb,rs,prs,r;
+ 
+@@ -136,7 +136,7 @@ static inline void __tlbiel_lpid(unsigne
+ 	trace_tlbie(lpid, 1, rb, rs, ric, prs, r);
+ }
+ 
+-static inline void __tlbie_lpid(unsigned long lpid, unsigned long ric)
++static __always_inline void __tlbie_lpid(unsigned long lpid, unsigned long ric)
+ {
+ 	unsigned long rb,rs,prs,r;
+ 
+@@ -239,7 +239,7 @@ static inline void fixup_tlbie_lpid(unsi
+ /*
+  * We use 128 set in radix mode and 256 set in hpt mode.
+  */
+-static inline void _tlbiel_pid(unsigned long pid, unsigned long ric)
++static __always_inline void _tlbiel_pid(unsigned long pid, unsigned long ric)
+ {
+ 	int set;
+ 
+@@ -918,7 +918,7 @@ void radix__tlb_flush(struct mmu_gather
+ 	tlb->need_flush_all = 0;
+ }
+ 
+-static inline void __radix__flush_tlb_range_psize(struct mm_struct *mm,
++static __always_inline void __radix__flush_tlb_range_psize(struct mm_struct *mm,
+ 				unsigned long start, unsigned long end,
+ 				int psize, bool also_pwc)
+ {
+--- a/arch/s390/include/asm/cpacf.h
++++ b/arch/s390/include/asm/cpacf.h
+@@ -202,7 +202,7 @@ static inline int __cpacf_check_opcode(u
+ 	}
+ }
+ 
+-static inline int cpacf_query(unsigned int opcode, cpacf_mask_t *mask)
++static __always_inline int cpacf_query(unsigned int opcode, cpacf_mask_t *mask)
+ {
+ 	if (__cpacf_check_opcode(opcode)) {
+ 		__cpacf_query(opcode, mask);
 --- a/arch/x86/Kconfig.debug
 +++ b/arch/x86/Kconfig.debug
 @@ -276,20 +276,6 @@ config CPA_DEBUG
@@ -21,15 +197,26 @@
  config DEBUG_ENTRY
  	bool "Debug low-level entry code"
  	depends on DEBUG_KERNEL
+--- a/drivers/mtd/nand/raw/vf610_nfc.c
++++ b/drivers/mtd/nand/raw/vf610_nfc.c
+@@ -373,7 +373,7 @@ static int vf610_nfc_cmd(struct nand_chi
+ {
+ 	const struct nand_op_instr *instr;
+ 	struct vf610_nfc *nfc = chip_to_nfc(chip);
+-	int op_id = -1, trfr_sz = 0, offset;
++	int op_id = -1, trfr_sz = 0, offset = 0;
+ 	u32 col = 0, row = 0, cmd1 = 0, cmd2 = 0, code = 0;
+ 	bool force8bit = false;
+ 
 --- a/lib/Kconfig.debug
 +++ b/lib/Kconfig.debug
-@@ -150,6 +150,20 @@ endmenu # "printk and dmesg options"
- 
- menu "Compile-time checks and compiler options"
+@@ -309,6 +309,20 @@ config HEADERS_CHECK
+ 	  exported to $(INSTALL_HDR_PATH) (usually 'usr/include' in
+ 	  your build tree), to make sure they're suitable.
  
 +config OPTIMIZE_INLINING
-+	bool "Allow gcc to uninline functions marked 'inline'"
-+	---help---
++	bool "Allow compiler to uninline functions marked 'inline'"
++	help
 +	  This option determines if the kernel forces gcc to inline the functions
 +	  developers have marked 'inline'. Doing so takes away freedom from gcc to
 +	  do what it thinks is best, which is desirable for the gcc 3.x series of
@@ -41,9 +228,9 @@
 +
 +	  If unsure, say N.
 +
- config DEBUG_INFO
- 	bool "Compile the kernel with debug info"
- 	depends on DEBUG_KERNEL && !COMPILE_TEST
+ config DEBUG_SECTION_MISMATCH
+ 	bool "Enable full Section mismatch analysis"
+ 	help
 --- a/arch/x86/Kconfig
 +++ b/arch/x86/Kconfig
 @@ -306,9 +306,6 @@ config ZONE_DMA32
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
