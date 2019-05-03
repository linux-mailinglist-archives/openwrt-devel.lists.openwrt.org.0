Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF24513494
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 22:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNaIrC6hcyLqtmy57tngZRnHIfAvb8i1xTlYAYsCMvA=; b=pKluCLFkRnL3Aj
	SQCChJqc04P9RLzQbg5bnVYYnML5JGZHCV5F9nwcTR8r76npmiirW+tmha+dSno1Ocl8Q/gRyC87p
	RcKzmBKGOlIex34YNjQpyGy9MsBT4nYo7mHpOfLGx7EKuwUcyYuKLO5grW6NxI4Z15qLvm0aCEX14
	ndzFFYYX+x867cG0LAIVFcR4YwaOJZso0XG7M+j4ZgYk0FN2pd0EyHlO8OK7i12WGtM5XFC3jmrg4
	y5Gi31jQksc/AM1qNDoaniHg6RwryvQp6n5pK6bvPBizAKKWzWCCDuGNGmBImYPKvHuz0af0Ekp3h
	8M/pcMU0PMNp0LNhLXsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfCT-0001aL-NO; Fri, 03 May 2019 20:54:33 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfAi-0007Y6-KL
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 20:52:50 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 50759A01AA;
 Fri,  3 May 2019 22:52:43 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id pfRZfp8ifmyL; Fri,  3 May 2019 22:52:28 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 22:52:01 +0200
Message-Id: <20190503205207.7675-5-hauke@hauke-m.de>
In-Reply-To: <20190503205207.7675-1-hauke@hauke-m.de>
References: <20190503205207.7675-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_135244_969843_3405089F 
X-CRM114-Status: GOOD (  12.14  )
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
Subject: [OpenWrt-Devel] [PATCH 04/10] kernel: Remove CONFIG_COMPAT
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

This removes support for executing old 32 bit applications on 64 bit ARM
and MIPS kernels.
On OpenWrt we normally compile all the user space applications on our
own and do not support third party binary only modules especial not 32
bit applications on 64 bit CPUs.

This reduces the attack surface on such systems and should also save
some memory.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/armvirt/64/config-default        | 10 ----------
 target/linux/brcm2708/bcm2710/config-4.14     |  1 -
 target/linux/generic/config-4.14              |  1 +
 target/linux/generic/config-4.19              |  1 +
 target/linux/generic/config-4.9               |  1 +
 target/linux/layerscape/armv8_64b/config-4.14 | 13 -------------
 target/linux/malta/be64/config-default        |  6 ------
 target/linux/malta/le64/config-default        |  6 ------
 target/linux/mediatek/mt7622/config-4.14      | 11 -----------
 target/linux/mvebu/cortexa53/config-default   |  1 -
 target/linux/mvebu/cortexa72/config-default   |  1 -
 target/linux/octeon/config-4.14               |  6 ------
 target/linux/octeon/config-4.19               |  7 -------
 target/linux/octeontx/config-4.14             | 11 -----------
 target/linux/sunxi/cortexa53/config-4.14      |  1 -
 target/linux/sunxi/cortexa53/config-4.19      |  1 -
 16 files changed, 3 insertions(+), 75 deletions(-)

diff --git a/target/linux/armvirt/64/config-default b/target/linux/armvirt/64/config-default
index 23d038cbb6..a70cd20f7e 100644
--- a/target/linux/armvirt/64/config-default
+++ b/target/linux/armvirt/64/config-default
@@ -8,7 +8,6 @@ CONFIG_ARCH_HAS_KCOV=y
 CONFIG_ARCH_MMAP_RND_BITS=18
 CONFIG_ARCH_MMAP_RND_BITS_MAX=24
 CONFIG_ARCH_MMAP_RND_BITS_MIN=18
-CONFIG_ARCH_MMAP_RND_COMPAT_BITS=11
 CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=11
 CONFIG_ARCH_PHYS_ADDR_T_64BIT=y
 CONFIG_ARCH_SELECT_MEMORY_MODEL=y
@@ -32,7 +31,6 @@ CONFIG_ARM64_ERRATUM_826319=y
 CONFIG_ARM64_ERRATUM_827319=y
 CONFIG_ARM64_ERRATUM_832075=y
 CONFIG_ARM64_ERRATUM_843419=y
-CONFIG_ARM64_ERRATUM_845719=y
 CONFIG_ARM64_HW_AFDBM=y
 # CONFIG_ARM64_LSE_ATOMICS is not set
 CONFIG_ARM64_MODULE_CMODEL_LARGE=y
