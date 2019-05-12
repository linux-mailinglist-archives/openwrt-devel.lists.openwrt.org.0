Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2321AD84
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 May 2019 19:32:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LhJ91qT5yauVI5lbWK9bK1avcFKl0CMBEHDdvbFCOEM=; b=RTei26qkGOaXcU
	fbu/NFsKj2kaAvKxOKLYwZczUrPPXnU2ZnR2TjnRP5W5TyucE+nYdL1aEo79dtVoGD4ttRiKpf4Tr
	mHyuiKmhNJ8zd39QHPjokh/TCHldgtPukAwCJAdyth4GOBpSuE+YbQ4H9GuvWiugs5pvL5IzkeKMk
	b4KVNjHCBsHRhaS0Y8lh+ScHoM77jMWY0m8A2FMg5O+IsMN6oL5kjbAH3BGh/MVEwouoJl8xclPHk
	teIgp6RGioz7+FlT9vIXmIttBZxfgHc9Iy1qp+4c8zrO5BlXxzdf1cg/OmavZjjownBlgomS5xBc9
	2wXTDE/an77ZRVuPanFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPsKa-0001NP-S2; Sun, 12 May 2019 17:32:12 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPsKR-0001KH-Tj
 for openwrt-devel@lists.openwrt.org; Sun, 12 May 2019 17:32:05 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 9E3494BAF9;
 Sun, 12 May 2019 19:32:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id u1_Qf_3JraSe; Sun, 12 May 2019 19:31:55 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 May 2019 19:31:51 +0200
Message-Id: <20190512173151.27388-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_103204_260562_0232BB41 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH] kernel: Move some DSA config options to
 generic config
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

This moves some new configuration options to the generic kernel
configuration instead of configuring them for each target on our own.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/gemini/config-4.19  | 4 ----
 target/linux/generic/config-4.19 | 4 ++++
 target/linux/imx6/config-4.19    | 3 ---
 target/linux/ipq40xx/config-4.19 | 3 ---
 4 files changed, 4 insertions(+), 10 deletions(-)

diff --git a/target/linux/gemini/config-4.19 b/target/linux/gemini/config-4.19
index 7eee5fe9c0..85abbe2454 100644
--- a/target/linux/gemini/config-4.19
+++ b/target/linux/gemini/config-4.19
@@ -322,7 +322,6 @@ CONFIG_MODULES_USE_ELF_REL=y
 # CONFIG_MODULE_UNLOAD is not set
 CONFIG_MQ_IOSCHED_DEADLINE=y
 CONFIG_MQ_IOSCHED_KYBER=y
-# CONFIG_MSCC_OCELOT_SWITCH is not set
 CONFIG_MTD_CFI_STAA=y
 # CONFIG_MTD_IMPA7 is not set
 CONFIG_MTD_JEDECPROBE=y
@@ -336,9 +335,6 @@ CONFIG_NEED_DMA_MAP_STATE=y
 CONFIG_NEED_KUSER_HELPERS=y
 CONFIG_NEED_PER_CPU_KM=y
 CONFIG_NET_DSA=y
-# CONFIG_NET_DSA_LEGACY is not set
-CONFIG_NET_DSA_REALTEK_SMI=y
-CONFIG_NET_DSA_VITESSE_VSC73XX=y
 CONFIG_NET_NS=y
 CONFIG_NET_SWITCHDEV=y
 CONFIG_NLS=y
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index 59141b21c9..536c5c8ff0 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -2892,6 +2892,7 @@ CONFIG_MODULE_UNLOAD=y
 # CONFIG_MQ_IOSCHED_KYBER is not set
 # CONFIG_MS5611 is not set
 # CONFIG_MS5637 is not set
+# CONFIG_MSCC_OCELOT_SWITCH is not set
 # CONFIG_MSDOS_FS is not set
 CONFIG_MSDOS_PARTITION=y
 # CONFIG_MSI_BITMAP_SELFTEST is not set
@@ -3194,6 +3195,7 @@ CONFIG_NET_CORE=y
 # CONFIG_NET_DROP_MONITOR is not set
 # CONFIG_NET_DSA is not set
 # CONFIG_NET_DSA_BCM_SF2 is not set
