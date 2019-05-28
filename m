Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 281692CD8A
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 19:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Jw91nCnY28Cpr3J/PF8i60f/yGTuWNmZCNIsDKU6uI=; b=Yhgzln6MiTQRlN
	5J30e4dAHO6J5UrUKAnsZHynsTnq6NP7zJYqU0vG+QrVotGyUoHxQXWQtvaEuO/4wJLEKRPe1losK
	M3CsKZuL8zXLDIKgt9Mkm2UNAZ7wFgTV/hOZJgK+55lNTL1J3ip9tofE9P2WnwfUZlKpBmU10c7G4
	zluS+28JP1544auja+To9wRZYI+c/YIxLme33ksqr/2zr0R65IHB3QJFm/WurHk3BjfjXo1bqUma7
	FdpDU5VYj5UuWUvB2YYaChN/7994Tk6xep9nwxN4Eq3vJr2UF0EVT40PycNg0LlA88xGUDFcaXToN
	m0DWCo1Pv3QhUqD7WsXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfp7-0001Or-3J; Tue, 28 May 2019 17:23:41 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfoJ-0000SF-Q0
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 17:22:55 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,523,1549954800"; d="scan'208";a="32110488"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 May 2019 10:22:27 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by mx.microchip.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5;
 Tue, 28 May 2019 10:22:25 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 28 May 2019 10:21:12 -0700
Message-ID: <1559064079-18225-2-git-send-email-sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559063195.git.sandeep.sheriker@microchip.com>
References: <cover.1559063195.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_102251_897697_25B57B84 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 2/4] at91: Clean up kernel configuration
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

From: Hauke Mehrtens <hauke@hauke-m.de>

This removes some settings which are normally set by the generic
configuration and should not be changed.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/at91/config-4.9             | 18 +-----------------
 target/linux/at91/sama5d2/config-default |  3 ---
 2 files changed, 1 insertion(+), 20 deletions(-)

diff --git a/target/linux/at91/config-4.9 b/target/linux/at91/config-4.9
index 6a70793..452cfd5 100644
--- a/target/linux/at91/config-4.9
+++ b/target/linux/at91/config-4.9
@@ -58,8 +58,6 @@ CONFIG_BLK_DEV_RAM=y
 CONFIG_BLK_DEV_RAM_COUNT=4
 CONFIG_BLK_DEV_RAM_SIZE=8192
 CONFIG_BLK_DEV_SD=y
-# CONFIG_BPF_SYSCALL is not set
-# CONFIG_BRIDGE is not set
 CONFIG_CACHE_L2X0=y
 CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
 # CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
@@ -71,7 +69,7 @@ CONFIG_CMA=y
 CONFIG_CMA_ALIGNMENT=8
 CONFIG_CMA_AREAS=7
 # CONFIG_CMA_DEBUG is not set
-CONFIG_CMA_DEBUGFS=y
+# CONFIG_CMA_DEBUGFS is not set
 CONFIG_CMA_SIZE_MBYTES=16
 # CONFIG_CMA_SIZE_SEL_MAX is not set
 CONFIG_CMA_SIZE_SEL_MBYTES=y
@@ -183,7 +181,6 @@ CONFIG_FIX_EARLYCON_MEM=y
 CONFIG_FORCE_MAX_ZONEORDER=15
 CONFIG_FREEZER=y
 CONFIG_FS_MBCACHE=y
-# CONFIG_FW_LOADER_USER_HELPER_FALLBACK is not set
 CONFIG_GENERIC_ALLOCATOR=y
 CONFIG_GENERIC_BUG=y
 CONFIG_GENERIC_CLOCKEVENTS=y
@@ -378,9 +375,6 @@ CONFIG_OLD_SIGSUSPEND3=y
 CONFIG_OUTER_CACHE=y
 CONFIG_OUTER_CACHE_SYNC=y
 CONFIG_PAGE_OFFSET=0xC0000000
-# CONFIG_PANIC_ON_OOPS is not set
-CONFIG_PANIC_ON_OOPS_VALUE=0
-CONFIG_PANIC_TIMEOUT=0
 # CONFIG_PARTITION_ADVANCED is not set
 # CONFIG_PCI_DOMAINS_GENERIC is not set
 # CONFIG_PCI_SYSCALL is not set