@@ -48,7 +46,6 @@ CONFIG_ARM64_VA_BITS=39
 CONFIG_ARM64_VA_BITS_39=y
 # CONFIG_ARM64_VA_BITS_48 is not set
 CONFIG_ARM64_VHE=y
-# CONFIG_ARMV8_DEPRECATED is not set
 CONFIG_ARM_GIC_V3_ITS=y
 CONFIG_ARM_PMU=y
 # CONFIG_ARM_SBSA_WATCHDOG is not set
@@ -56,7 +53,6 @@ CONFIG_ATOMIC64_SELFTEST=y
 CONFIG_AUDIT_ARCH_COMPAT_GENERIC=y
 CONFIG_BACKLIGHT_CLASS_DEVICE=y
 CONFIG_BACKLIGHT_LCD_SUPPORT=y
-CONFIG_BLOCK_COMPAT=y
 CONFIG_BOUNCE=y
 CONFIG_CLKSRC_MMIO=y
 CONFIG_CLKSRC_VERSATILE=y
@@ -64,10 +60,6 @@ CONFIG_CLK_SP810=y
 CONFIG_CLK_VEXPRESS_OSC=y
 CONFIG_COMMON_CLK_VERSATILE=y
 # CONFIG_COMMON_CLK_XGENE is not set
-CONFIG_COMPAT=y
-CONFIG_COMPAT_BINFMT_ELF=y
-CONFIG_COMPAT_NETLINK_MESSAGES=y
-CONFIG_COMPAT_OLD_SIGACTION=y
 # CONFIG_CPU_BIG_ENDIAN is not set
 CONFIG_CPU_IDLE=y
 # CONFIG_CPU_IDLE_GOV_LADDER is not set
@@ -114,7 +106,6 @@ CONFIG_HARDEN_BRANCH_PREDICTOR=y
 CONFIG_HAVE_ALIGNED_STRUCT_PAGE=y
 CONFIG_HAVE_ARCH_HUGE_VMAP=y
 CONFIG_HAVE_ARCH_KASAN=y
-CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=y
 CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
 CONFIG_HAVE_CMPXCHG_DOUBLE=y
 CONFIG_HAVE_CMPXCHG_LOCAL=y
@@ -176,7 +167,6 @@ CONFIG_SPARSEMEM_MANUAL=y
 CONFIG_SPARSEMEM_VMEMMAP=y
 CONFIG_SPARSEMEM_VMEMMAP_ENABLE=y
 CONFIG_SYSCTL_EXCEPTION_TRACE=y
-CONFIG_SYSVIPC_COMPAT=y
 CONFIG_SYS_SUPPORTS_HUGETLBFS=y
 # CONFIG_THUNDER_NIC_BGX is not set
 # CONFIG_THUNDER_NIC_PF is not set
diff --git a/target/linux/brcm2708/bcm2710/config-4.14 b/target/linux/brcm2708/bcm2710/config-4.14
index 00e3c0c2e5..d7170c7875 100644
--- a/target/linux/brcm2708/bcm2710/config-4.14
+++ b/target/linux/brcm2708/bcm2710/config-4.14
@@ -118,7 +118,6 @@ CONFIG_CMA_SIZE_SEL_MBYTES=y
 # CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
 CONFIG_COMMON_CLK=y
 CONFIG_COMMON_CLK_XGENE=y
-# CONFIG_COMPAT is not set
 CONFIG_CONFIGFS_FS=y
 CONFIG_CONSOLE_TRANSLATIONS=y
 # CONFIG_CPUFREQ_DT is not set
diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
index b4b622dd2c..15200a5431 100644
--- a/target/linux/generic/config-4.14
+++ b/target/linux/generic/config-4.14
@@ -819,6 +819,7 @@ CONFIG_CMDLINE=""
 # CONFIG_COMMON_CLK_XLNX_CLKWZRD is not set
 CONFIG_COMPACTION=y
 # CONFIG_COMPAL_LAPTOP is not set
+# CONFIG_COMPAT is not set
 # CONFIG_COMPAT_BRK is not set
 # CONFIG_COMPILE_TEST is not set
 # CONFIG_CONFIGFS_FS is not set
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index adc941cdac..c8b014b338 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -850,6 +850,7 @@ CONFIG_CMDLINE=""
 # CONFIG_COMMON_CLK_XLNX_CLKWZRD is not set
 CONFIG_COMPACTION=y
 # CONFIG_COMPAL_LAPTOP is not set
+# CONFIG_COMPAT is not set
 # CONFIG_COMPAT_BRK is not set
 # CONFIG_COMPILE_TEST is not set
 # CONFIG_CONFIGFS_FS is not set
