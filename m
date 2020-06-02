Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B94481EC0AC
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jun 2020 19:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/kQT94+s2As7xdnsRnnP2HGpDD5ty8iCBL5rxY8s4hg=; b=ZVqRkrIc68ahCS
	AhoBBKjzRq6bFqV8N3vOC2KisnZ0awXav4u8XDYsRSBpgOWGDxIn4+ZOSZ5Zl9Rdja5Hi1uJbrmsw
	iSwARjqxK/kUmTLvHW2rynwSG0mWrXN3w7tDlm/nTPPlaGrsM6hxptBmwHXMC1pfKntCQJ7zK/S3p
	SQrqmPBJnPkkK1d5mHkqSdJaA2As90FlvIIwxBQ+jCxUs5hh0gMc4xa0MT/k7oINKdF5VqThNwAs2
	VT0Q9HYXELi+rckfBy92bpTaVESRoG5RC8pDHszETFU7oiSukOdhFGBDv+qNTKh4OOc6JpMVe5Ph5
	XdBzStzoOkq7hb5hmTOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgALw-0000Xh-Vt; Tue, 02 Jun 2020 17:05:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgALs-0000XX-Bt
 for openwrt-devel@bombadil.infradead.org; Tue, 02 Jun 2020 17:05:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=gvOzBzKHaKIGD5lRjqAu2TVWBtarGgL36cdiqXOKyIg=; b=A8xxYrMdaUhLUenK+kwYXrE6Kx
 aZSKY5jTQWlCfowy7IzF/aOTQ3uMhn6GKlSMhhkrEpqph5AQy/jKptZTwrqf3S7OHtSP/18o1WAZa
 A4OpjCvNHYFY8PY6b/Ibv4tAsfQvPcOYYKU3nTsywF4zdrm+X9Rs1yQJ1b4iySD1Fzw++NYr8+XFa
 wlxuxduya596GgCbjnIdT9szoyBuoZk2XaRnASAm6TCxdzkGZAXjBrIpxDrtmuh++FT+Tvu3ADpf9
 GvCbHqnPCGCNm1RUrLRaMXG+xBbZYOEgZ5VV2aezPCFf5l8mxAGPbPzlEHR3g8YYqk92W0O3AiYW3
 s3YhR12w==;
Received: from lists.gateworks.com ([108.161.130.12])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgALo-0001Ep-Ch
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jun 2020 17:05:22 +0000
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jgAOW-0007el-Ab; Tue, 02 Jun 2020 17:08:08 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org,
	Hauke Mehrtens <hauke@hauke-m.de>
Date: Tue,  2 Jun 2020 10:05:01 -0700
Message-Id: <1591117502-28100-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_180520_716395_73A34F62 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH v2 1/2] octeontx: refresh kernel 5.4 config
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

refresh kernel config by running make kernel_menuconfig and saving changes

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
v2: added kernel config refresh patch
---
 target/linux/octeontx/config-5.4 | 29 ++---------------------------
 1 file changed, 2 insertions(+), 27 deletions(-)

diff --git a/target/linux/octeontx/config-5.4 b/target/linux/octeontx/config-5.4
index a75bf78..cfb8b19 100644
--- a/target/linux/octeontx/config-5.4
+++ b/target/linux/octeontx/config-5.4
@@ -1,6 +1,4 @@
 CONFIG_64BIT=y
-# CONFIG_ARCH_AGILEX is not set
-# CONFIG_ARCH_BITMAIN is not set
 CONFIG_ARCH_CLOCKSOURCE_DATA=y
 CONFIG_ARCH_DMA_ADDR_T_64BIT=y
 CONFIG_ARCH_ENABLE_HUGEPAGE_MIGRATION=y
@@ -83,9 +81,7 @@ CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT=y
 CONFIG_ARCH_WANT_FRAME_POINTERS=y
 CONFIG_ARCH_WANT_HUGE_PMD_SHARE=y
 CONFIG_ARM64=y
-# CONFIG_ARM64_16K_PAGES is not set
 CONFIG_ARM64_4K_PAGES=y
