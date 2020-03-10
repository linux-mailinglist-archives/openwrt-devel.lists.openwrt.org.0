Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4072B17F512
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Mar 2020 11:30:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tzkzr/lAIRuZXo2G0nKf/+iOw7z+VZ9/X32InFqtomg=; b=TQMWsmoi3BUaQ3
	EO6e+GLBqZpWDzQejtCvlbMVKv/qhOEjPxAfrxKgJ6cBbJ6PMtB7lRPnWxXtmtz4U0sT1mJU2Gl/n
	11l6ZgsQX+OTGVenaoj8c93WAjzpvZfzMJnSFwWuADpJ4PCyESCEoRKDSLmld0SnAeqFmE30T31/0
	1MN1MRK7QaaDJ52+WwLXYnb8yPWVtjmXtmcwB2MlArZ1JBzx0tob9qe6n8SPzxpYxo5af3D1NvXYo
	ArCRUP46wVBmsDBTqYtTTdee5FhY6LYZk01gkga0A+t1MKEOeCFm5/fyjV3HtasFrz9GXoKKDXZpa
	hYubzP3otUKSW9vFaWAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBc98-0004LC-K7; Tue, 10 Mar 2020 10:29:58 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBc8s-0004HC-Nx
 for openwrt-devel@lists.openwrt.org; Tue, 10 Mar 2020 10:29:44 +0000
Received: by mail-lj1-x241.google.com with SMTP id 19so10641348ljj.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Mar 2020 03:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9i8UuE+cT63bhhaAEcxQVx+BsuqZvShjCF9x5kPdWpA=;
 b=Db76WlRzG8OKuuaDSFlDcbh6Fe7T4Dr98WClxmdugvQCWnZzFyJ+pKBL2QbdL09cRZ
 kTNlcEN+6hlBl3pTt0akX00q+9wxjcgXR4iFcDnl+yRlUEeKu1dhfxFZQRIuydPSqKbb
 DWpWhxUWh8UDJj20e6Y10b700P/9EMkOcB8dgZB5tzvL2X4dqU0jjb1a1FGYw9jfI1Ju
 bCx8p6eNGBaPPL4rN59Zm4dY45FfToPXvPjfss4oEZoXI/Cco87NUabWJM50oSgwUF1i
 GgmPuUHe7mFN3F5VLWOP8eIfLR2qwV9/6VQGe7pFysFP+3HU9+j0ek4wk+yHaJlcFAbc
 NpuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9i8UuE+cT63bhhaAEcxQVx+BsuqZvShjCF9x5kPdWpA=;
 b=guWA5Avy/pNN/4A5CiwLCAQvTutjjjdqjd17mT0L5jnG5PxHvC3qRr8hoJzh/fukkP
 v05oYtkRxQCWcp7ppYDmPjm0rNor51PtRxpUR9YIKNEnSfHhi6ECdBL3za4sWS8NYUI5
 BrKb6nMWqqLWvCz5CEEsvOTqVsWgl0sjTCKVh4trHdgCnT2qQvpNhZmmJArhTKM24oBA
 FTNfiBAvBnx3RoHQ8bfc0ak1/c3Ik66zjUTDuqbUbb0bIWDz9oo5aBy5i1BKDzUHrfMp
 mZX6M6AOU9Y68eiRlrp2uN5U8zxRvILB/AgjD7dBBd+e299hb/qxgf6uEBaYASzMbkhj
 vZcQ==
X-Gm-Message-State: ANhLgQ3JYDlcgqsBEj/JTyWKRaU63HCIfJ6ukCLqz7a2E6EWjekExWAH
 D+sVU0ep6fW0RBBpYzKxVDttHMH+9cQXaGBuiCU=
X-Google-Smtp-Source: ADFU+vsRkIqmfA3Tp+2+Vx6yb9ZMZ5MgYkE89zyT66isZy1i0vWolaLoAZlB8F8TXvtfWstQ/lxRquCM0QrfT7LTe44=
X-Received: by 2002:a2e:b5ca:: with SMTP id g10mr12349994ljn.123.1583836181222; 
 Tue, 10 Mar 2020 03:29:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200301121241.5545-1-hauke@hauke-m.de>
 <20200301121241.5545-7-hauke@hauke-m.de>