diff --git a/target/linux/generic/config-4.9 b/target/linux/generic/config-4.9
index cf50b4919c..1194f5a5a8 100644
--- a/target/linux/generic/config-4.9
+++ b/target/linux/generic/config-4.9
@@ -766,6 +766,7 @@ CONFIG_CMDLINE=""
 # CONFIG_COMMON_CLK_XLNX_CLKWZRD is not set
 CONFIG_COMPACTION=y
 # CONFIG_COMPAL_LAPTOP is not set
+# CONFIG_COMPAT is not set
 # CONFIG_COMPAT_BRK is not set
 # CONFIG_COMPILE_TEST is not set
 # CONFIG_CONFIGFS_FS is not set
diff --git a/target/linux/layerscape/armv8_64b/config-4.14 b/target/linux/layerscape/armv8_64b/config-4.14
index b925c3c03e..e9da223528 100644
--- a/target/linux/layerscape/armv8_64b/config-4.14
+++ b/target/linux/layerscape/armv8_64b/config-4.14
@@ -23,7 +23,6 @@ CONFIG_ARCH_LAYERSCAPE=y
 CONFIG_ARCH_MMAP_RND_BITS=18
 CONFIG_ARCH_MMAP_RND_BITS_MAX=33
 CONFIG_ARCH_MMAP_RND_BITS_MIN=18
-CONFIG_ARCH_MMAP_RND_COMPAT_BITS=11
 CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=11
 # CONFIG_ARCH_OPTIONAL_KERNEL_RWX is not set
 # CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
@@ -54,7 +53,6 @@ CONFIG_ARM64_ERRATUM_826319=y
 CONFIG_ARM64_ERRATUM_827319=y
 CONFIG_ARM64_ERRATUM_832075=y
 CONFIG_ARM64_ERRATUM_843419=y
-CONFIG_ARM64_ERRATUM_845719=y
 CONFIG_ARM64_HW_AFDBM=y
 # CONFIG_ARM64_LSE_ATOMICS is not set
 CONFIG_ARM64_MODULE_CMODEL_LARGE=y
@@ -70,7 +68,6 @@ CONFIG_ARM64_VA_BITS=48
 # CONFIG_ARM64_VA_BITS_39 is not set
 CONFIG_ARM64_VA_BITS_48=y
 CONFIG_ARM64_VHE=y
-# CONFIG_ARMV8_DEPRECATED is not set
 CONFIG_ARM_AMBA=y
 CONFIG_ARM_ARCH_TIMER=y
 CONFIG_ARM_ARCH_TIMER_EVTSTREAM=y
@@ -95,7 +92,6 @@ CONFIG_ATA=y
 CONFIG_AUDIT=y
 CONFIG_AUDITSYSCALL=y
 CONFIG_AUDIT_ARCH_COMPAT_GENERIC=y
-CONFIG_AUDIT_COMPAT_GENERIC=y
 CONFIG_AUDIT_GENERIC=y
 CONFIG_AUDIT_TREE=y
 CONFIG_AUDIT_WATCH=y
@@ -117,7 +113,6 @@ CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_MQ_PCI=y
 CONFIG_BLK_MQ_VIRTIO=y
 CONFIG_BLK_SCSI_REQUEST=y
-CONFIG_BLOCK_COMPAT=y
 # CONFIG_BOOTPARAM_HUNG_TASK_PANIC is not set
 CONFIG_BOOTPARAM_HUNG_TASK_PANIC_VALUE=0
 CONFIG_BOUNCE=y
@@ -155,10 +150,6 @@ CONFIG_COMMON_CLK=y
 CONFIG_COMMON_CLK_CS2000_CP=y
 CONFIG_COMMON_CLK_VERSATILE=y
 CONFIG_COMMON_CLK_XGENE=y
-CONFIG_COMPAT=y
-CONFIG_COMPAT_BINFMT_ELF=y
-CONFIG_COMPAT_NETLINK_MESSAGES=y
-CONFIG_COMPAT_OLD_SIGACTION=y
 CONFIG_CONFIGFS_FS=y
 CONFIG_CONSOLE_TRANSLATIONS=y
 CONFIG_COREDUMP=y
@@ -432,7 +423,6 @@ CONFIG_HAVE_ARCH_HUGE_VMAP=y
 CONFIG_HAVE_ARCH_JUMP_LABEL=y
 CONFIG_HAVE_ARCH_KASAN=y
 CONFIG_HAVE_ARCH_KGDB=y
-CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=y
 CONFIG_HAVE_ARCH_PFN_VALID=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
 CONFIG_HAVE_ARCH_TRACEHOOK=y
@@ -473,7 +463,6 @@ CONFIG_HAVE_RCU_TABLE_FREE=y
 CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
 CONFIG_HAVE_SETUP_PER_CPU_AREA=y
 CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
-CONFIG_HAVE_UID16=y
 CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
 CONFIG_HIBERNATE_CALLBACKS=y
 CONFIG_HIBERNATION=y
@@ -687,7 +676,6 @@ CONFIG_OF_NUMA=y
 CONFIG_OF_PCI=y
 CONFIG_OF_PCI_IRQ=y
 CONFIG_OF_RESERVED_MEM=y
-CONFIG_OLD_SIGSUSPEND3=y
 CONFIG_PACKET_DIAG=y
 CONFIG_PADATA=y
 # CONFIG_PANIC_ON_OOPS is not set
@@ -863,7 +851,6 @@ CONFIG_SYNC_FILE=y
 # CONFIG_SYN_COOKIES is not set
 CONFIG_SYSCTL_EXCEPTION_TRACE=y
 CONFIG_SYSFS_SYSCALL=y
-CONFIG_SYSVIPC_COMPAT=y
 CONFIG_SYS_HYPERVISOR=y
 CONFIG_SYS_SUPPORTS_HUGETLBFS=y
 CONFIG_TASKSTATS=y
diff --git a/target/linux/malta/be64/config-default b/target/linux/malta/be64/config-default
index b4a9a955cd..67d017d7ab 100644
--- a/target/linux/malta/be64/config-default
+++ b/target/linux/malta/be64/config-default
@@ -4,14 +4,10 @@ CONFIG_ARCH_DMA_ADDR_T_64BIT=y
 CONFIG_ARCH_MMAP_RND_BITS=12
 CONFIG_ARCH_MMAP_RND_BITS_MAX=18
 CONFIG_ARCH_MMAP_RND_BITS_MIN=12
-CONFIG_ARCH_MMAP_RND_COMPAT_BITS=8
 CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
 CONFIG_ARCH_WANT_COMPAT_IPC_PARSE_VERSION=y
 CONFIG_ARCH_WANT_OLD_COMPAT_IPC=y
 CONFIG_BINFMT_ELF32=y
-CONFIG_BLOCK_COMPAT=y
-CONFIG_COMPAT=y
-CONFIG_COMPAT_NETLINK_MESSAGES=y
 CONFIG_CPU_BIG_ENDIAN=y
 # CONFIG_CPU_LITTLE_ENDIAN is not set
 CONFIG_CPU_MIPS64=y
@@ -20,7 +16,6 @@ CONFIG_CPU_MIPSR1=y
 CONFIG_CPU_SUPPORTS_64BIT_KERNEL=y
 CONFIG_CPU_SUPPORTS_HUGEPAGES=y
 CONFIG_HAVE_64BIT_ALIGNED_ACCESS=y
-CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=y
 CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
 CONFIG_HAVE_EBPF_JIT=y
 CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
@@ -33,6 +28,5 @@ CONFIG_MODULES_USE_ELF_RELA=y
 CONFIG_PCI_BUS_ADDR_T_64BIT=y
 CONFIG_PGTABLE_LEVELS=3
 CONFIG_PHYS_ADDR_T_64BIT=y
-CONFIG_SYSVIPC_COMPAT=y
 CONFIG_SYS_SUPPORTS_HUGETLBFS=y
 CONFIG_ZONE_DMA32=y
diff --git a/target/linux/malta/le64/config-default b/target/linux/malta/le64/config-default
index 06755fe54e..87bb0fb6b7 100644
--- a/target/linux/malta/le64/config-default
+++ b/target/linux/malta/le64/config-default
@@ -4,14 +4,10 @@ CONFIG_ARCH_DMA_ADDR_T_64BIT=y
 CONFIG_ARCH_MMAP_RND_BITS=12
 CONFIG_ARCH_MMAP_RND_BITS_MAX=18
 CONFIG_ARCH_MMAP_RND_BITS_MIN=12
-CONFIG_ARCH_MMAP_RND_COMPAT_BITS=8
 CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
 CONFIG_ARCH_WANT_COMPAT_IPC_PARSE_VERSION=y
 CONFIG_ARCH_WANT_OLD_COMPAT_IPC=y
 CONFIG_BINFMT_ELF32=y