-# CONFIG_ARM64_64K_PAGES is not set
 CONFIG_ARM64_CNP=y
 CONFIG_ARM64_CONT_SHIFT=4
 CONFIG_ARM64_CRYPTO=y
@@ -97,17 +93,12 @@ CONFIG_ARM64_ERRATUM_826319=y
 CONFIG_ARM64_ERRATUM_827319=y
 CONFIG_ARM64_ERRATUM_843419=y
 CONFIG_ARM64_HW_AFDBM=y
-# CONFIG_ARM64_LSE_ATOMICS is not set
 CONFIG_ARM64_MODULE_PLTS=y
 CONFIG_ARM64_PAGE_SHIFT=12
 CONFIG_ARM64_PAN=y
 CONFIG_ARM64_PA_BITS=48
 CONFIG_ARM64_PA_BITS_48=y
-# CONFIG_ARM64_PMEM is not set
-# CONFIG_ARM64_PSEUDO_NMI is not set
-# CONFIG_ARM64_PTDUMP_DEBUGFS is not set
 CONFIG_ARM64_PTR_AUTH=y
-# CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET is not set
 CONFIG_ARM64_SSBD=y
 CONFIG_ARM64_SVE=y
 CONFIG_ARM64_TAGGED_ADDR_ABI=y
@@ -131,7 +122,6 @@ CONFIG_ARM_GIC_V3_ITS_PCI=y
 CONFIG_ARM_PSCI_FW=y
 CONFIG_ARM_SBSA_WATCHDOG=y
 # CONFIG_ARM_SCMI_PROTOCOL is not set
-# CONFIG_ARM_SP805_WATCHDOG is not set
 CONFIG_ATA=y
 # CONFIG_ATA_SFF is not set
 CONFIG_AUDIT_ARCH_COMPAT_GENERIC=y
@@ -167,8 +157,6 @@ CONFIG_COMMON_CLK=y
 CONFIG_COMMON_CLK_CS2000_CP=y
 CONFIG_CONFIGFS_FS=y
 CONFIG_CONTIG_ALLOC=y
-# CONFIG_CPU_BIG_ENDIAN is not set
-# CONFIG_CPU_HOTPLUG_STATE_CONTROL is not set
 CONFIG_CPU_IDLE=y
 # CONFIG_CPU_IDLE_GOV_LADDER is not set
 CONFIG_CPU_IDLE_GOV_MENU=y
@@ -190,7 +178,6 @@ CONFIG_CRYPTO_AES_ARM64_CE_BLK=y
 CONFIG_CRYPTO_AES_ARM64_CE_CCM=y
 # CONFIG_CRYPTO_AES_ARM64_NEON_BLK is not set
 CONFIG_CRYPTO_ANSI_CPRNG=y
-# CONFIG_CRYPTO_CHACHA20_NEON is not set
 CONFIG_CRYPTO_CRC32=y
 CONFIG_CRYPTO_CRC32C=y
 CONFIG_CRYPTO_CRCT10DIF=y
@@ -209,7 +196,6 @@ CONFIG_CRYPTO_JITTERENTROPY=y
 CONFIG_CRYPTO_LIB_SHA256=y
 CONFIG_CRYPTO_MANAGER=y
 CONFIG_CRYPTO_MANAGER2=y
-# CONFIG_CRYPTO_NHPOLY1305_NEON is not set
 CONFIG_CRYPTO_NULL=y
 CONFIG_CRYPTO_NULL2=y
 CONFIG_CRYPTO_RNG=y
@@ -247,9 +233,7 @@ CONFIG_EEPROM_AT24=y
 CONFIG_EFI_EARLYCON=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
-# CONFIG_F2FS_CHECK_FS is not set
 CONFIG_F2FS_FS=y
-# CONFIG_F2FS_FS_SECURITY is not set
 CONFIG_F2FS_FS_XATTR=y
 CONFIG_F2FS_STAT_FS=y
 CONFIG_FANOTIFY=y
@@ -261,7 +245,6 @@ CONFIG_FONT_AUTOSELECT=y
 CONFIG_FONT_SUPPORT=y
 CONFIG_FRAME_POINTER=y
 CONFIG_FREEZER=y
