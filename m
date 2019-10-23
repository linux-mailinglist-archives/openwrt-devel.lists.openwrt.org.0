Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E664E17AB
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 12:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O4CO4RTaebEbz66ncCIZnsStqB/JeNsnz6GbVR8kFuI=; b=E5Wz84anWNV80c
	0fdz/5hLyZM/vVP7Pmx6JXFUwLgVzKX+7Kk/POof/aMBwpA+piHXx5YWzabRF7oJlsoqGac1LH4tc
	D6d9YgOAZpfpdmBWcUxeEovlglVyaANFruFlK4kHM/7tg0Ay5Gij6Cx8RuKPncghBtD8ZFbecZodu
	+w1YmxOyX6hVArgm7HTuchgGD8zQ6MOJEVdZj7ypj+FmxBo4GctNg0Nocbs6Eta1TJYLdy3EIIoXI
	1caw30CTMkfa5wBhaqPirZpOetzW8G+t/S0k6pLeNCzlM+yAjwJDlep4uNkbe9vIPc4EiDVkpOW3/
	k4Z9/wywxBaMCxaVN8Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDhU-0001Og-OR; Wed, 23 Oct 2019 10:17:08 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDfw-00088H-BZ
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 10:15:35 +0000
Received: from dbauer-t470.tu-darmstadt.de (unknown
 [IPv6:2001:41b8:83c:fa01:5d47:84e4:b335:6505])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 633D21E3D6
 for <openwrt-devel@lists.openwrt.org>; Wed, 23 Oct 2019 12:15:27 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 12:15:18 +0200
Message-Id: <20191023101519.189926-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031532_699681_C4C0F723 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 1/2] ath79: enable PCI for whole target
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

This commit adds PCI support for the whole ath79 target. Previously,
this was only done in the generic and tiny subtargets.

With the introduction of the HiveAP-121, PCI will be a requirement for
all subtargets, thus moving PCI support to the target configuration.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ath79/config-4.14            | 9 +++++++++
 target/linux/ath79/config-4.19            | 9 +++++++++
 target/linux/ath79/generic/config-default | 9 ---------
 target/linux/ath79/tiny/config-default    | 9 ---------
 4 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/target/linux/ath79/config-4.14 b/target/linux/ath79/config-4.14
index 5a2c685d40..1ff3f12728 100644
--- a/target/linux/ath79/config-4.14
+++ b/target/linux/ath79/config-4.14
@@ -27,6 +27,7 @@ CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
 CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
 CONFIG_ATH79=y
 CONFIG_ATH79_WDT=y
+CONFIG_BLK_MQ_PCI=y
 CONFIG_CEVT_R4K=y
 CONFIG_CLKDEV_LOOKUP=y
 CONFIG_CLONE_BACKWARDS=y
@@ -179,12 +180,20 @@ CONFIG_NO_GENERIC_PCI_IOPORT_MAP=y
 # CONFIG_NO_IOPORT_MAP is not set
 CONFIG_OF=y
 CONFIG_OF_ADDRESS=y
+CONFIG_OF_ADDRESS_PCI=y
 CONFIG_OF_EARLY_FLATTREE=y
 CONFIG_OF_FLATTREE=y
 CONFIG_OF_GPIO=y
 CONFIG_OF_IRQ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
+CONFIG_OF_PCI=y
+CONFIG_OF_PCI_IRQ=y
+CONFIG_PCI=y
+CONFIG_PCI_AR71XX=y
+CONFIG_PCI_AR724X=y
+CONFIG_PCI_DISABLE_COMMON_QUIRKS=y
+CONFIG_PCI_DOMAINS=y
 CONFIG_PCI_DRIVERS_LEGACY=y
 CONFIG_PERF_USE_VMALLOC=y
 CONFIG_PGTABLE_LEVELS=2
diff --git a/target/linux/ath79/config-4.19 b/target/linux/ath79/config-4.19
index 3843702a38..42843a1858 100644
--- a/target/linux/ath79/config-4.19
+++ b/target/linux/ath79/config-4.19
@@ -20,6 +20,7 @@ CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
 CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
 CONFIG_ATH79=y
 CONFIG_ATH79_WDT=y