-CONFIG_BLOCK_COMPAT=y
-CONFIG_COMPAT=y
-CONFIG_COMPAT_NETLINK_MESSAGES=y
 # CONFIG_CPU_BIG_ENDIAN is not set
 CONFIG_CPU_LITTLE_ENDIAN=y
 CONFIG_CPU_MIPS64=y
@@ -20,7 +16,6 @@ CONFIG_CPU_MIPSR1=y
 CONFIG_CPU_SUPPORTS_64BIT_KERNEL=y
 CONFIG_CPU_SUPPORTS_HUGEPAGES=y
 CONFIG_HAVE_64BIT_ALIGNED_ACCESS=y
-CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=y
 CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
 CONFIG_HAVE_EBPF_JIT=y
 CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
@@ -33,6 +28,5 @@ CONFIG_MODULES_USE_ELF_RELA=y
 CONFIG_PCI_BUS_ADDR_T_64BIT=y
 CONFIG_PGTABLE_LEVELS=3
 CONFIG_PHYS_ADDR_T_64BIT=y
-CONFIG_SYSVIPC_COMPAT=y
 CONFIG_SYS_SUPPORTS_HUGETLBFS=y
 CONFIG_ZONE_DMA32=y
diff --git a/target/linux/mediatek/mt7622/config-4.14 b/target/linux/mediatek/mt7622/config-4.14
index 58ab6642fc..eab9aa247f 100644
--- a/target/linux/mediatek/mt7622/config-4.14
+++ b/target/linux/mediatek/mt7622/config-4.14
@@ -19,7 +19,6 @@ CONFIG_ARCH_MEDIATEK=y
 CONFIG_ARCH_MMAP_RND_BITS=18
 CONFIG_ARCH_MMAP_RND_BITS_MAX=24
 CONFIG_ARCH_MMAP_RND_BITS_MIN=18
-CONFIG_ARCH_MMAP_RND_COMPAT_BITS=11
 CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=11
 # CONFIG_ARCH_OPTIONAL_KERNEL_RWX is not set
 # CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
@@ -58,7 +57,6 @@ CONFIG_ARM64_VA_BITS=39
 CONFIG_ARM64_VA_BITS_39=y
 # CONFIG_ARM64_VA_BITS_48 is not set
 CONFIG_ARM64_VHE=y
-# CONFIG_ARMV8_DEPRECATED is not set
 CONFIG_ARM_AMBA=y
 CONFIG_ARM_ARCH_TIMER=y
 CONFIG_ARM_ARCH_TIMER_EVTSTREAM=y
@@ -75,7 +73,6 @@ CONFIG_AUDIT_ARCH_COMPAT_GENERIC=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_MQ_PCI=y
 CONFIG_BLK_SCSI_REQUEST=y
-CONFIG_BLOCK_COMPAT=y
 # CONFIG_BOUNCE is not set
 CONFIG_BSD_PROCESS_ACCT=y
 CONFIG_BSD_PROCESS_ACCT_V3=y
@@ -108,10 +105,6 @@ CONFIG_COMMON_CLK_MT7622_AUDSYS=y
 CONFIG_COMMON_CLK_MT7622_ETHSYS=y
 CONFIG_COMMON_CLK_MT7622_HIFSYS=y
 # CONFIG_COMMON_CLK_MT8173 is not set
-CONFIG_COMPAT=y
-CONFIG_COMPAT_BINFMT_ELF=y
-CONFIG_COMPAT_NETLINK_MESSAGES=y
-CONFIG_COMPAT_OLD_SIGACTION=y
 CONFIG_CONSOLE_LOGLEVEL_DEFAULT=15
 # CONFIG_CPUFREQ_DT is not set
 # CONFIG_CPU_BIG_ENDIAN is not set
@@ -213,7 +206,6 @@ CONFIG_HAVE_ARCH_HUGE_VMAP=y
 CONFIG_HAVE_ARCH_JUMP_LABEL=y
 CONFIG_HAVE_ARCH_KASAN=y
 CONFIG_HAVE_ARCH_KGDB=y
-CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=y
 CONFIG_HAVE_ARCH_PFN_VALID=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
 CONFIG_HAVE_ARCH_TRACEHOOK=y
@@ -252,7 +244,6 @@ CONFIG_HAVE_PERF_USER_STACK_DUMP=y
 CONFIG_HAVE_RCU_TABLE_FREE=y
 CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
 CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
-CONFIG_HAVE_UID16=y
 CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
 # CONFIG_HUGETLBFS is not set
 # CONFIG_HW_RANDOM_MTK is not set
