Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4487C178D31
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 10:15:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKWJAcOGZPtyvNQJ1ECUAxVtx1zuDFuIMFrlIgd9lhM=; b=pw3MZ+AMYt5fic
	I0IighIBaUCdziIUr6JWY/0kyeZoWEm2BCST1zKUqe4c7I2C/+5zG4zfqcy5DhVt3JsGGm3ZiXNNk
	dU1QS8oqfdVzAfSs1B1BEinXAWyt6Vq2CW9TDRr7icVdF6A45LxZs8ZB3XWxc8ff679n2cK4WJDy9
	WvW6vv1jBqC5QoRbtT4C2jkF7j+RMyZr8DWqYsh19TsVC8PJWK1a3D0amkAuScU72aLb+FpetmLAS
	6AvN55jsRBrk11b72Vc+ZtfduGlVGMewkhYEI5nXF3K66azo4vx2DSbBAHZ1v9PIb/lLlkATKQdKl
	5yxffXH41rd4KdMD+Xbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Q7V-0004EA-Mb; Wed, 04 Mar 2020 09:15:13 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Q76-0003wQ-MR
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 09:14:50 +0000
Received: by mail-pj1-x1041.google.com with SMTP id cx7so647720pjb.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 04 Mar 2020 01:14:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZAduLa5GXjt59whPNVhZ5oWxO78BS/3Iy19LleCe6P4=;
 b=ZAQ44sxug7u3yR5KigNevEJ4yUsKAlZ63IfRtRxvp3yrOR6Kq7jRJX9fK3OYzmR86F
 mv+cdsZPx0wIHpgsc3MimqneC3unH8Atw5dPQWVYQh8Wg5qZoeYgnYVPLd297tTm3HGO
 sSjvYRwyxPRWKIFZYXZAUFRa7/Fo8AhQcN/cHwJAnT/mJdRe30uo4AHejf7vyhggx9jh
 /YnXS+2LCWAhkKixeXr57m4i5e9ygR8qGDSrw7MBLsMXrwzvdRXc/CI+HbzP/R+8q/aV
 o0UVTETbzOPtn+AxhUSuDym4RWR9jfI0Laq9FK/PVlEJr/XpiiKek/Mb0EB7RRA42rMY
 NmiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZAduLa5GXjt59whPNVhZ5oWxO78BS/3Iy19LleCe6P4=;
 b=IbDehsbCbnssyK0wUSxYMLCTQvN4an5OF4++dJ3josjU9IqsXwSYmZT2krP9k19mkE
 QpijqG0quo9CTInmAyn3XNJwLlzYcRJnx5xwibv98l89qNsQfLdPm1Tq0muoZGnvR4Fp
 g5HVAcwCnQe7Kt2gvKZpbFXQhLjGXAopYWuvUsuyll+A2T8ieVchl5ltGws8StE9A4/T
 iPyeHsbY8YMzJwSm7WQ3Fu0D3C1igD0keHRfhTe/7OTf7HT3qtKtTPNjqbnWBwQ612qX
 K9hib6amsn6uQph9ffjK3bXCYGsuIdLEl4rok9QIQoUrUiod22TdPE8UqMlRujSsBrsi
 lHqQ==
X-Gm-Message-State: ANhLgQ2HkwZwqcslqfoW7QLiWTAMVhTKu4khGcz/uLvcWNQqoo/VRgOv
 40Nx1K5awmQaJvm0QDjsRYJDMewEZm4=
X-Google-Smtp-Source: ADFU+vvHED9NqGUEhG3cA9bArj0JVn17jbdPp5S6NZIByYELd4PGMoJxjxJ4HzGYsCOvwefXuYsnPA==
X-Received: by 2002:a17:902:b485:: with SMTP id y5mr2126366plr.4.1583313287369; 
 Wed, 04 Mar 2020 01:14:47 -0800 (PST)
Received: from titan-10-168-222-196.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id u7sm26969477pfh.128.2020.03.04.01.14.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Mar 2020 01:14:46 -0800 (PST)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  4 Mar 2020 17:14:06 +0800
Message-Id: <20200304091407.14821-4-yszhou4tech@gmail.com>
In-Reply-To: <20200304091407.14821-1-yszhou4tech@gmail.com>
References: <20200304091407.14821-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_011448_747848_6D11A74A 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.2 UPPERCASE_75_100       message body is 75-100% uppercase
Subject: [OpenWrt-Devel] [PATCH 3/4] malta: update kernel config-5.4
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

With malta/be selected

	make kernel_menuconfig CONFIG_TARGET=subtarget_platform

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 target/linux/malta/config-5.4 | 50 ++++++++++++++++++++---------------
 1 file changed, 29 insertions(+), 21 deletions(-)

diff --git a/target/linux/malta/config-5.4 b/target/linux/malta/config-5.4
index f66036e27b..41fc977043 100644
--- a/target/linux/malta/config-5.4
+++ b/target/linux/malta/config-5.4
@@ -1,9 +1,14 @@
-CONFIG_ARCH_BINFMT_ELF_STATE=y
+CONFIG_ARCH_32BIT_OFF_T=y
 CONFIG_ARCH_CLOCKSOURCE_DATA=y
