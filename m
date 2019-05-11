Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC6D1A7BD
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 13:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JD+QAH9TFKlOUgPAWVGGWDWLYtseu/eJaJooYzc9ur4=; b=Uq8YbskjDs5c9o
	JXJblkDTEEboYdVYcf17sO+Dyl9/Z7Qt0cWspRHedFl5eeN/+APEo2BbxjnOQsCCZKIEWVsLFJpzF
	MLh7ADJcQhkWk50QBzaKlP3bKHF9ZherYeDabqMaCcetZaSSo0nMh6nxYg+vKbvVlGZIUW1FrF3kf
	+0vjwJBuJlIg5hrMBKU8Kkmae1kDKbKOf/NzmNqD9GkHQZ9yM998MWbOC7R3iJWY1MmTGhWXuYwrc
	nvU2dYwRdPX+IX518G2p3hVIgArk4Td6noDmd63Foqj+xK5zoKypVJtji3eSOffQuuUrIsXO1OSSx
	Zx/n0js8lWHuQy3d1mag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPQZy-0001pz-46; Sat, 11 May 2019 11:54:14 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPQZq-0001oz-CZ
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 11:54:08 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id D5E654EA89;
 Sat, 11 May 2019 13:54:04 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id GpQ0FUdVqPOE; Sat, 11 May 2019 13:53:57 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 13:53:18 +0200
Message-Id: <20190511115320.12285-3-hauke@hauke-m.de>
In-Reply-To: <20190511115320.12285-1-hauke@hauke-m.de>
References: <20190511115320.12285-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_045406_734777_2E381F6D 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
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
Cc: c.mignanti@gmail.com, sandeepsheriker.mallikarjun@microchip.com,
 Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This removes some settings which are normally set by the generic
configuration and should not be changed.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/at91/config-4.9             | 19 +------------------
 target/linux/at91/sama5d2/config-default |  3 ---
 2 files changed, 1 insertion(+), 21 deletions(-)

diff --git a/target/linux/at91/config-4.9 b/target/linux/at91/config-4.9
index 00ea3ff1ad..452cfd5aa3 100644
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
@@ -488,20 +479,15 @@ CONFIG_SPI_MASTER=y
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
-# CONFIG_SYN_COOKIES is not set
-CONFIG_SYSFS_SYSCALL=y
 CONFIG_SYS_SUPPORTS_APM_EMULATION=y
-# CONFIG_TCP_CONG_ADVANCED is not set
 # CONFIG_THUMB2_KERNEL is not set
 CONFIG_TICK_CPU_ACCOUNTING=y
-# CONFIG_TMPFS_XATTR is not set
 CONFIG_TOUCHSCREEN_ATMEL_MXT=y
 # CONFIG_TOUCHSCREEN_ATMEL_MXT_T37 is not set
 CONFIG_TOUCHSCREEN_PROPERTIES=y
@@ -510,7 +496,6 @@ CONFIG_UBIFS_FS=y
 CONFIG_UBIFS_FS_ADVANCED_COMPR=y
 CONFIG_UBIFS_FS_LZO=y
 CONFIG_UBIFS_FS_ZLIB=y
-# CONFIG_UEVENT_HELPER is not set
 CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
 CONFIG_USB=y
 CONFIG_USB_ACM=y
@@ -544,14 +529,12 @@ CONFIG_VIDEOMODE_HELPERS=y
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
index e8f0854692..1724375c33 100644
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
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
