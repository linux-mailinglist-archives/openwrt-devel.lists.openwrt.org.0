Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FD81A6B10
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 19:13:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ixxf7KmOuIgxNLBNJwbE1oYuEqEH4cfz3ePVDo1iWP8=; b=cefAZwjmIq7BJ3Vc8YB9GPVs3M
	7HngHbJnhWXF4e2hc8ufobdfN2Q4ViE8gPsO2okRaYEl/tBxo6GQDMBd2a+mCI/QSyLBjjwqhuHIO
	iiRMtewTlXaRtzGW6VOpMpJH0OLZ2/0Rbcb+fjPt82FQ5LJbS0kphCSU9Q8wyXWDFGurUcReqmhzv
	VXQMtPwt5qz9VNGYhanKD4XRb7JsVU00NBtykEMVqvIpa1ywPd1I3AXXYZJEtjkWsDjPYWb6O7bVP
	+pcDxQhdM726fxsmvCvgNRpePzj2uC85NGbpLJcagD0PVdPRBVCDAVkffhzfr4cOgpy/JGxRj96JF
	RsE1VP+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2e6-0007BD-5x; Mon, 13 Apr 2020 17:13:18 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2dL-0006Cf-I6
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 17:12:34 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MxHLs-1j49GE327s-00xefX for <openwrt-devel@lists.openwrt.org>; Mon, 13
 Apr 2020 19:12:26 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 13 Apr 2020 19:11:21 +0200
Message-Id: <20200413171123.48647-5-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
References: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:qlAZWMMRxLWpkCAb1kcWM3+9EgkWPvxlo+1Wf5ho3YGN1mRTdrc
 eMJHjA3qTw40exkkkEa6FCsB/pcP/58ROsXT3d/eBUDxniIinHdxMw/vI4v4yljssCnlRT0
 eE90SGbVP5Q2McmQE1gLtOhDLfSwsq7uwpCSOhcU5kc9k8z/S/1SgxdNkuBYcQutlgH8koM
 TwLiqdcoLH2/V6+EElFQQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+R6U16pIMfI=:EhCOYfN3kUw7ulc30ik7MC
 /pxG630S8LQ/yqBT99UTy77dTrfHx9IkVe55X1LzE43O4ZwvClbeuw9RV2UM4xc0SlMMB+RDC
 u8Pe8jN4J+0W+BVOAemtVJfHbKezkoa0W52U0/pkQsDtU54VYuRzfhbaxiFWo1+njYx5Q33OR
 TR/lvdPtbZKKFH8xhckZw1xf6VfUSY6s32f0fXBa1/cD8hRjXWj0y2aToXBSF5mMsSyFC3BUV
 MA6BYsoBRy//pua2ITB+00ME/fCI+u5evFrnolCi63vevSTNuiAngr/jxncwImz9vv6i+eC6v
 rCctsdCT7/fWtGtJ3w5jmCGASLsr/zItrksiS7eh1jsHBmbl7j09ct7cPqWBqEDFbRkwDCoZ5
 pulXKw0X4xKAdSFZsTQC9MvflSGqQ9eeH6j824jRkJxUIymkI+gqliLtjNBUJrIojGFeerRSJ
 p/8myhKsQXsFdIiclcU2/m6TdXfWXBHrfAFi71V1huDmgta3Bpi8xU1TDqhgUsaoqq39HdZ9J
 vOM1Nb9vd6xsigXN3AD4fsTt8EnpxgMwbWVdtHhKZBAFLeFxcxiN1pBpNJXulJuH27Y3JEKSa
 YJ2kQJGpufV4lQKr9fgmVgjIGFaw9cXwtCksA9SjTf5UP6LF6ukRJ/Qg4W+GWDSimDZus49uC
 oaapEHPyISGXxbsQsFPVnkyQOOxPHsFSXarl749lhniVVG9hRrOEZh/TMoWzeF8SgA+HHjyge
 uvveHSNeImAb83s5LHEBjdsgWxaU6lrabRTYsYticBoxZNRQ5qes5YK5l4ck/KMKR7elH7xrk
 lmDgcszfSPcN5zlpVXO/vy5XFws4r8WK5gAnmkbEXnYEr4cQhNDDzyjqsok812fAgxaDPjM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_101231_892130_85359195 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 UPPERCASE_75_100       message body is 75-100% uppercase