-CONFIG_ARCH_DISCARD_MEMBLOCK=y
+CONFIG_ARCH_HAS_DMA_COHERENCE_H=y
+CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN=y
+CONFIG_ARCH_HAS_DMA_PREP_COHERENT=y
+CONFIG_ARCH_HAS_DMA_WRITE_COMBINE=y
 CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
+CONFIG_ARCH_HAS_PTE_SPECIAL=y
 CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU=y
 CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE=y
+CONFIG_ARCH_HAS_UNCACHED_SEGMENT=y
 CONFIG_ARCH_MAY_HAVE_PC_FDC=y
 CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
 CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=y
@@ -11,8 +16,10 @@ CONFIG_ARCH_MMAP_RND_BITS_MAX=15
 CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=15
 CONFIG_ARCH_SUPPORTS_UPROBES=y
 CONFIG_ARCH_USE_BUILTIN_BSWAP=y
+CONFIG_ARCH_USE_MEMREMAP_PROT=y
 CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
 CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
+CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT=y
 CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
 CONFIG_ATA=y
 CONFIG_ATA_PIIX=y
@@ -44,34 +51,31 @@ CONFIG_CLKSRC_MIPS_GIC=y
 CONFIG_CLONE_BACKWARDS=y
 CONFIG_COMMON_CLK=y
 # CONFIG_COMMON_CLK_BOSTON is not set
+CONFIG_COMPAT_32BIT_TIME=y
 CONFIG_CONSOLE_TRANSLATIONS=y
 CONFIG_CPU_GENERIC_DUMP_TLB=y
+CONFIG_CPU_HAS_LOAD_STORE_LR=y
 CONFIG_CPU_HAS_PREFETCH=y
-CONFIG_CPU_HAS_RIXI=y
 # CONFIG_CPU_HAS_SMARTMIPS is not set
 CONFIG_CPU_HAS_SYNC=y
 # CONFIG_CPU_MICROMIPS is not set
 CONFIG_CPU_MIPS32=y
-# CONFIG_CPU_MIPS32_3_5_FEATURES is not set
-# CONFIG_CPU_MIPS32_R1 is not set
+CONFIG_CPU_MIPS32_R1=y
 # CONFIG_CPU_MIPS32_R2 is not set
-# CONFIG_CPU_MIPS32_R5_FEATURES is not set
 # CONFIG_CPU_MIPS32_R6 is not set
 # CONFIG_CPU_MIPS64_R1 is not set
 # CONFIG_CPU_MIPS64_R2 is not set
 # CONFIG_CPU_MIPS64_R6 is not set
-CONFIG_CPU_MIPSR2=y
+CONFIG_CPU_MIPSR1=y
 CONFIG_CPU_MIPSR2_IRQ_EI=y
 CONFIG_CPU_MIPSR2_IRQ_VI=y
 CONFIG_CPU_NEEDS_NO_SMARTMIPS_OR_MICROMIPS=y
 # CONFIG_CPU_NEVADA is not set
 CONFIG_CPU_R4K_CACHE_TLB=y
-CONFIG_CPU_R4K_FPU=y
 # CONFIG_CPU_RM7000 is not set
 CONFIG_CPU_RMAP=y
 CONFIG_CPU_SUPPORTS_32BIT_KERNEL=y
 CONFIG_CPU_SUPPORTS_HIGHMEM=y
-CONFIG_CPU_SUPPORTS_MSA=y
 CONFIG_CRC16=y
 CONFIG_CRYPTO_AEAD=y
 CONFIG_CRYPTO_AEAD2=y
@@ -83,17 +87,14 @@ CONFIG_CRYPTO_MANAGER=y
 CONFIG_CRYPTO_MANAGER2=y
 CONFIG_CRYPTO_NULL2=y
 CONFIG_CRYPTO_RNG2=y
-CONFIG_CRYPTO_WORKQUEUE=y
 CONFIG_CSRC_R4K=y
-CONFIG_DMA_DIRECT_OPS=y
 CONFIG_DMA_MAYBE_COHERENT=y
 CONFIG_DMA_NONCOHERENT=y
 CONFIG_DMA_NONCOHERENT_CACHE_SYNC=y
-CONFIG_DMA_NONCOHERENT_MMAP=y
-CONFIG_DMA_NONCOHERENT_OPS=y
 CONFIG_DNOTIFY=y
 CONFIG_DTC=y
 CONFIG_DUMMY_CONSOLE=y
+CONFIG_EFI_EARLYCON=y
 CONFIG_ENABLE_MUST_CHECK=y
 CONFIG_EXT4_FS=y
 # CONFIG_F2FS_CHECK_FS is not set
