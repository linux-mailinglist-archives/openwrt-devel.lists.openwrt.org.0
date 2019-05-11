Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A17251A7B6
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 13:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wLpm5Pbej+CuTuoNrtlhkfYr0KrbHq7zmLeYeU4Eg8=; b=F3wRpsNdiQcPQ9
	GZ0hkHYLO8Flk0XbC4KCHwltE4QvLBGh7AG0808syWS/hRJDxfzuXi3xvG6hFGsZ72mcfCyFHhTnG
	KcLrahVmU3aSirGb49WQdPkwXZWmFOEDh83L96kzLKRtBziJ1tqMfT/V0xeY70hV1xIz1uiMV/V3w
	F52L4kjTbo9+RLJdmPINbYRho+3zzJ0XsZ4KxXpGYw35uTNgOMCeK/ZaHuqgNRD5YvSI0fbJbiD6K
	3LeoW7Ny0874mO8KLudXfG+7eodxn0s+d3BtTxLCKOvKXeFNbleaotK8fYXZmOeHSJuKa7nAB6yL7
	cbZmZku75ekPuneurIIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPQW4-0007oR-OB; Sat, 11 May 2019 11:50:12 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPQVu-0007Mm-De
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 11:50:04 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 17A164E6DC;
 Sat, 11 May 2019 13:50:01 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id gZQroSVnEwmI; Sat, 11 May 2019 13:49:51 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 13:49:17 +0200
Message-Id: <20190511114918.12033-2-hauke@hauke-m.de>
In-Reply-To: <20190511114918.12033-1-hauke@hauke-m.de>
References: <20190511114918.12033-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_045002_630718_7CBD0855 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 1/2] ixp4xx: Refresh kernel configuration
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, thess@kitschensync.net,
 kaloz@openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The configuration of the generic subtarget was used as the default
configuration and then the subtarget configurations were adapted.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/ixp4xx/config-4.9              |  7 +++----
 target/linux/ixp4xx/harddisk/config-default | 23 ++++++++++++++-------
 2 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/target/linux/ixp4xx/config-4.9 b/target/linux/ixp4xx/config-4.9
index c9b1be9304..c3a88b73e0 100644
--- a/target/linux/ixp4xx/config-4.9
+++ b/target/linux/ixp4xx/config-4.9
@@ -33,6 +33,8 @@ CONFIG_ATAGS=y
 CONFIG_BLK_MQ_PCI=y
 CONFIG_BOUNCE=y
 # CONFIG_CACHE_L2X0 is not set
+CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
+# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
 CONFIG_CLKSRC_MMIO=y
 CONFIG_CLONE_BACKWARDS=y
 CONFIG_CMDLINE="root=/dev/mtdblock2 rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200"
@@ -137,8 +139,6 @@ CONFIG_I2C_GPIO=y
 # CONFIG_I2C_IOP3XX is not set
 CONFIG_INITRAMFS_SOURCE=""
 CONFIG_IOMMU_HELPER=y
-CONFIG_IP_PIMSM_V1=y
-CONFIG_IP_PIMSM_V2=y
 CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_WORK=y
 # CONFIG_IWMMXT is not set
@@ -152,8 +152,6 @@ CONFIG_LEDS_GPIO=y
 CONFIG_LEDS_LATCH=y
 CONFIG_LEGACY_PTYS=y
 CONFIG_LEGACY_PTY_COUNT=256
-CONFIG_LZO_COMPRESS=y
-CONFIG_LZO_DECOMPRESS=y
 CONFIG_MACH_AP1000=y
 CONFIG_MACH_AP42X=y
 # CONFIG_MACH_ARCOM_VULCAN is not set
@@ -186,6 +184,7 @@ CONFIG_MACH_WG302V2=y
 CONFIG_MACH_WRT300NV2=y
 CONFIG_MDIO_BOARDINFO=y
 CONFIG_MIGHT_HAVE_PCI=y
+CONFIG_MIGRATION=y
 CONFIG_MODULES_USE_ELF_REL=y
 CONFIG_MTD_CFI_ADV_OPTIONS=y
 # CONFIG_MTD_CFI_GEOMETRY is not set
diff --git a/target/linux/ixp4xx/harddisk/config-default b/target/linux/ixp4xx/harddisk/config-default
index 78e599ca86..6cf7d82b12 100644
--- a/target/linux/ixp4xx/harddisk/config-default
+++ b/target/linux/ixp4xx/harddisk/config-default
@@ -1,20 +1,27 @@
 CONFIG_ATA=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_CMDLINE="root=/dev/sda1 noinitrd console=ttyS0,115200"
+CONFIG_CRC16=y
+CONFIG_CRYPTO_CRC32C=y
+CONFIG_CRYPTO_HASH=y
+CONFIG_CRYPTO_HASH2=y
 CONFIG_EXT4_FS=y
-CONFIG_JBD=y
+CONFIG_FS_MBCACHE=y
+CONFIG_GLOB=y
+CONFIG_JBD2=y
+CONFIG_NLS=y
+# CONFIG_PATA_IXP4XX_CF is not set
 CONFIG_REISERFS_FS=y
 CONFIG_SATA_VIA=y
+CONFIG_SCSI=y
+CONFIG_SCSI_DMA=y
+CONFIG_SG_POOL=y
 CONFIG_USB=y
-CONFIG_USB_ARCH_HAS_EHCI=y
-CONFIG_USB_ARCH_HAS_HCD=y
-CONFIG_USB_ARCH_HAS_OHCI=y
+CONFIG_USB_COMMON=y
 CONFIG_USB_EHCI_HCD=y
 # CONFIG_USB_EHCI_HCD_PLATFORM is not set
-CONFIG_USB_EHCI_ROOT_HUB_TT=y
-CONFIG_USB_EHCI_SPLIT_ISO=y
-CONFIG_USB_EHCI_TT_NEWSCHED=y
+CONFIG_USB_EHCI_PCI=y
 CONFIG_USB_OHCI_HCD=y
 # CONFIG_USB_OHCI_HCD_PLATFORM is not set
-CONFIG_USB_OHCI_LITTLE_ENDIAN=y
 CONFIG_USB_STORAGE=y
+# CONFIG_USB_UHCI_HCD is not set
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