@@ -416,7 +410,6 @@ CONFIG_PWM_ATMEL_HLCDC_PWM=y
 CONFIG_PWM_ATMEL_TCB=y
 CONFIG_PWM_SYSFS=y
 CONFIG_RATIONAL=y
-# CONFIG_RCU_EXPERT is not set
 # CONFIG_RCU_STALL_COMMON is not set
 CONFIG_REGMAP=y
 CONFIG_REGMAP_I2C=y
@@ -444,8 +437,6 @@ CONFIG_SERIAL_ATMEL_PDC=y
 # CONFIG_SERIAL_ATMEL_TTYAT is not set
 CONFIG_SERIAL_MCTRL_GPIO=y
 CONFIG_SG_POOL=y
-CONFIG_SLAB=y
-# CONFIG_SLUB is not set
 CONFIG_SND=y
 CONFIG_SND_ARM=y
 # CONFIG_SND_AT73C213 is not set
@@ -488,19 +479,15 @@ CONFIG_SPI_MASTER=y
 # CONFIG_SQUASHFS is not set
 CONFIG_SRAM=y
 CONFIG_SRCU=y
-# CONFIG_STAGING is not set
 # CONFIG_STANDALONE is not set
 CONFIG_SUSPEND=y
 CONFIG_SUSPEND_FREEZER=y
 CONFIG_SWIOTLB=y
 CONFIG_SWPHY=y
 # CONFIG_SWP_EMULATE is not set
-CONFIG_SYSFS_SYSCALL=y
 CONFIG_SYS_SUPPORTS_APM_EMULATION=y
-# CONFIG_TCP_CONG_ADVANCED is not set
 # CONFIG_THUMB2_KERNEL is not set
 CONFIG_TICK_CPU_ACCOUNTING=y
-# CONFIG_TMPFS_XATTR is not set
 CONFIG_TOUCHSCREEN_ATMEL_MXT=y
 # CONFIG_TOUCHSCREEN_ATMEL_MXT_T37 is not set
 CONFIG_TOUCHSCREEN_PROPERTIES=y
@@ -509,7 +496,6 @@ CONFIG_UBIFS_FS=y
 CONFIG_UBIFS_FS_ADVANCED_COMPR=y
 CONFIG_UBIFS_FS_LZO=y
 CONFIG_UBIFS_FS_ZLIB=y
-# CONFIG_UEVENT_HELPER is not set
 CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
 CONFIG_USB=y
 CONFIG_USB_ACM=y
@@ -543,14 +529,12 @@ CONFIG_VIDEOMODE_HELPERS=y
 # CONFIG_VIDEO_CPIA2 is not set
 CONFIG_VIDEO_DEV=y
 CONFIG_VIDEO_V4L2=y
-# CONFIG_VLAN_8021Q is not set
 CONFIG_VM_EVENT_COUNTERS=y
 CONFIG_VT=y
 CONFIG_VT_CONSOLE=y
 CONFIG_VT_CONSOLE_SLEEP=y
 # CONFIG_VT_HW_CONSOLE_BINDING is not set
 CONFIG_WATCHDOG_CORE=y
-# CONFIG_WLAN is not set
 # CONFIG_WQ_POWER_EFFICIENT_DEFAULT is not set
 CONFIG_ZBOOT_ROM_BSS=0x0
 CONFIG_ZBOOT_ROM_TEXT=0x0
diff --git a/target/linux/at91/sama5d2/config-default b/target/linux/at91/sama5d2/config-default
index e8f0854..1724375 100644
--- a/target/linux/at91/sama5d2/config-default
+++ b/target/linux/at91/sama5d2/config-default
@@ -1,6 +1,3 @@
-CONFIG_CAN=y
 CONFIG_HAVE_AT91_GENERATED_CLK=y
-CONFIG_POSIX_MQUEUE=y
-CONFIG_POSIX_MQUEUE_SYSCTL=y
 CONFIG_SOC_SAMA5D2=y
 # CONFIG_SOC_SAMA5D4 is not set
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