Subject: [OpenWrt-Devel] [RFT PATCH 4/6] ath25: update config for kernel 5.4
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Update config with make kernel_oldconfig.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath25/config-5.4 | 73 ++++++++++++++++++++---------------
 1 file changed, 41 insertions(+), 32 deletions(-)

diff --git a/target/linux/ath25/config-5.4 b/target/linux/ath25/config-5.4
index 4d3f0c697e..35177a5855 100644
--- a/target/linux/ath25/config-5.4
+++ b/target/linux/ath25/config-5.4
@@ -1,26 +1,26 @@
 CONFIG_ADM6996_PHY=y
 CONFIG_AR2315_WDT=y
 CONFIG_AR8216_PHY=y
-CONFIG_ARCH_BINFMT_ELF_STATE=y
+CONFIG_ARCH_32BIT_OFF_T=y
 CONFIG_ARCH_CLOCKSOURCE_DATA=y
-CONFIG_ARCH_DISCARD_MEMBLOCK=y
+CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN=y
+CONFIG_ARCH_HAS_DMA_PREP_COHERENT=y
+CONFIG_ARCH_HAS_DMA_WRITE_COMBINE=y
 CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
-# CONFIG_ARCH_HAS_GCOV_PROFILE_ALL is not set
-# CONFIG_ARCH_HAS_SG_CHAIN is not set
-# CONFIG_ARCH_HAS_STRICT_KERNEL_RWX is not set
-# CONFIG_ARCH_HAS_STRICT_MODULE_RWX is not set
+CONFIG_ARCH_HAS_PHYS_TO_DMA=y
+CONFIG_ARCH_HAS_PTE_SPECIAL=y
+CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE=y
+CONFIG_ARCH_HAS_UNCACHED_SEGMENT=y
 CONFIG_ARCH_HIBERNATION_POSSIBLE=y
-CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
-CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=y
 CONFIG_ARCH_MMAP_RND_BITS_MAX=15
 CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=15
-# CONFIG_ARCH_OPTIONAL_KERNEL_RWX is not set
-# CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
 CONFIG_ARCH_SUPPORTS_UPROBES=y
 CONFIG_ARCH_SUSPEND_POSSIBLE=y
 CONFIG_ARCH_USE_BUILTIN_BSWAP=y
+CONFIG_ARCH_USE_MEMREMAP_PROT=y
 CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
 CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
+CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT=y
 CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
 CONFIG_ATH25=y
 CONFIG_BLK_MQ_PCI=y
@@ -29,8 +29,10 @@ CONFIG_CLONE_BACKWARDS=y
 CONFIG_CMDLINE="console=ttyS0,9600 rootfstype=squashfs,jffs2"
 CONFIG_CMDLINE_BOOL=y
 # CONFIG_CMDLINE_OVERRIDE is not set
+CONFIG_COMPAT_32BIT_TIME=y
 CONFIG_CPU_BIG_ENDIAN=y
 CONFIG_CPU_GENERIC_DUMP_TLB=y
+CONFIG_CPU_HAS_LOAD_STORE_LR=y
 CONFIG_CPU_HAS_PREFETCH=y
 CONFIG_CPU_HAS_SYNC=y
 CONFIG_CPU_MIPS32=y
@@ -38,23 +40,34 @@ CONFIG_CPU_MIPS32_R1=y
 CONFIG_CPU_MIPSR1=y
 CONFIG_CPU_NEEDS_NO_SMARTMIPS_OR_MICROMIPS=y
 CONFIG_CPU_R4K_CACHE_TLB=y
-CONFIG_CPU_R4K_FPU=y
 CONFIG_CPU_SUPPORTS_32BIT_KERNEL=y
 CONFIG_CPU_SUPPORTS_HIGHMEM=y
 CONFIG_CRYPTO_RNG2=y