@@ -331,7 +322,6 @@ CONFIG_OF_NET=y
 CONFIG_OF_PCI=y
 CONFIG_OF_PCI_IRQ=y
 CONFIG_OF_RESERVED_MEM=y
-CONFIG_OLD_SIGSUSPEND3=y
 CONFIG_PADATA=y
 CONFIG_PARTITION_PERCPU=y
 CONFIG_PCI=y
@@ -419,7 +409,6 @@ CONFIG_SWAP=y
 CONFIG_SWIOTLB=y
 CONFIG_SWPHY=y
 CONFIG_SYSCTL_EXCEPTION_TRACE=y
-CONFIG_SYSVIPC_COMPAT=y
 CONFIG_SYS_SUPPORTS_HUGETLBFS=y
 CONFIG_THERMAL=y
 CONFIG_THERMAL_DEFAULT_GOV_STEP_WISE=y
diff --git a/target/linux/mvebu/cortexa53/config-default b/target/linux/mvebu/cortexa53/config-default
index b0dd2ee39e..df5f6f341b 100644
--- a/target/linux/mvebu/cortexa53/config-default
+++ b/target/linux/mvebu/cortexa53/config-default
@@ -56,7 +56,6 @@ CONFIG_ARM_GIC_V3_ITS=y
 CONFIG_ARM_PSCI_FW=y
 # CONFIG_ARM_SP805_WATCHDOG is not set
 CONFIG_AUDIT_ARCH_COMPAT_GENERIC=y
-# CONFIG_COMPAT is not set
 # CONFIG_DEBUG_ALIGN_RODATA is not set
 CONFIG_FRAME_POINTER=y
 CONFIG_GENERIC_BUG_RELATIVE_POINTERS=y
diff --git a/target/linux/mvebu/cortexa72/config-default b/target/linux/mvebu/cortexa72/config-default
index 8598471f4c..f9bcefc4c5 100644
--- a/target/linux/mvebu/cortexa72/config-default
+++ b/target/linux/mvebu/cortexa72/config-default
@@ -55,7 +55,6 @@ CONFIG_ARM_GIC_V3_ITS=y
 CONFIG_ARM_PSCI_FW=y
 # CONFIG_ARM_SP805_WATCHDOG is not set
 CONFIG_AUDIT_ARCH_COMPAT_GENERIC=y
-# CONFIG_COMPAT is not set
 # CONFIG_DEBUG_ALIGN_RODATA is not set
 CONFIG_FRAME_POINTER=y
 CONFIG_GENERIC_BUG_RELATIVE_POINTERS=y
diff --git a/target/linux/octeon/config-4.14 b/target/linux/octeon/config-4.14
index 0546a6fb29..6393c728f3 100644
--- a/target/linux/octeon/config-4.14
+++ b/target/linux/octeon/config-4.14
@@ -14,7 +14,6 @@ CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=y
 CONFIG_ARCH_MMAP_RND_BITS=12
 CONFIG_ARCH_MMAP_RND_BITS_MAX=18
 CONFIG_ARCH_MMAP_RND_BITS_MIN=12
-CONFIG_ARCH_MMAP_RND_COMPAT_BITS=8
 CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=15
 # CONFIG_ARCH_OPTIONAL_KERNEL_RWX is not set
 # CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
@@ -34,7 +33,6 @@ CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_MQ_PCI=y
 CONFIG_BLK_SCSI_REQUEST=y
-CONFIG_BLOCK_COMPAT=y
 # CONFIG_BOOTPARAM_HUNG_TASK_PANIC is not set
 CONFIG_BOOTPARAM_HUNG_TASK_PANIC_VALUE=0
 CONFIG_BUILTIN_DTB=y
@@ -49,8 +47,6 @@ CONFIG_CAVIUM_OCTEON_LOCK_L2_TLB=y
 CONFIG_CAVIUM_OCTEON_SOC=y
 CONFIG_CEVT_R4K=y
 CONFIG_CLONE_BACKWARDS=y
-CONFIG_COMPAT=y
-CONFIG_COMPAT_NETLINK_MESSAGES=y
 CONFIG_CPU_BIG_ENDIAN=y
 CONFIG_CPU_CAVIUM_OCTEON=y
 CONFIG_CPU_GENERIC_DUMP_TLB=y
@@ -125,7 +121,6 @@ CONFIG_HAVE_64BIT_ALIGNED_ACCESS=y
 # CONFIG_HAVE_ARCH_BITREVERSE is not set
 CONFIG_HAVE_ARCH_JUMP_LABEL=y
 CONFIG_HAVE_ARCH_KGDB=y
-CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
 CONFIG_HAVE_ARCH_TRACEHOOK=y
 CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
@@ -276,7 +271,6 @@ CONFIG_SWPHY=y
 CONFIG_SYSCTL_EXCEPTION_TRACE=y
 CONFIG_SYSFS_DEPRECATED=y
 CONFIG_SYSFS_DEPRECATED_V2=y
-CONFIG_SYSVIPC_COMPAT=y
 CONFIG_SYS_HAS_CPU_CAVIUM_OCTEON=y
 CONFIG_SYS_HAS_EARLY_PRINTK=y
 CONFIG_SYS_SUPPORTS_64BIT_KERNEL=y
diff --git a/target/linux/octeon/config-4.19 b/target/linux/octeon/config-4.19
index 8bb1dcef18..521dd55de6 100644
--- a/target/linux/octeon/config-4.19
+++ b/target/linux/octeon/config-4.19
@@ -8,7 +8,6 @@ CONFIG_ARCH_HAS_PHYS_TO_DMA=y
 CONFIG_ARCH_MMAP_RND_BITS=12
 CONFIG_ARCH_MMAP_RND_BITS_MAX=18
 CONFIG_ARCH_MMAP_RND_BITS_MIN=12
-CONFIG_ARCH_MMAP_RND_COMPAT_BITS=8
 CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=15
 CONFIG_ARCH_SPARSEMEM_ENABLE=y
 CONFIG_ARCH_SUPPORTS_UPROBES=y
@@ -24,7 +23,6 @@ CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_BLK_MQ_PCI=y
 CONFIG_BLK_SCSI_REQUEST=y
-CONFIG_BLOCK_COMPAT=y
 CONFIG_BUILTIN_DTB=y
 # CONFIG_CAVIUM_CN63XXP1 is not set
 CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE=2
@@ -37,9 +35,6 @@ CONFIG_CAVIUM_OCTEON_LOCK_L2_TLB=y
 CONFIG_CAVIUM_OCTEON_SOC=y
 CONFIG_CEVT_R4K=y
 CONFIG_CLONE_BACKWARDS=y
-CONFIG_COMPAT=y
-CONFIG_COMPAT_32BIT_TIME=y
-CONFIG_COMPAT_NETLINK_MESSAGES=y
 CONFIG_CPU_BIG_ENDIAN=y
 CONFIG_CPU_CAVIUM_OCTEON=y
 CONFIG_CPU_GENERIC_DUMP_TLB=y
@@ -114,7 +109,6 @@ CONFIG_HAVE_64BIT_ALIGNED_ACCESS=y
 CONFIG_HAVE_ARCH_COMPILER_H=y
 CONFIG_HAVE_ARCH_JUMP_LABEL=y
 CONFIG_HAVE_ARCH_KGDB=y
-CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
 CONFIG_HAVE_ARCH_TRACEHOOK=y
 CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
@@ -245,7 +239,6 @@ CONFIG_SRCU=y
 CONFIG_SWIOTLB=y
 CONFIG_SWPHY=y
 CONFIG_SYSCTL_EXCEPTION_TRACE=y
-CONFIG_SYSVIPC_COMPAT=y
 CONFIG_SYS_HAS_CPU_CAVIUM_OCTEON=y
 CONFIG_SYS_HAS_EARLY_PRINTK=y
 CONFIG_SYS_SUPPORTS_64BIT_KERNEL=y
diff --git a/target/linux/octeontx/config-4.14 b/target/linux/octeontx/config-4.14
index 8925ead14d..beb8ee647c 100644
--- a/target/linux/octeontx/config-4.14
+++ b/target/linux/octeontx/config-4.14
@@ -20,7 +20,6 @@ CONFIG_ARCH_HIBERNATION_POSSIBLE=y
 CONFIG_ARCH_MMAP_RND_BITS=18
 CONFIG_ARCH_MMAP_RND_BITS_MAX=33
 CONFIG_ARCH_MMAP_RND_BITS_MIN=18
-CONFIG_ARCH_MMAP_RND_COMPAT_BITS=11
 CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=11
 # CONFIG_ARCH_OPTIONAL_KERNEL_RWX is not set
 # CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
@@ -60,7 +59,6 @@ CONFIG_ARM64_VA_BITS=48
 # CONFIG_ARM64_VA_BITS_39 is not set
 CONFIG_ARM64_VA_BITS_48=y
 CONFIG_ARM64_VHE=y
-# CONFIG_ARMV8_DEPRECATED is not set
 CONFIG_ARM_AMBA=y
 CONFIG_ARM_ARCH_TIMER=y
 CONFIG_ARM_ARCH_TIMER_EVTSTREAM=y