+# CONFIG_NET_DSA_LEGACY is not set
 # CONFIG_NET_DSA_LOOP is not set
 # CONFIG_NET_DSA_MT7530 is not set
 # CONFIG_NET_DSA_MV88E6060 is not set
@@ -3204,10 +3206,12 @@ CONFIG_NET_CORE=y
 # CONFIG_NET_DSA_MV88E6XXX is not set
 # CONFIG_NET_DSA_MV88E6XXX_NEED_PPU is not set
 # CONFIG_NET_DSA_QCA8K is not set
+# CONFIG_NET_DSA_REALTEK_SMI is not set
 # CONFIG_NET_DSA_SMSC_LAN9303_I2C is not set
 # CONFIG_NET_DSA_SMSC_LAN9303_MDIO is not set
 # CONFIG_NET_DSA_TAG_DSA is not set
 # CONFIG_NET_DSA_TAG_EDSA is not set
+# CONFIG_NET_DSA_VITESSE_VSC73XX is not set
 # CONFIG_NET_EMATCH is not set
 # CONFIG_NET_EMATCH_CANID is not set
 # CONFIG_NET_EMATCH_CMP is not set
diff --git a/target/linux/imx6/config-4.19 b/target/linux/imx6/config-4.19
index 9fada9a01a..94865f96e2 100644
--- a/target/linux/imx6/config-4.19
+++ b/target/linux/imx6/config-4.19
@@ -338,7 +338,6 @@ CONFIG_MMC_SDHCI_PLTFM=y
 # CONFIG_MMC_TIFM_SD is not set
 CONFIG_MODULES_USE_ELF_REL=y
 CONFIG_MPILIB=y
-# CONFIG_MSCC_OCELOT_SWITCH is not set
 CONFIG_MTD_NAND=y
 CONFIG_MTD_NAND_ECC=y
 CONFIG_MTD_NAND_GPMI_NAND=y
@@ -354,11 +353,9 @@ CONFIG_MXS_DMA=y
 CONFIG_NEED_DMA_MAP_STATE=y
 CONFIG_NEON=y
 CONFIG_NET_DSA=y
-CONFIG_NET_DSA_LEGACY=y
 CONFIG_NET_DSA_MV88E6XXX=y
 CONFIG_NET_DSA_MV88E6XXX_GLOBAL2=y
 # CONFIG_NET_DSA_MV88E6XXX_PTP is not set
-# CONFIG_NET_DSA_REALTEK_SMI is not set
 CONFIG_NET_DSA_TAG_DSA=y
 CONFIG_NET_DSA_TAG_EDSA=y
 # CONFIG_NET_DSA_VITESSE_VSC73XX is not set
diff --git a/target/linux/ipq40xx/config-4.19 b/target/linux/ipq40xx/config-4.19
index a40f4b6bcb..8948b73ff7 100644
--- a/target/linux/ipq40xx/config-4.19
+++ b/target/linux/ipq40xx/config-4.19
@@ -284,7 +284,6 @@ CONFIG_MIGHT_HAVE_CACHE_L2X0=y
 CONFIG_MIGHT_HAVE_PCI=y
 CONFIG_MIGRATION=y
 CONFIG_MODULES_USE_ELF_REL=y
-# CONFIG_MSCC_OCELOT_SWITCH is not set
 # CONFIG_MSM_GCC_8660 is not set
 # CONFIG_MSM_GCC_8916 is not set
 # CONFIG_MSM_GCC_8960 is not set
@@ -316,9 +315,7 @@ CONFIG_MUTEX_SPIN_ON_OWNER=y
 CONFIG_NEED_DMA_MAP_STATE=y
 CONFIG_NEON=y
 CONFIG_NET_DSA=y
-CONFIG_NET_DSA_LEGACY=y
 CONFIG_NET_DSA_QCA8K=y
-# CONFIG_NET_DSA_REALTEK_SMI is not set
 CONFIG_NET_DSA_TAG_QCA=y
 # CONFIG_NET_DSA_VITESSE_VSC73XX is not set
 CONFIG_NET_FLOW_LIMIT=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