In-Reply-To: <20200301121241.5545-7-hauke@hauke-m.de>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Tue, 10 Mar 2020 18:29:29 +0800
Message-ID: <CAECwjAjc=qQO0DTf+bYZPWwusPEy2B7q83Om8F+=kdPikYgQRA@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_032942_954463_CBBEB3EC 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yszhou4tech[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.2 UPPERCASE_75_100       message body is 75-100% uppercase
Subject: Re: [OpenWrt-Devel] [PATCH 06/12] malta: Remove kernel 4.14 support
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, 1 Mar 2020 at 20:14, Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> This target was switched to kernel 4.19 more than 6 months ago in commit
> f342ffd300da ("treewide: kernel: bump some targets to 4.19") and now
> with kernel 5.4 support being added it gets harder to support kernel
> 4.14 in addition to kernel 4.19 and 5.4.
>
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>

Acked-by: Yousong Zhou <yszhou4tech@gmail.com>

Regards,
                yousong


> ---
>  target/linux/malta/config-4.14 | 326 ---------------------------------
>  1 file changed, 326 deletions(-)
>  delete mode 100644 target/linux/malta/config-4.14
>
> diff --git a/target/linux/malta/config-4.14 b/target/linux/malta/config-4.14
> deleted file mode 100644
> index 6fc80b33c9ff..000000000000
> --- a/target/linux/malta/config-4.14
> +++ /dev/null
> @@ -1,326 +0,0 @@
> -CONFIG_ARCH_BINFMT_ELF_STATE=y
> -CONFIG_ARCH_CLOCKSOURCE_DATA=y
> -CONFIG_ARCH_DISCARD_MEMBLOCK=y
> -CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
> -# CONFIG_ARCH_HAS_GCOV_PROFILE_ALL is not set
> -# CONFIG_ARCH_HAS_SG_CHAIN is not set
> -# CONFIG_ARCH_HAS_STRICT_KERNEL_RWX is not set
> -# CONFIG_ARCH_HAS_STRICT_MODULE_RWX is not set
> -CONFIG_ARCH_MAY_HAVE_PC_FDC=y
> -CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
> -CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=y
> -CONFIG_ARCH_MMAP_RND_BITS_MAX=15
> -CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=15
> -# CONFIG_ARCH_OPTIONAL_KERNEL_RWX is not set
> -# CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
> -CONFIG_ARCH_SUPPORTS_UPROBES=y
> -CONFIG_ARCH_USE_BUILTIN_BSWAP=y
> -CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
> -CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
> -CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
> -CONFIG_ATA=y
> -CONFIG_ATA_PIIX=y
> -CONFIG_BLK_DEV_BSG=y
> -CONFIG_BLK_DEV_BSGLIB=y
> -# CONFIG_BLK_DEV_DM is not set
> -# CONFIG_BLK_DEV_INITRD is not set
> -# CONFIG_BLK_DEV_MD is not set
> -CONFIG_BLK_DEV_RAM=y
> -CONFIG_BLK_DEV_RAM_COUNT=16
> -CONFIG_BLK_DEV_RAM_SIZE=4096
> -CONFIG_BLK_DEV_SD=y
> -CONFIG_BLK_MQ_PCI=y
> -CONFIG_BLK_SCSI_REQUEST=y
> -CONFIG_BOARD_SCACHE=y
> -CONFIG_BOOT_ELF32=y
> -CONFIG_BOUNCE=y
> -CONFIG_BUILTIN_DTB=y
> -CONFIG_CEVT_R4K=y
> -CONFIG_CLKBLD_I8253=y
> -CONFIG_CLKDEV_LOOKUP=y
> -CONFIG_CLKEVT_I8253=y
> -CONFIG_CLKSRC_I8253=y
> -CONFIG_CLKSRC_MIPS_GIC=y
> -CONFIG_CLONE_BACKWARDS=y
> -CONFIG_COMMON_CLK=y
> -# CONFIG_COMMON_CLK_BOSTON is not set
> -CONFIG_CONSOLE_TRANSLATIONS=y
> -CONFIG_CPU_GENERIC_DUMP_TLB=y
> -CONFIG_CPU_HAS_PREFETCH=y
> -CONFIG_CPU_HAS_RIXI=y
> -# CONFIG_CPU_HAS_SMARTMIPS is not set
> -CONFIG_CPU_HAS_SYNC=y
> -# CONFIG_CPU_MICROMIPS is not set
> -CONFIG_CPU_MIPS32=y
> -# CONFIG_CPU_MIPS32_3_5_FEATURES is not set
> -# CONFIG_CPU_MIPS32_R1 is not set
> -# CONFIG_CPU_MIPS32_R2 is not set
> -# CONFIG_CPU_MIPS32_R5_FEATURES is not set
> -# CONFIG_CPU_MIPS32_R6 is not set
> -# CONFIG_CPU_MIPS64_R1 is not set
> -# CONFIG_CPU_MIPS64_R2 is not set
> -# CONFIG_CPU_MIPS64_R6 is not set
> -CONFIG_CPU_MIPSR2=y
> -CONFIG_CPU_MIPSR2_IRQ_EI=y
> -CONFIG_CPU_MIPSR2_IRQ_VI=y
> -CONFIG_CPU_NEEDS_NO_SMARTMIPS_OR_MICROMIPS=y
> -# CONFIG_CPU_NEVADA is not set
> -CONFIG_CPU_R4K_CACHE_TLB=y
> -CONFIG_CPU_R4K_FPU=y
> -# CONFIG_CPU_RM7000 is not set
> -CONFIG_CPU_RMAP=y
> -CONFIG_CPU_SUPPORTS_32BIT_KERNEL=y
> -CONFIG_CPU_SUPPORTS_HIGHMEM=y
> -CONFIG_CPU_SUPPORTS_MSA=y
> -CONFIG_CRC16=y
> -CONFIG_CRYPTO_AEAD=y
> -CONFIG_CRYPTO_AEAD2=y
> -CONFIG_CRYPTO_CRC32C=y
> -CONFIG_CRYPTO_HASH=y
> -CONFIG_CRYPTO_HASH2=y
> -CONFIG_CRYPTO_MANAGER=y
> -CONFIG_CRYPTO_MANAGER2=y
> -CONFIG_CRYPTO_NULL2=y
> -CONFIG_CRYPTO_RNG2=y
> -CONFIG_CRYPTO_WORKQUEUE=y
> -CONFIG_CSRC_R4K=y
> -CONFIG_DMA_MAYBE_COHERENT=y
> -CONFIG_DMA_NONCOHERENT=y
> -CONFIG_DMA_UNMAP_POST_FLUSH=y
> -CONFIG_DNOTIFY=y
> -CONFIG_DTC=y
> -CONFIG_DUMMY_CONSOLE=y
> -CONFIG_ENABLE_MUST_CHECK=y
> -CONFIG_EXT4_FS=y
> -CONFIG_FIRMWARE_IN_KERNEL=y
> -CONFIG_FS_MBCACHE=y
> -CONFIG_FS_POSIX_ACL=y
> -CONFIG_GENERIC_ATOMIC64=y
> -CONFIG_GENERIC_CLOCKEVENTS=y
> -CONFIG_GENERIC_CMOS_UPDATE=y
> -CONFIG_GENERIC_CPU_AUTOPROBE=y
> -CONFIG_GENERIC_IO=y
> -CONFIG_GENERIC_IRQ_CHIP=y
> -CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=y
> -CONFIG_GENERIC_IRQ_IPI=y
> -CONFIG_GENERIC_IRQ_SHOW=y
> -CONFIG_GENERIC_ISA_DMA=y
> -CONFIG_GENERIC_PCI_IOMAP=y
> -CONFIG_GENERIC_SCHED_CLOCK=y
> -CONFIG_GENERIC_SMP_IDLE_THREAD=y
> -CONFIG_GENERIC_TIME_VSYSCALL=y
> -CONFIG_GLOB=y
> -# CONFIG_GRO_CELLS is not set
> -CONFIG_HANDLE_DOMAIN_IRQ=y
> -CONFIG_HARDWARE_WATCHPOINTS=y
> -CONFIG_HAS_DMA=y
> -CONFIG_HAS_IOMEM=y
> -CONFIG_HAS_IOPORT_MAP=y
> -# CONFIG_HAVE_64BIT_ALIGNED_ACCESS is not set
> -# CONFIG_HAVE_ARCH_BITREVERSE is not set
> -CONFIG_HAVE_ARCH_COMPILER_H=y
> -CONFIG_HAVE_ARCH_JUMP_LABEL=y
> -CONFIG_HAVE_ARCH_KGDB=y
> -CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
> -CONFIG_HAVE_ARCH_TRACEHOOK=y
> -# CONFIG_HAVE_BOOTMEM_INFO_NODE is not set
> -CONFIG_HAVE_CBPF_JIT=y
> -CONFIG_HAVE_CC_STACKPROTECTOR=y
> -CONFIG_HAVE_CLK=y
> -CONFIG_HAVE_CLK_PREPARE=y
> -CONFIG_HAVE_CONTEXT_TRACKING=y
> -CONFIG_HAVE_COPY_THREAD_TLS=y
> -CONFIG_HAVE_C_RECORDMCOUNT=y
> -CONFIG_HAVE_DEBUG_KMEMLEAK=y
> -CONFIG_HAVE_DEBUG_STACKOVERFLOW=y
> -CONFIG_HAVE_DMA_API_DEBUG=y
> -CONFIG_HAVE_DMA_CONTIGUOUS=y
> -CONFIG_HAVE_DYNAMIC_FTRACE=y
> -CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
> -CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
> -CONFIG_HAVE_FUNCTION_TRACER=y
> -CONFIG_HAVE_GENERIC_DMA_COHERENT=y
> -CONFIG_HAVE_IDE=y
> -CONFIG_HAVE_IRQ_EXIT_ON_IRQ_STACK=y
> -CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
> -CONFIG_HAVE_KVM=y
> -CONFIG_HAVE_LATENCYTOP_SUPPORT=y
> -CONFIG_HAVE_MEMBLOCK=y
> -CONFIG_HAVE_MEMBLOCK_NODE_MAP=y
> -CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
> -CONFIG_HAVE_NET_DSA=y
> -CONFIG_HAVE_OPROFILE=y
> -CONFIG_HAVE_PCSPKR_PLATFORM=y
> -CONFIG_HAVE_PERF_EVENTS=y
> -CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
> -CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
> -CONFIG_HW_CONSOLE=y
> -CONFIG_HW_HAS_PCI=y
> -CONFIG_I8253=y
> -CONFIG_I8253_LOCK=y
> -CONFIG_I8259=y
> -CONFIG_INPUT=y
> -# CONFIG_INPUT_MISC is not set
> -CONFIG_INPUT_MOUSEDEV=y
> -CONFIG_INPUT_MOUSEDEV_PSAUX=y
> -CONFIG_INPUT_MOUSEDEV_SCREEN_X=1024
> -CONFIG_INPUT_MOUSEDEV_SCREEN_Y=768
> -CONFIG_IRQCHIP=y
> -CONFIG_IRQ_DOMAIN=y
> -CONFIG_IRQ_DOMAIN_HIERARCHY=y
> -CONFIG_IRQ_FORCED_THREADING=y
> -CONFIG_IRQ_MIPS_CPU=y
> -CONFIG_IRQ_WORK=y
> -CONFIG_ISA_DMA_API=y
> -CONFIG_JBD2=y
> -CONFIG_JFFS2_FS_POSIX_ACL=y
> -CONFIG_JFFS2_FS_SECURITY=y
> -CONFIG_KALLSYMS=y
> -CONFIG_KERNEL_GZIP=y
> -# CONFIG_KERNEL_XZ is not set
> -# CONFIG_LEDS_TRIGGER_TIMER is not set
> -CONFIG_LIBFDT=y
> -CONFIG_MD=y
> -# CONFIG_MDIO_BUS is not set
> -CONFIG_MIGRATION=y
> -CONFIG_MIPS=y
> -CONFIG_MIPS_ASID_BITS=8
> -CONFIG_MIPS_ASID_SHIFT=0
> -CONFIG_MIPS_BONITO64=y
> -CONFIG_MIPS_CLOCK_VSYSCALL=y
> -CONFIG_MIPS_CM=y
> -# CONFIG_MIPS_CMDLINE_DTB_EXTEND is not set
> -CONFIG_MIPS_CMDLINE_FROM_BOOTLOADER=y
> -# CONFIG_MIPS_CMDLINE_FROM_DTB is not set
> -# CONFIG_MIPS_CMP is not set
> -CONFIG_MIPS_CPC=y
> -# CONFIG_MIPS_CPS is not set
> -CONFIG_MIPS_CPU_SCACHE=y
> -# CONFIG_MIPS_ELF_APPENDED_DTB is not set
> -CONFIG_MIPS_EXTERNAL_TIMER=y
> -CONFIG_MIPS_GIC=y
> -# CONFIG_MIPS_HUGE_TLB_SUPPORT is not set
> -CONFIG_MIPS_L1_CACHE_SHIFT=6
> -CONFIG_MIPS_L1_CACHE_SHIFT_6=y
> -# CONFIG_MIPS_MACHINE is not set
> -CONFIG_MIPS_MALTA=y
> -CONFIG_MIPS_MALTA_PM=y
> -CONFIG_MIPS_MSC=y
> -CONFIG_MIPS_MT=y
> -CONFIG_MIPS_MT_FPAFF=y
> -CONFIG_MIPS_MT_SMP=y
> -CONFIG_MIPS_NO_APPENDED_DTB=y
> -CONFIG_MIPS_PERF_SHARED_TC_COUNTERS=y
> -# CONFIG_MIPS_RAW_APPENDED_DTB is not set
> -CONFIG_MIPS_SPRAM=y
> -# CONFIG_MIPS_VPE_LOADER is not set
> -CONFIG_MODULES_TREE_LOOKUP=y
> -CONFIG_MODULES_USE_ELF_REL=y
> -CONFIG_MODULE_FORCE_UNLOAD=y
> -CONFIG_MTD_CFI_STAA=y
> -# CONFIG_MTD_COMPLEX_MAPPINGS is not set
> -CONFIG_MTD_PHYSMAP=y
> -CONFIG_NEED_DMA_MAP_STATE=y
> -CONFIG_NET_FLOW_LIMIT=y
> -CONFIG_NO_GENERIC_PCI_IOPORT_MAP=y
> -CONFIG_NO_HZ=y
> -CONFIG_NO_HZ_COMMON=y
> -CONFIG_NO_HZ_IDLE=y
> -# CONFIG_NO_IOPORT_MAP is not set
> -CONFIG_NR_CPUS=2
> -CONFIG_OF=y
> -CONFIG_OF_ADDRESS=y
> -CONFIG_OF_ADDRESS_PCI=y
> -CONFIG_OF_EARLY_FLATTREE=y
> -CONFIG_OF_FLATTREE=y
> -CONFIG_OF_IRQ=y
> -CONFIG_OF_NET=y
> -CONFIG_OF_PCI=y
> -CONFIG_OF_PCI_IRQ=y
> -CONFIG_PADATA=y
> -# CONFIG_PARTITION_ADVANCED is not set
> -CONFIG_PCI=y
> -CONFIG_PCI_DOMAINS=y
> -CONFIG_PCI_DRIVERS_LEGACY=y
> -CONFIG_PCI_GT64XXX_PCI0=y
> -CONFIG_PCSPKR_PLATFORM=y
> -CONFIG_PERF_EVENTS=y
> -CONFIG_PERF_USE_VMALLOC=y
> -CONFIG_PGTABLE_LEVELS=2
> -CONFIG_PRINT_QUOTA_WARNING=y
> -CONFIG_PROC_PAGE_MONITOR=y
> -# CONFIG_QFMT_V1 is not set
> -CONFIG_QFMT_V2=y
> -CONFIG_QUEUED_RWLOCKS=y
> -CONFIG_QUEUED_SPINLOCKS=y
> -CONFIG_QUOTA=y
> -CONFIG_QUOTACTL=y
> -# CONFIG_QUOTA_NETLINK_INTERFACE is not set
> -CONFIG_QUOTA_TREE=y
> -CONFIG_RATIONAL=y
> -CONFIG_RCU_NEED_SEGCBLIST=y
> -CONFIG_RCU_STALL_COMMON=y
> -CONFIG_RELAY=y
> -CONFIG_RFS_ACCEL=y
> -CONFIG_RPS=y
> -CONFIG_RTC_CLASS=y
> -CONFIG_RTC_MC146818_LIB=y
> -# CONFIG_SCHED_INFO is not set
> -CONFIG_SCSI=y
> -CONFIG_SECCOMP=y
> -CONFIG_SECCOMP_FILTER=y
> -# CONFIG_SERIAL_8250_FSL is not set
> -CONFIG_SERIAL_8250_NR_UARTS=4
> -CONFIG_SERIAL_8250_RUNTIME_UARTS=4
> -CONFIG_SERIO=y
> -CONFIG_SERIO_SERPORT=y
> -CONFIG_SG_POOL=y
> -CONFIG_SMP=y
> -CONFIG_SMP_UP=y
> -CONFIG_SRCU=y
> -CONFIG_SWAP_IO_SPACE=y
> -CONFIG_SYNC_R4K=y
> -CONFIG_SYSCTL_EXCEPTION_TRACE=y
> -CONFIG_SYSFS_DEPRECATED=y
> -CONFIG_SYSFS_DEPRECATED_V2=y
> -CONFIG_SYS_HAS_CPU_MIPS32_R1=y
> -CONFIG_SYS_HAS_CPU_MIPS32_R2=y
> -CONFIG_SYS_HAS_CPU_MIPS32_R3_5=y
> -CONFIG_SYS_HAS_CPU_MIPS32_R5=y
> -CONFIG_SYS_HAS_CPU_MIPS32_R6=y
> -CONFIG_SYS_HAS_CPU_MIPS64_R1=y
> -CONFIG_SYS_HAS_CPU_MIPS64_R2=y
> -CONFIG_SYS_HAS_CPU_MIPS64_R6=y
> -CONFIG_SYS_HAS_CPU_NEVADA=y
> -CONFIG_SYS_HAS_CPU_RM7000=y
> -CONFIG_SYS_SUPPORTS_32BIT_KERNEL=y
> -CONFIG_SYS_SUPPORTS_64BIT_KERNEL=y
> -CONFIG_SYS_SUPPORTS_ARBIT_HZ=y
> -CONFIG_SYS_SUPPORTS_BIG_ENDIAN=y
> -CONFIG_SYS_SUPPORTS_HIGHMEM=y
> -CONFIG_SYS_SUPPORTS_LITTLE_ENDIAN=y
> -CONFIG_SYS_SUPPORTS_MICROMIPS=y
> -CONFIG_SYS_SUPPORTS_MIPS16=y
> -CONFIG_SYS_SUPPORTS_MIPS_CMP=y
> -CONFIG_SYS_SUPPORTS_MIPS_CPS=y
> -CONFIG_SYS_SUPPORTS_MULTITHREADING=y
> -CONFIG_SYS_SUPPORTS_RELOCATABLE=y
> -CONFIG_SYS_SUPPORTS_SCHED_SMT=y
> -CONFIG_SYS_SUPPORTS_SMARTMIPS=y
> -CONFIG_SYS_SUPPORTS_SMP=y
> -CONFIG_SYS_SUPPORTS_ZBOOT=y
> -CONFIG_TICK_CPU_ACCOUNTING=y
> -CONFIG_TIMER_OF=y
> -CONFIG_TIMER_PROBE=y
> -CONFIG_TREE_RCU=y
> -CONFIG_TREE_SRCU=y
> -CONFIG_USB_SUPPORT=y
> -# CONFIG_USERIO is not set
> -CONFIG_USE_OF=y
> -# CONFIG_VGA_CONSOLE is not set
> -CONFIG_VM_EVENT_COUNTERS=y
> -CONFIG_VT=y
> -CONFIG_VT_CONSOLE=y
> -CONFIG_VT_HW_CONSOLE_BINDING=y
> -CONFIG_VXFS_FS=y
> -CONFIG_XPS=y
> --
> 2.20.1
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