-# CONFIG_FSL_QDMA is not set
 CONFIG_FS_IOMAP=y
 CONFIG_FS_MBCACHE=y
 CONFIG_FS_POSIX_ACL=y
@@ -299,7 +282,6 @@ CONFIG_GPIOLIB_IRQCHIP=y
 CONFIG_GPIO_PCA953X=y
 CONFIG_GPIO_PCA953X_IRQ=y
 CONFIG_GPIO_THUNDERX=y
-# CONFIG_GVE is not set
 CONFIG_HANDLE_DOMAIN_IRQ=y
 CONFIG_HARDEN_BRANCH_PREDICTOR=y
 CONFIG_HARDIRQS_SW_RESEND=y
@@ -372,6 +354,8 @@ CONFIG_HWSPINLOCK=y
 CONFIG_HW_RANDOM=y
 CONFIG_HW_RANDOM_CAVIUM=y
 CONFIG_HW_RANDOM_OPTEE=y
+CONFIG_HZ=250
+CONFIG_HZ_250=y
 CONFIG_I2C=y
 CONFIG_I2C_ALGOBIT=y
 CONFIG_I2C_BOARDINFO=y
@@ -429,12 +413,8 @@ CONFIG_MDIO_DEVICE=y
 CONFIG_MDIO_THUNDER=y
 CONFIG_MEMFD_CREATE=y
 CONFIG_MEMORY_BALLOON=y
-# CONFIG_MEMORY_HOTPLUG is not set
 CONFIG_MEMORY_ISOLATION=y
 CONFIG_MEMTEST=y
-# CONFIG_MFD_LOCHNAGAR is not set
-# CONFIG_MFD_ROHM_BD70528 is not set
-# CONFIG_MFD_STPMIC1 is not set
 CONFIG_MFD_SYSCON=y
 CONFIG_MIGRATION=y
 CONFIG_MMC=y
@@ -461,7 +441,6 @@ CONFIG_NUMA=y
 CONFIG_NUMA_BALANCING=y
 CONFIG_NUMA_BALANCING_DEFAULT_ENABLED=y
 CONFIG_NVMEM=y
-# CONFIG_NVMEM_REBOOT_MODE is not set
 CONFIG_NVMEM_SYSFS=y
 # CONFIG_OCTEONTX2_AF is not set
 CONFIG_OF=y
@@ -483,7 +462,6 @@ CONFIG_PCI=y
 CONFIG_PCIEAER=y
 CONFIG_PCIEPORTBUS=y
 # CONFIG_PCIE_AL is not set
-# CONFIG_PCIE_BW is not set
 CONFIG_PCIE_PME=y
 CONFIG_PCI_ATS=y
 CONFIG_PCI_DOMAINS=y
@@ -494,7 +472,6 @@ CONFIG_PCI_HOST_GENERIC=y
 CONFIG_PCI_HOST_THUNDER_ECAM=y
 CONFIG_PCI_HOST_THUNDER_PEM=y
 CONFIG_PCI_IOV=y
-# CONFIG_PCI_MESON is not set
 CONFIG_PCI_MSI=y
 CONFIG_PCI_MSI_IRQ_DOMAIN=y
 CONFIG_PGTABLE_LEVELS=4
@@ -502,7 +479,6 @@ CONFIG_PHYLIB=y
 CONFIG_PHYS_ADDR_T_64BIT=y
 CONFIG_PM=y
 CONFIG_PM_CLK=y
-# CONFIG_PM_DEBUG is not set
 CONFIG_PM_SLEEP=y
 CONFIG_PM_SLEEP_SMP=y
 CONFIG_PM_STD_PARTITION=""
@@ -515,7 +491,6 @@ CONFIG_POWER_SUPPLY=y
 CONFIG_PROC_VMCORE=y
 CONFIG_QUEUED_RWLOCKS=y
 CONFIG_QUEUED_SPINLOCKS=y
-# CONFIG_RANDOMIZE_BASE is not set
 CONFIG_RAS=y
 CONFIG_RATIONAL=y
 # CONFIG_RAVE_SP_CORE is not set
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