@@ -101,13 +102,19 @@ CONFIG_F2FS_FS=y
 # CONFIG_F2FS_FS_SECURITY is not set
 CONFIG_F2FS_FS_XATTR=y
 CONFIG_F2FS_STAT_FS=y
+CONFIG_FONT_8x16=y
+CONFIG_FONT_AUTOSELECT=y
+CONFIG_FONT_SUPPORT=y
 CONFIG_FS_IOMAP=y
 CONFIG_FS_MBCACHE=y
 CONFIG_FS_POSIX_ACL=y
+CONFIG_FW_LOADER_PAGED_BUF=y
 CONFIG_GENERIC_ATOMIC64=y
 CONFIG_GENERIC_CLOCKEVENTS=y
 CONFIG_GENERIC_CMOS_UPDATE=y
 CONFIG_GENERIC_CPU_AUTOPROBE=y
+CONFIG_GENERIC_GETTIMEOFDAY=y
+CONFIG_GENERIC_IOMAP=y
 CONFIG_GENERIC_IRQ_CHIP=y
 CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=y
 CONFIG_GENERIC_IRQ_IPI=y
@@ -133,7 +140,7 @@ CONFIG_HAVE_ARCH_JUMP_LABEL=y
 CONFIG_HAVE_ARCH_KGDB=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
 CONFIG_HAVE_ARCH_TRACEHOOK=y
-CONFIG_HAVE_CBPF_JIT=y
+CONFIG_HAVE_ASM_MODVERSIONS=y
 CONFIG_HAVE_CLK=y
 CONFIG_HAVE_CLK_PREPARE=y
 CONFIG_HAVE_CONTEXT_TRACKING=y
@@ -143,28 +150,27 @@ CONFIG_HAVE_DEBUG_KMEMLEAK=y
 CONFIG_HAVE_DEBUG_STACKOVERFLOW=y
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
-CONFIG_HAVE_KVM=y
-CONFIG_HAVE_LATENCYTOP_SUPPORT=y
 CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y
-CONFIG_HAVE_MEMBLOCK=y
 CONFIG_HAVE_MEMBLOCK_NODE_MAP=y
 CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
 CONFIG_HAVE_NET_DSA=y
 CONFIG_HAVE_OPROFILE=y
+CONFIG_HAVE_PCI=y
 CONFIG_HAVE_PCSPKR_PLATFORM=y
 CONFIG_HAVE_PERF_EVENTS=y
 CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
 CONFIG_HAVE_RSEQ=y
 CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
 CONFIG_HW_CONSOLE=y
-CONFIG_HW_HAS_PCI=y
 CONFIG_I8253=y
 CONFIG_I8253_LOCK=y
 CONFIG_I8259=y
@@ -220,7 +226,6 @@ CONFIG_MIPS_NO_APPENDED_DTB=y
 CONFIG_MIPS_NR_CPU_NR_MAP=2
 CONFIG_MIPS_PERF_SHARED_TC_COUNTERS=y
 # CONFIG_MIPS_RAW_APPENDED_DTB is not set
-CONFIG_MIPS_SPRAM=y
 # CONFIG_MIPS_VPE_LOADER is not set
 CONFIG_MODULES_TREE_LOOKUP=y
 CONFIG_MODULES_USE_ELF_REL=y
@@ -229,12 +234,14 @@ CONFIG_MTD_CFI_STAA=y
 # CONFIG_MTD_COMPLEX_MAPPINGS is not set
 CONFIG_NEED_DMA_MAP_STATE=y
 CONFIG_NET_FLOW_LIMIT=y
+CONFIG_NLS=y
 CONFIG_NO_GENERIC_PCI_IOPORT_MAP=y
 CONFIG_NO_HZ=y
 CONFIG_NO_HZ_COMMON=y
 CONFIG_NO_HZ_IDLE=y
 CONFIG_NR_CPUS=2
 CONFIG_NVMEM=y
+# CONFIG_NVMEM_REBOOT_MODE is not set
 CONFIG_OF=y
 CONFIG_OF_ADDRESS=y
 CONFIG_OF_EARLY_FLATTREE=y
@@ -275,7 +282,7 @@ CONFIG_RELAY=y
 CONFIG_RFS_ACCEL=y
 CONFIG_RPS=y
 CONFIG_RTC_CLASS=y
-CONFIG_RTC_MC146818_LIB=y
+# CONFIG_RTC_DRV_JZ4740 is not set
 CONFIG_SCSI=y
 CONFIG_SECCOMP=y
 CONFIG_SECCOMP_FILTER=y
@@ -319,6 +326,7 @@ CONFIG_SYS_SUPPORTS_SMARTMIPS=y
 CONFIG_SYS_SUPPORTS_SMP=y
 CONFIG_SYS_SUPPORTS_VPE_LOADER=y
 CONFIG_SYS_SUPPORTS_ZBOOT=y
+CONFIG_TARGET_ISA_REV=1
 CONFIG_TICK_CPU_ACCOUNTING=y
 CONFIG_TIMER_OF=y
 CONFIG_TIMER_PROBE=y

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