@@ -88,7 +86,6 @@ CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_MQ_PCI=y
 CONFIG_BLK_MQ_VIRTIO=y
 CONFIG_BLK_SCSI_REQUEST=y
-CONFIG_BLOCK_COMPAT=y
 CONFIG_BOUNCE=y
 CONFIG_BPF_JIT=y
 CONFIG_CAN=y
@@ -119,10 +116,6 @@ CONFIG_COMMON_CLK=y
 CONFIG_COMMON_CLK_CS2000_CP=y
 # CONFIG_COMMON_CLK_VERSATILE is not set
 CONFIG_COMMON_CLK_XGENE=y
-CONFIG_COMPAT=y
-CONFIG_COMPAT_BINFMT_ELF=y
-CONFIG_COMPAT_NETLINK_MESSAGES=y
-CONFIG_COMPAT_OLD_SIGACTION=y
 CONFIG_CONFIGFS_FS=y
 CONFIG_CPUSETS=y
 # CONFIG_CPU_BIG_ENDIAN is not set
@@ -259,7 +252,6 @@ CONFIG_HAVE_ARCH_HUGE_VMAP=y
 CONFIG_HAVE_ARCH_JUMP_LABEL=y
 CONFIG_HAVE_ARCH_KASAN=y
 CONFIG_HAVE_ARCH_KGDB=y
-CONFIG_HAVE_ARCH_MMAP_RND_COMPAT_BITS=y
 CONFIG_HAVE_ARCH_PFN_VALID=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
 CONFIG_HAVE_ARCH_TRACEHOOK=y
@@ -299,7 +291,6 @@ CONFIG_HAVE_RCU_TABLE_FREE=y
 CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
 CONFIG_HAVE_SETUP_PER_CPU_AREA=y
 CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
-CONFIG_HAVE_UID16=y
 CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
 CONFIG_HIBERNATE_CALLBACKS=y
 CONFIG_HIBERNATION=y
@@ -392,7 +383,6 @@ CONFIG_OF_NUMA=y
 CONFIG_OF_PCI=y
 CONFIG_OF_PCI_IRQ=y
 CONFIG_OF_RESERVED_MEM=y
-CONFIG_OLD_SIGSUSPEND3=y
 CONFIG_OPTEE=y
 CONFIG_PADATA=y
 CONFIG_PAGE_COUNTER=y
@@ -498,7 +488,6 @@ CONFIG_SWPHY=y
 CONFIG_SYNC_FILE=y
 CONFIG_SYSCON_REBOOT_MODE=y
 CONFIG_SYSCTL_EXCEPTION_TRACE=y
-CONFIG_SYSVIPC_COMPAT=y
 CONFIG_SYS_SUPPORTS_HUGETLBFS=y
 CONFIG_TASKSTATS=y
 CONFIG_TASK_DELAY_ACCT=y
diff --git a/target/linux/sunxi/cortexa53/config-4.14 b/target/linux/sunxi/cortexa53/config-4.14
index adb71fca7e..1ba379ea65 100644
--- a/target/linux/sunxi/cortexa53/config-4.14
+++ b/target/linux/sunxi/cortexa53/config-4.14
@@ -44,7 +44,6 @@ CONFIG_ARM_AMBA=y
 CONFIG_ARM_GIC_V3=y
 # CONFIG_ARM_SP805_WATCHDOG is not set
 CONFIG_AUDIT_ARCH_COMPAT_GENERIC=y
-# CONFIG_COMPAT is not set
 CONFIG_DWMAC_SUN8I=y
 CONFIG_FRAME_POINTER=y
 CONFIG_GENERIC_BUG_RELATIVE_POINTERS=y
diff --git a/target/linux/sunxi/cortexa53/config-4.19 b/target/linux/sunxi/cortexa53/config-4.19
index 2f79acdbc8..67ff2c2633 100644
--- a/target/linux/sunxi/cortexa53/config-4.19
+++ b/target/linux/sunxi/cortexa53/config-4.19
@@ -45,7 +45,6 @@ CONFIG_ARM64_VA_BITS_39=y
 CONFIG_ARM_AMBA=y
 # CONFIG_ARM_SP805_WATCHDOG is not set
 CONFIG_AUDIT_ARCH_COMPAT_GENERIC=y
-# CONFIG_COMPAT is not set
 CONFIG_DMA_DIRECT_OPS=y
 CONFIG_DWMAC_SUN8I=y
 # CONFIG_FLATMEM_MANUAL is not set
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