+CONFIG_BLK_MQ_PCI=y
 CONFIG_CEVT_R4K=y
 CONFIG_CLKDEV_LOOKUP=y
 CONFIG_CLONE_BACKWARDS=y
@@ -178,6 +179,7 @@ CONFIG_NO_GENERIC_PCI_IOPORT_MAP=y
 CONFIG_NVMEM=y
 CONFIG_OF=y
 CONFIG_OF_ADDRESS=y
+CONFIG_OF_ADDRESS_PCI=y
 CONFIG_OF_EARLY_FLATTREE=y
 CONFIG_OF_FLATTREE=y
 CONFIG_OF_GPIO=y
@@ -185,6 +187,13 @@ CONFIG_OF_IRQ=y
 CONFIG_OF_KOBJ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
+CONFIG_OF_PCI=y
+CONFIG_OF_PCI_IRQ=y
+CONFIG_PCI=y
+CONFIG_PCI_AR71XX=y
+CONFIG_PCI_AR724X=y
+CONFIG_PCI_DISABLE_COMMON_QUIRKS=y
+CONFIG_PCI_DOMAINS=y
 CONFIG_PCI_DRIVERS_LEGACY=y
 CONFIG_PERF_USE_VMALLOC=y
 CONFIG_PGTABLE_LEVELS=2
diff --git a/target/linux/ath79/generic/config-default b/target/linux/ath79/generic/config-default
index 5d91b31af7..20da0b8ba1 100644
--- a/target/linux/ath79/generic/config-default
+++ b/target/linux/ath79/generic/config-default
@@ -1,5 +1,4 @@
 CONFIG_AT803X_PHY=y
-CONFIG_BLK_MQ_PCI=y
 CONFIG_GPIO_WATCHDOG=y
 CONFIG_GPIO_WATCHDOG_ARCH_INITCALL=y
 CONFIG_INTEL_XWAY_PHY=y
@@ -10,14 +9,6 @@ CONFIG_MICREL_PHY=y
 CONFIG_MTD_REDBOOT_PARTS=y
 CONFIG_MTD_REDBOOT_DIRECTORY_BLOCK=-3
 CONFIG_MTD_SPLIT_EVA_FW=y
-CONFIG_OF_ADDRESS_PCI=y
-CONFIG_OF_PCI=y
-CONFIG_OF_PCI_IRQ=y
-CONFIG_PCI=y
-CONFIG_PCI_AR71XX=y
-CONFIG_PCI_AR724X=y
-CONFIG_PCI_DISABLE_COMMON_QUIRKS=y
-CONFIG_PCI_DOMAINS=y
 CONFIG_PHY_AR7100_USB=y
 CONFIG_PHY_AR7200_USB=y
 CONFIG_REGULATOR=y
diff --git a/target/linux/ath79/tiny/config-default b/target/linux/ath79/tiny/config-default
index 9062ba11f0..90cd5534c7 100644
--- a/target/linux/ath79/tiny/config-default
+++ b/target/linux/ath79/tiny/config-default
@@ -1,17 +1,8 @@
-CONFIG_BLK_MQ_PCI=y
 CONFIG_LEDS_RESET=y
 CONFIG_NET_DSA=y
 CONFIG_NET_DSA_MV88E6060=y
 CONFIG_NET_DSA_TAG_TRAILER=y
 CONFIG_NET_SWITCHDEV=y
-CONFIG_OF_ADDRESS_PCI=y
-CONFIG_OF_PCI=y
-CONFIG_OF_PCI_IRQ=y
-CONFIG_PCI=y
-CONFIG_PCI_AR71XX=y
-CONFIG_PCI_AR724X=y
-CONFIG_PCI_DISABLE_COMMON_QUIRKS=y
-CONFIG_PCI_DOMAINS=y
 CONFIG_PHY_AR7100_USB=y
 CONFIG_PHY_AR7200_USB=y
 CONFIG_REGULATOR=y
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