-CONFIG_CRYPTO_WORKQUEUE=y
 CONFIG_CSRC_R4K=y
 CONFIG_DMA_NONCOHERENT=y
+CONFIG_DMA_NONCOHERENT_CACHE_SYNC=y
 CONFIG_EARLY_PRINTK=y
+CONFIG_EFI_EARLYCON=y
 CONFIG_ETHERNET_PACKET_MANGLE=y
+CONFIG_FONT_8x16=y
+CONFIG_FONT_AUTOSELECT=y
+CONFIG_FONT_SUPPORT=y
+CONFIG_FORCE_PCI=y
+CONFIG_FW_LOADER_PAGED_BUF=y
 CONFIG_GENERIC_ATOMIC64=y
 CONFIG_GENERIC_CLOCKEVENTS=y
 CONFIG_GENERIC_CMOS_UPDATE=y
 CONFIG_GENERIC_CPU_AUTOPROBE=y
-CONFIG_GENERIC_IO=y
+CONFIG_GENERIC_GETTIMEOFDAY=y
+CONFIG_GENERIC_IOMAP=y
 CONFIG_GENERIC_IRQ_CHIP=y
 CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=y
 CONFIG_GENERIC_IRQ_SHOW=y
+CONFIG_GENERIC_LIB_ASHLDI3=y
+CONFIG_GENERIC_LIB_ASHRDI3=y
+CONFIG_GENERIC_LIB_CMPDI2=y
+CONFIG_GENERIC_LIB_LSHRDI3=y
+CONFIG_GENERIC_LIB_UCMPDI2=y
 CONFIG_GENERIC_PCI_IOMAP=y
 CONFIG_GENERIC_SCHED_CLOCK=y
 CONFIG_GENERIC_SMP_IDLE_THREAD=y
@@ -63,48 +76,47 @@ CONFIG_GPIOLIB=y
 CONFIG_GPIO_AR2315=y
 CONFIG_GPIO_AR5312=y
 CONFIG_GPIO_SYSFS=y
-# CONFIG_GRO_CELLS is not set
 CONFIG_HANDLE_DOMAIN_IRQ=y
 CONFIG_HARDWARE_WATCHPOINTS=y
 CONFIG_HAS_DMA=y
 CONFIG_HAS_IOMEM=y
 CONFIG_HAS_IOPORT_MAP=y
-# CONFIG_HAVE_64BIT_ALIGNED_ACCESS is not set
-# CONFIG_HAVE_ARCH_BITREVERSE is not set
+CONFIG_HAVE_ARCH_COMPILER_H=y
 CONFIG_HAVE_ARCH_JUMP_LABEL=y
 CONFIG_HAVE_ARCH_KGDB=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
 CONFIG_HAVE_ARCH_TRACEHOOK=y
-# CONFIG_HAVE_BOOTMEM_INFO_NODE is not set
-CONFIG_HAVE_CBPF_JIT=y
-CONFIG_HAVE_CC_STACKPROTECTOR=y
+CONFIG_HAVE_ASM_MODVERSIONS=y
 CONFIG_HAVE_CONTEXT_TRACKING=y
 CONFIG_HAVE_COPY_THREAD_TLS=y
 CONFIG_HAVE_C_RECORDMCOUNT=y
 CONFIG_HAVE_DEBUG_KMEMLEAK=y
 CONFIG_HAVE_DEBUG_STACKOVERFLOW=y
-CONFIG_HAVE_DMA_API_DEBUG=y
 CONFIG_HAVE_DMA_CONTIGUOUS=y
 CONFIG_HAVE_DYNAMIC_FTRACE=y
+CONFIG_HAVE_FAST_GUP=y
 CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
 CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
 CONFIG_HAVE_FUNCTION_TRACER=y
-CONFIG_HAVE_GENERIC_DMA_COHERENT=y
+CONFIG_HAVE_GENERIC_VDSO=y
 CONFIG_HAVE_IDE=y
+CONFIG_HAVE_IOREMAP_PROT=y
 CONFIG_HAVE_IRQ_EXIT_ON_IRQ_STACK=y
 CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
-CONFIG_HAVE_LATENCYTOP_SUPPORT=y
-CONFIG_HAVE_MEMBLOCK=y
+CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y
 CONFIG_HAVE_MEMBLOCK_NODE_MAP=y
 CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
 CONFIG_HAVE_NET_DSA=y
 CONFIG_HAVE_OPROFILE=y
+CONFIG_HAVE_PCI=y
 CONFIG_HAVE_PERF_EVENTS=y
 CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
+CONFIG_HAVE_RSEQ=y
 CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
 CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
-CONFIG_HW_HAS_PCI=y
 CONFIG_HW_RANDOM=y
+CONFIG_HZ=250
+CONFIG_HZ_250=y
 CONFIG_HZ_PERIODIC=y
 CONFIG_INITRAMFS_SOURCE=""
 CONFIG_IP17XX_PHY=y
@@ -113,17 +125,18 @@ CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_MIPS_CPU=y
 CONFIG_IRQ_WORK=y
 CONFIG_LEDS_GPIO=y
+CONFIG_LOCK_DEBUGGING_SUPPORT=y
 CONFIG_MDIO_BUS=y
 CONFIG_MDIO_DEVICE=y
+CONFIG_MEMFD_CREATE=y
+CONFIG_MIGRATION=y
 CONFIG_MIPS=y
 CONFIG_MIPS_ASID_BITS=8
 CONFIG_MIPS_ASID_SHIFT=0
 CONFIG_MIPS_CLOCK_VSYSCALL=y
 # CONFIG_MIPS_CMDLINE_BUILTIN_EXTEND is not set
 CONFIG_MIPS_CMDLINE_FROM_BOOTLOADER=y
-# CONFIG_MIPS_HUGE_TLB_SUPPORT is not set
 CONFIG_MIPS_L1_CACHE_SHIFT=5
-# CONFIG_MIPS_MACHINE is not set
 CONFIG_MODULES_USE_ELF_REL=y
 CONFIG_MTD_AR2315=y
 CONFIG_MTD_CFI_ADV_OPTIONS=y
@@ -138,7 +151,6 @@ CONFIG_NEED_DMA_MAP_STATE=y
 CONFIG_NEED_PER_CPU_KM=y
 CONFIG_NET_AR231X=y
 CONFIG_NO_GENERIC_PCI_IOPORT_MAP=y
-# CONFIG_NO_IOPORT_MAP is not set
 # CONFIG_OF is not set
 CONFIG_PCI=y
 CONFIG_PCI_AR2315=y
@@ -148,13 +160,9 @@ CONFIG_PCI_DRIVERS_LEGACY=y
 CONFIG_PERF_USE_VMALLOC=y
 CONFIG_PGTABLE_LEVELS=2
 CONFIG_PHYLIB=y
-# CONFIG_RCU_NEED_SEGCBLIST is not set
-# CONFIG_RCU_STALL_COMMON is not set
-# CONFIG_SCHED_INFO is not set
-# CONFIG_SCSI_DMA is not set
-# CONFIG_SERIAL_8250_FSL is not set
 CONFIG_SERIAL_8250_NR_UARTS=1
 CONFIG_SERIAL_8250_RUNTIME_UARTS=1
+CONFIG_SERIAL_MCTRL_GPIO=y
 CONFIG_SOC_AR2315=y
 CONFIG_SOC_AR5312=y
 CONFIG_SRCU=y
@@ -166,6 +174,7 @@ CONFIG_SYS_HAS_EARLY_PRINTK=y
 CONFIG_SYS_SUPPORTS_32BIT_KERNEL=y
 CONFIG_SYS_SUPPORTS_ARBIT_HZ=y
 CONFIG_SYS_SUPPORTS_BIG_ENDIAN=y
+CONFIG_TARGET_ISA_REV=1
 CONFIG_TICK_CPU_ACCOUNTING=y
 CONFIG_TINY_SRCU=y
 CONFIG_USB_SUPPORT=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
