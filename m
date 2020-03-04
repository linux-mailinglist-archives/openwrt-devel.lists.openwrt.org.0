Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C16178D2F
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 10:14:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PY6OFGU7LOxY+qr2Dudebb2gmOTYfS4rShlbghkeGz0=; b=Iy3tGBHYHNelyR
	OnzD6d3l/KqSvuIDYPdyRQb/SDorMlkQnyHCtJBEK6URz8u8nm9cY8E978PnF9HGdbsvmp9rUQIb9
	aOdtH3rZlvEAbG8+RTSKN6HGNEam0GxRzjKKidQ6VizJ1mWpSe2vm91S/nyEDW5smgCKV5bikUZxY
	oC2JSPwQ1W+9TNGYgJNFl6aYY1UNmYqyOm2SGpzXkNLv+7Q6zZOu5ZzSXHguhbkf+AgUXQGJ8VflB
	9KMyH8IvaN5ppMk3CDRj2679o2xVv2guO7LlaZrJi2SAptITd5wwCyV5/lW367qEnEYl6b4jymCR2
	duGQoXnGAkAcSVchIM4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Q72-0003fj-3d; Wed, 04 Mar 2020 09:14:44 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Q6q-0003bG-Ab
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 09:14:34 +0000
Received: by mail-pf1-x429.google.com with SMTP id 2so639997pfg.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 04 Mar 2020 01:14:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+s6XKSmBAeQu7Ptux5U6KllcoF/He3FsCOZsVLxmavY=;
 b=VEgZDV8w6lGlmtMeQ2/eqyDgaK0xU69Qx959EjuNJtj57uNLP1L6fZUXokibEGMuaP
 O9bPPQECUb11jUxvrJNeT/SOC3UBxJJfxFvAgXLyaPx1cQeFQR3jw/K5TzvJHKiwN4n4
 xv5L7u7QrjuMCcS7FODfRjIdM60m/knoJK170oMUXAOrR6yFcE9cdv3zK01KY+e8K7eZ
 okUkUXL5aaGXPr3Jedbpcj98050LkLPanGtFmKocg70PgflDA3h9isG+AwNBxmA8nKx+
 lDwZNumj8tMmcJR8wEZ8m9lykqN7qb0w+XK9+XqLVib4RT7htgqRundMXt9gh29/NHNB
 873Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+s6XKSmBAeQu7Ptux5U6KllcoF/He3FsCOZsVLxmavY=;
 b=WnpxicUpsllZP6BQk5MkIllRl7GvINDrPzXc0jWbXDel7QhintYHzaf+xUR4WZQfez
 Wk/jff/narCMUb4J/eL8FiAFDvTHFJdDmdVjPkjJTLfH463af7WJ6UpLIgCvE+8GpvPP
 mUW6PzU9veD+2wRp3DiDASB1ocbY3pzvIdKtvaueF4WVFr5o7fVGXWLbM2Q3G7Lm+Fd9
 EUVaRrNXfdGeB0z+ZHJqyrppx9/mqTxPfYM39+5e/T4d1R9x6JtWouKzCd/EGpdhoPw5
 TMCWmOyQleKTiL4PIzXKYYfQZvRRAgbOOVBD0qh+25JGtXC2LUHL6iisIce8IDIvx5jC
 nytQ==
X-Gm-Message-State: ANhLgQ1/V/1327H4LjtJuXKzpsCSSwyc30OLOFKcTLeL80AlU7V0Xbvz
 oI+EiC+z5D5jNrqkfO8yxPzwd2/s0aA=
X-Google-Smtp-Source: ADFU+vsmeizpmohC/nACSUcoi+po8RSjI+ulLE9x/kVq/gEQ/n8vGhkDgFKZUHuV880mo1eRiFQkWQ==
X-Received: by 2002:a05:6a00:2c7:: with SMTP id
 b7mr2274820pft.162.1583313270487; 
 Wed, 04 Mar 2020 01:14:30 -0800 (PST)
Received: from titan-10-168-222-196.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id u7sm26969477pfh.128.2020.03.04.01.14.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Mar 2020 01:14:29 -0800 (PST)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  4 Mar 2020 17:14:04 +0800
Message-Id: <20200304091407.14821-2-yszhou4tech@gmail.com>
In-Reply-To: <20200304091407.14821-1-yszhou4tech@gmail.com>
References: <20200304091407.14821-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_011432_397690_AADDEB15 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:429 listed in]
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
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 1/4] kernel: 5.4: move some kconfig options
 to generic
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

	CONFIG_64BIT_TIME=y
	CONFIG_KASAN_STACK=1
	CONFIG_UBSAN_ALIGNMENT=y
	CONFIG_UNIX_SCM=y
	CONFIG_DMA_DECLARE_COHERENT=y
	CONFIG_OF_RESERVED_MEM=y
---
 target/linux/apm821xx/config-5.4        |  6 ------
 target/linux/ath79/config-5.4           |  6 ------
 target/linux/bcm27xx/bcm2708/config-5.4 |  6 ------
 target/linux/bcm27xx/bcm2709/config-5.4 |  6 ------
 target/linux/bcm27xx/bcm2710/config-5.4 |  6 ------
 target/linux/bcm27xx/bcm2711/config-5.4 |  6 ------
 target/linux/bcm53xx/config-5.4         |  6 ------
 target/linux/generic/config-5.4         | 12 +++++++++---
 target/linux/imx6/config-5.4            |  6 ------
 target/linux/ipq40xx/config-5.4         |  6 ------
 target/linux/mediatek/mt7622/config-5.4 |  6 ------
 target/linux/mediatek/mt7623/config-5.4 |  6 ------
 target/linux/mediatek/mt7629/config-5.4 |  6 ------
 target/linux/mpc85xx/config-5.4         |  1 -
 target/linux/x86/config-5.4             |  4 ----
 15 files changed, 9 insertions(+), 80 deletions(-)

diff --git a/target/linux/apm821xx/config-5.4 b/target/linux/apm821xx/config-5.4
index d39cb313e1..4c62821561 100644
--- a/target/linux/apm821xx/config-5.4
+++ b/target/linux/apm821xx/config-5.4
@@ -3,7 +3,6 @@ CONFIG_44x=y
 CONFIG_460EX=y
 CONFIG_4xx=y
 CONFIG_4xx_SOC=y
-CONFIG_64BIT_TIME=y
 # CONFIG_ADIN_PHY is not set
 # CONFIG_ADVANCED_OPTIONS is not set
 # CONFIG_AL_FIC is not set
@@ -118,7 +117,6 @@ CONFIG_CRYPTO_SHA256=y
 CONFIG_DATA_SHIFT=12
 CONFIG_DEBUG_MISC=y
 # CONFIG_DEBUG_PLIST is not set
-CONFIG_DMA_DECLARE_COHERENT=y
 CONFIG_DMA_DIRECT_REMAP=y
 CONFIG_DMA_REMAP=y
 CONFIG_DTC=y
@@ -252,7 +250,6 @@ CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_WORK=y
 CONFIG_ISA_DMA_API=y
 # CONFIG_JFFS2_FS is not set
-CONFIG_KASAN_STACK=1
 # CONFIG_KATMAI is not set
 CONFIG_KERNEL_START=0xc0000000
 # CONFIG_LCD_CLASS_DEVICE is not set
@@ -307,7 +304,6 @@ CONFIG_OF_IRQ=y
 CONFIG_OF_KOBJ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_OLD_SIGACTION=y
 CONFIG_OLD_SIGSUSPEND=y
 # CONFIG_OVERLAY_FS_XINO_AUTO is not set
@@ -410,9 +406,7 @@ CONFIG_THREAD_SHIFT=13
 CONFIG_TICK_CPU_ACCOUNTING=y
 CONFIG_TINY_SRCU=y
 # CONFIG_TI_CPSW_PHY_SEL is not set
-CONFIG_UBSAN_ALIGNMENT=y
 # CONFIG_UNICODE is not set
-CONFIG_UNIX_SCM=y
 # CONFIG_USB_CONN_GPIO is not set
 CONFIG_USB_SUPPORT=y
 # CONFIG_VALIDATE_FS_PARSER is not set
diff --git a/target/linux/ath79/config-5.4 b/target/linux/ath79/config-5.4
index 3f7f26a418..24475d9ae5 100644
--- a/target/linux/ath79/config-5.4
+++ b/target/linux/ath79/config-5.4
@@ -1,4 +1,3 @@
-CONFIG_64BIT_TIME=y
 CONFIG_AG71XX=y
 CONFIG_AR8216_PHY=y
 CONFIG_AR8216_PHY_LEDS=y
@@ -50,7 +49,6 @@ CONFIG_CPU_SUPPORTS_HIGHMEM=y
 CONFIG_CPU_SUPPORTS_MSA=y
 CONFIG_CRYPTO_RNG2=y
 CONFIG_CSRC_R4K=y
-CONFIG_DMA_DECLARE_COHERENT=y
 CONFIG_DMA_NONCOHERENT=y
 CONFIG_DMA_NONCOHERENT_CACHE_SYNC=y
 CONFIG_DTC=y
@@ -139,7 +137,6 @@ CONFIG_IRQ_DOMAIN=y
 CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_MIPS_CPU=y
 CONFIG_IRQ_WORK=y
-CONFIG_KASAN_STACK=1
 CONFIG_LEDS_GPIO=y
 # CONFIG_LEDS_RESET is not set
 CONFIG_LIBFDT=y
@@ -194,7 +191,6 @@ CONFIG_OF_IRQ=y
 CONFIG_OF_KOBJ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_PCI=y
 CONFIG_PCI_AR71XX=y
 CONFIG_PCI_AR724X=y
@@ -244,7 +240,5 @@ CONFIG_SYS_SUPPORTS_ZBOOT_UART_PROM=y
 CONFIG_TARGET_ISA_REV=2
 CONFIG_TICK_CPU_ACCOUNTING=y
 CONFIG_TINY_SRCU=y
-CONFIG_UBSAN_ALIGNMENT=y
-CONFIG_UNIX_SCM=y
 CONFIG_USB_SUPPORT=y
 CONFIG_USE_OF=y
diff --git a/target/linux/bcm27xx/bcm2708/config-5.4 b/target/linux/bcm27xx/bcm2708/config-5.4
index e953325050..57c176d168 100644
--- a/target/linux/bcm27xx/bcm2708/config-5.4
+++ b/target/linux/bcm27xx/bcm2708/config-5.4
@@ -1,4 +1,3 @@
-CONFIG_64BIT_TIME=y
 # CONFIG_AIO is not set
 CONFIG_ALIGNMENT_TRAP=y
 CONFIG_ARCH_32BIT_OFF_T=y
@@ -146,7 +145,6 @@ CONFIG_DMADEVICES=y
 CONFIG_DMA_BCM2708=y
 CONFIG_DMA_BCM2835=y
 CONFIG_DMA_CMA=y
-CONFIG_DMA_DECLARE_COHERENT=y
 CONFIG_DMA_ENGINE=y
 CONFIG_DMA_OF=y
 CONFIG_DMA_REMAP=y
@@ -270,7 +268,6 @@ CONFIG_IRQ_DOMAIN=y
 CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_WORK=y
 CONFIG_JBD2=y
-CONFIG_KASAN_STACK=1
 CONFIG_KERNEL_GZIP=y
 # CONFIG_KERNEL_XZ is not set
 CONFIG_LEDS_GPIO=y
@@ -328,7 +325,6 @@ CONFIG_OF_IRQ=y
 CONFIG_OF_KOBJ=y
 CONFIG_OF_NET=y
 CONFIG_OF_OVERLAY=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_OF_RESOLVE=y
 CONFIG_OLD_SIGACTION=y
 CONFIG_OLD_SIGSUSPEND3=y
@@ -392,11 +388,9 @@ CONFIG_TIMER_OF=y
 CONFIG_TIMER_PROBE=y
 CONFIG_TINY_SRCU=y
 CONFIG_TMPFS_POSIX_ACL=y
-CONFIG_UBSAN_ALIGNMENT=y
 CONFIG_UEVENT_HELPER_PATH=""
 # CONFIG_UID16 is not set
 CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
-CONFIG_UNIX_SCM=y
 CONFIG_UNWINDER_ARM=y
 # CONFIG_UNWINDER_FRAME_POINTER is not set
 CONFIG_USB=y
diff --git a/target/linux/bcm27xx/bcm2709/config-5.4 b/target/linux/bcm27xx/bcm2709/config-5.4
index e6b0cf1660..6713aef789 100644
--- a/target/linux/bcm27xx/bcm2709/config-5.4
+++ b/target/linux/bcm27xx/bcm2709/config-5.4
@@ -1,4 +1,3 @@
-CONFIG_64BIT_TIME=y
 # CONFIG_AIO is not set
 CONFIG_ALIGNMENT_TRAP=y
 CONFIG_ARCH_32BIT_OFF_T=y
@@ -202,7 +201,6 @@ CONFIG_DMADEVICES=y
 CONFIG_DMA_BCM2708=y
 CONFIG_DMA_BCM2835=y
 CONFIG_DMA_CMA=y
-CONFIG_DMA_DECLARE_COHERENT=y
 CONFIG_DMA_ENGINE=y
 CONFIG_DMA_OF=y
 CONFIG_DMA_REMAP=y
@@ -351,7 +349,6 @@ CONFIG_IRQ_DOMAIN_HIERARCHY=y
 CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_WORK=y
 CONFIG_JBD2=y
-CONFIG_KASAN_STACK=1
 CONFIG_KEYS=y
 CONFIG_LEDS_GPIO=y
 CONFIG_LEDS_TRIGGER_INPUT=y
@@ -421,7 +418,6 @@ CONFIG_OF_KOBJ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
 CONFIG_OF_OVERLAY=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_OF_RESOLVE=y
 CONFIG_OLD_SIGACTION=y
 CONFIG_OLD_SIGSUSPEND3=y
@@ -517,11 +513,9 @@ CONFIG_TMPFS_POSIX_ACL=y
 CONFIG_TREE_RCU=y
 CONFIG_TREE_SRCU=y
 # CONFIG_TRUSTED_FOUNDATIONS is not set
-CONFIG_UBSAN_ALIGNMENT=y
 CONFIG_UEVENT_HELPER_PATH=""
 # CONFIG_UID16 is not set
 CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
-CONFIG_UNIX_SCM=y
 CONFIG_UNWINDER_ARM=y
 # CONFIG_UNWINDER_FRAME_POINTER is not set
 CONFIG_USB=y
diff --git a/target/linux/bcm27xx/bcm2710/config-5.4 b/target/linux/bcm27xx/bcm2710/config-5.4
index 061ba7e3ab..7527c3fdd9 100644
--- a/target/linux/bcm27xx/bcm2710/config-5.4
+++ b/target/linux/bcm27xx/bcm2710/config-5.4
@@ -1,5 +1,4 @@
 CONFIG_64BIT=y
-CONFIG_64BIT_TIME=y
 # CONFIG_AIO is not set
 # CONFIG_ARCH_AGILEX is not set
 CONFIG_ARCH_BCM2835=y
@@ -242,7 +241,6 @@ CONFIG_DMADEVICES=y
 CONFIG_DMA_BCM2708=y
 CONFIG_DMA_BCM2835=y
 CONFIG_DMA_CMA=y
-CONFIG_DMA_DECLARE_COHERENT=y
 CONFIG_DMA_DIRECT_REMAP=y
 CONFIG_DMA_ENGINE=y
 CONFIG_DMA_OF=y
@@ -427,7 +425,6 @@ CONFIG_IRQ_DOMAIN_HIERARCHY=y
 CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_WORK=y
 CONFIG_JBD2=y
-CONFIG_KASAN_STACK=1
 CONFIG_KEYS=y
 CONFIG_LEDS_GPIO=y
 CONFIG_LEDS_TRIGGER_INPUT=y
@@ -498,7 +495,6 @@ CONFIG_OF_KOBJ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
 CONFIG_OF_OVERLAY=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_OF_RESOLVE=y
 CONFIG_PADATA=y
 CONFIG_PARTITION_PERCPU=y
@@ -594,9 +590,7 @@ CONFIG_TIMER_PROBE=y
 CONFIG_TMPFS_POSIX_ACL=y
 CONFIG_TREE_RCU=y
 CONFIG_TREE_SRCU=y
-CONFIG_UBSAN_ALIGNMENT=y
 CONFIG_UEVENT_HELPER_PATH=""
-CONFIG_UNIX_SCM=y
 CONFIG_UNMAP_KERNEL_AT_EL0=y
 CONFIG_USB=y
 CONFIG_USB_ANNOUNCE_NEW_DEVICES=y
diff --git a/target/linux/bcm27xx/bcm2711/config-5.4 b/target/linux/bcm27xx/bcm2711/config-5.4
index 15ba843ea2..a813eb586c 100644
--- a/target/linux/bcm27xx/bcm2711/config-5.4
+++ b/target/linux/bcm27xx/bcm2711/config-5.4
@@ -1,5 +1,4 @@
 CONFIG_64BIT=y
-CONFIG_64BIT_TIME=y
 # CONFIG_AIO is not set
 # CONFIG_ARCH_AGILEX is not set
 CONFIG_ARCH_BCM2835=y
@@ -247,7 +246,6 @@ CONFIG_DMADEVICES=y
 CONFIG_DMA_BCM2708=y
 CONFIG_DMA_BCM2835=y
 CONFIG_DMA_CMA=y
-CONFIG_DMA_DECLARE_COHERENT=y
 CONFIG_DMA_DIRECT_REMAP=y
 CONFIG_DMA_ENGINE=y
 CONFIG_DMA_OF=y
@@ -433,7 +431,6 @@ CONFIG_IRQ_DOMAIN_HIERARCHY=y
 CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_WORK=y
 CONFIG_JBD2=y
-CONFIG_KASAN_STACK=1
 CONFIG_KEYS=y
 CONFIG_LEDS_GPIO=y
 CONFIG_LEDS_TRIGGER_INPUT=y
@@ -504,7 +501,6 @@ CONFIG_OF_KOBJ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
 CONFIG_OF_OVERLAY=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_OF_RESOLVE=y
 CONFIG_PADATA=y
 CONFIG_PARTITION_PERCPU=y
@@ -605,9 +601,7 @@ CONFIG_TIMER_PROBE=y
 CONFIG_TMPFS_POSIX_ACL=y
 CONFIG_TREE_RCU=y
 CONFIG_TREE_SRCU=y
-CONFIG_UBSAN_ALIGNMENT=y
 CONFIG_UEVENT_HELPER_PATH=""
-CONFIG_UNIX_SCM=y
 CONFIG_UNMAP_KERNEL_AT_EL0=y
 CONFIG_USB=y
 CONFIG_USB_ANNOUNCE_NEW_DEVICES=y
diff --git a/target/linux/bcm53xx/config-5.4 b/target/linux/bcm53xx/config-5.4
index 657d49ac01..676015f200 100644
--- a/target/linux/bcm53xx/config-5.4
+++ b/target/linux/bcm53xx/config-5.4
@@ -1,4 +1,3 @@
-CONFIG_64BIT_TIME=y
 # CONFIG_ADIN_PHY is not set
 CONFIG_ALIGNMENT_TRAP=y
 # CONFIG_AL_FIC is not set
@@ -168,7 +167,6 @@ CONFIG_DEBUG_UART_PHYS=0x18000300
 CONFIG_DEBUG_UART_VIRT=0xf1000300
 CONFIG_DEBUG_UNCOMPRESS=y
 CONFIG_DEBUG_USER=y
-CONFIG_DMA_DECLARE_COHERENT=y
 CONFIG_DMA_REMAP=y
 CONFIG_DTC=y
 CONFIG_EARLY_PRINTK=y
@@ -281,7 +279,6 @@ CONFIG_IRQ_DOMAIN=y
 CONFIG_IRQ_DOMAIN_HIERARCHY=y
 CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_WORK=y
-CONFIG_KASAN_STACK=1
 # CONFIG_LCD_CLASS_DEVICE is not set
 # CONFIG_LEDS_TRIGGER_AUDIO is not set
 # CONFIG_LEDS_TRIGGER_PATTERN is not set
@@ -340,7 +337,6 @@ CONFIG_OF_IRQ=y
 CONFIG_OF_KOBJ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_OLD_SIGACTION=y
 CONFIG_OLD_SIGSUSPEND3=y
 CONFIG_OUTER_CACHE=y
@@ -445,10 +441,8 @@ CONFIG_UBIFS_FS=y
 CONFIG_UBIFS_FS_LZO=y
 CONFIG_UBIFS_FS_ZLIB=y
 CONFIG_UBIFS_FS_ZSTD=y
-CONFIG_UBSAN_ALIGNMENT=y
 CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
 # CONFIG_UNICODE is not set
-CONFIG_UNIX_SCM=y
 CONFIG_UNWINDER_ARM=y
 # CONFIG_UNWINDER_FRAME_POINTER is not set
 # CONFIG_USB_CONN_GPIO is not set
diff --git a/target/linux/generic/config-5.4 b/target/linux/generic/config-5.4
index 0c246ee2df..939511bd3d 100644
--- a/target/linux/generic/config-5.4
+++ b/target/linux/generic/config-5.4
@@ -1,5 +1,6 @@
 # CONFIG_104_QUAD_8 is not set
 CONFIG_32BIT=y
+CONFIG_64BIT_TIME=y
 # CONFIG_6LOWPAN is not set
 # CONFIG_6LOWPAN_DEBUGFS is not set
 # CONFIG_6PACK is not set
@@ -965,13 +966,13 @@ CONFIG_CRYPTO_BLKCIPHER2=y
 # CONFIG_CRYPTO_CCM is not set
 # CONFIG_CRYPTO_CFB is not set
 # CONFIG_CRYPTO_CHACHA20 is not set
-# CONFIG_CRYPTO_CHACHA20_NEON is not set
 # CONFIG_CRYPTO_CHACHA20POLY1305 is not set
+# CONFIG_CRYPTO_CHACHA20_NEON is not set
 # CONFIG_CRYPTO_CMAC is not set
 # CONFIG_CRYPTO_CRC32 is not set
-# CONFIG_CRYPTO_CRC32_ARM_CE is not set
 # CONFIG_CRYPTO_CRC32C is not set
 # CONFIG_CRYPTO_CRC32C_INTEL is not set
+# CONFIG_CRYPTO_CRC32_ARM_CE is not set
 # CONFIG_CRYPTO_CRCT10DIF is not set
 # CONFIG_CRYPTO_CRYPTD is not set
 # CONFIG_CRYPTO_CTR is not set
@@ -1074,9 +1075,9 @@ CONFIG_CRYPTO_PCRYPT=y
 # CONFIG_CRYPTO_SHA1_ARM is not set
 # CONFIG_CRYPTO_SHA1_ARM_CE is not set
 # CONFIG_CRYPTO_SHA1_ARM_NEON is not set
-# CONFIG_CRYPTO_SHA2_ARM_CE is not set
 # CONFIG_CRYPTO_SHA256 is not set
 # CONFIG_CRYPTO_SHA256_ARM is not set
+# CONFIG_CRYPTO_SHA2_ARM_CE is not set
 # CONFIG_CRYPTO_SHA3 is not set
 # CONFIG_CRYPTO_SHA512 is not set
 # CONFIG_CRYPTO_SHA512_ARM is not set
@@ -1236,6 +1237,7 @@ CONFIG_DEVPORT=y
 # CONFIG_DMASCC is not set
 # CONFIG_DMATEST is not set
 # CONFIG_DMA_API_DEBUG is not set
+CONFIG_DMA_DECLARE_COHERENT=y
 # CONFIG_DMA_ENGINE is not set
 # CONFIG_DMA_FENCE_TRACE is not set
 # CONFIG_DMA_JZ4780 is not set
@@ -2475,6 +2477,7 @@ CONFIG_KALLSYMS_BASE_RELATIVE=y
 # CONFIG_KALLSYMS_UNCOMPRESSED is not set
 # CONFIG_KARMA_PARTITION is not set
 # CONFIG_KASAN is not set
+CONFIG_KASAN_STACK=1
 # CONFIG_KCOV is not set
 # CONFIG_KERNEL_BZIP2 is not set
 # CONFIG_KERNEL_CAT is not set
@@ -3728,6 +3731,7 @@ CONFIG_NMI_LOG_BUF_SHIFT=13
 # CONFIG_OBS600 is not set
 # CONFIG_OCFS2_FS is not set
 # CONFIG_OF_OVERLAY is not set
+CONFIG_OF_RESERVED_MEM=y
 # CONFIG_OF_UNITTEST is not set
 # CONFIG_OMAP2_DSS_DEBUG is not set
 # CONFIG_OMAP2_DSS_DEBUGFS is not set
@@ -5706,6 +5710,7 @@ CONFIG_UBIFS_FS_FORMAT4=y
 # CONFIG_UBIFS_FS_SECURITY is not set
 # CONFIG_UBIFS_FS_XATTR is not set
 # CONFIG_UBSAN is not set
+CONFIG_UBSAN_ALIGNMENT=y
 # CONFIG_UCB1400_CORE is not set
 # CONFIG_UCSI is not set
 # CONFIG_UDF_FS is not set
@@ -5725,6 +5730,7 @@ CONFIG_UNIX=y
 CONFIG_UNIX98_PTYS=y
 # CONFIG_UNIXWARE_DISKLABEL is not set
 # CONFIG_UNIX_DIAG is not set
+CONFIG_UNIX_SCM=y
 # CONFIG_UNUSED_SYMBOLS is not set
 # CONFIG_UPROBES is not set
 # CONFIG_UPROBE_EVENTS is not set
diff --git a/target/linux/imx6/config-5.4 b/target/linux/imx6/config-5.4
index b8f42b0044..e1ae4766d7 100644
--- a/target/linux/imx6/config-5.4
+++ b/target/linux/imx6/config-5.4
@@ -1,4 +1,3 @@
-CONFIG_64BIT_TIME=y
 # CONFIG_ADIN_PHY is not set
 CONFIG_AHCI_IMX=y
 CONFIG_ALIGNMENT_TRAP=y
@@ -215,7 +214,6 @@ CONFIG_DECOMPRESS_GZIP=y
 CONFIG_DECOMPRESS_LZO=y
 CONFIG_DECOMPRESS_XZ=y
 CONFIG_DMADEVICES=y
-CONFIG_DMA_DECLARE_COHERENT=y
 CONFIG_DMA_ENGINE=y
 CONFIG_DMA_OF=y
 CONFIG_DMA_REMAP=y
@@ -382,7 +380,6 @@ CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_WORK=y
 CONFIG_JBD2=y
 # CONFIG_JFFS2_FS is not set
-CONFIG_KASAN_STACK=1
 CONFIG_KEYS=y
 # CONFIG_KEYS_REQUEST_CACHE is not set
 # CONFIG_LCD_CLASS_DEVICE is not set
@@ -498,7 +495,6 @@ CONFIG_OF_IRQ=y
 CONFIG_OF_KOBJ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_OLD_SIGACTION=y
 CONFIG_OLD_SIGSUSPEND3=y
 CONFIG_OUTER_CACHE=y
@@ -676,11 +672,9 @@ CONFIG_UBIFS_FS_LZO=y
 CONFIG_UBIFS_FS_XATTR=y
 CONFIG_UBIFS_FS_ZLIB=y
 CONFIG_UBIFS_FS_ZSTD=y
-CONFIG_UBSAN_ALIGNMENT=y
 # CONFIG_UCLAMP_TASK is not set
 CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
 # CONFIG_UNICODE is not set
-CONFIG_UNIX_SCM=y
 CONFIG_UNWINDER_ARM=y
 # CONFIG_UNWINDER_FRAME_POINTER is not set
 CONFIG_USB=y
diff --git a/target/linux/ipq40xx/config-5.4 b/target/linux/ipq40xx/config-5.4
index 1cbba03dd9..41bfc5f716 100644
--- a/target/linux/ipq40xx/config-5.4
+++ b/target/linux/ipq40xx/config-5.4
@@ -1,4 +1,3 @@
-CONFIG_64BIT_TIME=y
 CONFIG_ALIGNMENT_TRAP=y
 # CONFIG_APQ_GCC_8084 is not set
 # CONFIG_APQ_MMCC_8084 is not set
@@ -175,7 +174,6 @@ CONFIG_DEBUG_LL_INCLUDE="mach/debug-macro.S"
 CONFIG_DEBUG_MISC=y
 # CONFIG_DEBUG_USER is not set
 CONFIG_DMADEVICES=y
-CONFIG_DMA_DECLARE_COHERENT=y
 CONFIG_DMA_ENGINE=y
 CONFIG_DMA_OF=y
 CONFIG_DMA_REMAP=y
@@ -298,7 +296,6 @@ CONFIG_IRQ_DOMAIN=y
 CONFIG_IRQ_DOMAIN_HIERARCHY=y
 CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_WORK=y
-CONFIG_KASAN_STACK=1
 # CONFIG_KPSS_XCC is not set
 # CONFIG_KRAITCC is not set
 CONFIG_LEDS_LP5562=y
@@ -373,7 +370,6 @@ CONFIG_OF_IRQ=y
 CONFIG_OF_KOBJ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_OLD_SIGACTION=y
 CONFIG_OLD_SIGSUSPEND3=y
 CONFIG_OPTEE=y
@@ -529,10 +525,8 @@ CONFIG_UBIFS_FS_ADVANCED_COMPR=y
 CONFIG_UBIFS_FS_LZO=y
 CONFIG_UBIFS_FS_ZLIB=y
 CONFIG_UBIFS_FS_ZSTD=y
-CONFIG_UBSAN_ALIGNMENT=y
 CONFIG_UEVENT_HELPER_PATH=""
 CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
-CONFIG_UNIX_SCM=y
 CONFIG_UNWINDER_ARM=y
 # CONFIG_UNWINDER_FRAME_POINTER is not set
 CONFIG_USB=y
diff --git a/target/linux/mediatek/mt7622/config-5.4 b/target/linux/mediatek/mt7622/config-5.4
index 536b0bff43..f867844885 100755
--- a/target/linux/mediatek/mt7622/config-5.4
+++ b/target/linux/mediatek/mt7622/config-5.4
@@ -1,5 +1,4 @@
 CONFIG_64BIT=y
-CONFIG_64BIT_TIME=y
 CONFIG_AHCI_MTK=y
 # CONFIG_ARCH_AGILEX is not set
 # CONFIG_ARCH_BITMAIN is not set
@@ -247,7 +246,6 @@ CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_DMADEVICES=y
 CONFIG_DMATEST=y
-CONFIG_DMA_DECLARE_COHERENT=y
 CONFIG_DMA_DIRECT_REMAP=y
 CONFIG_DMA_ENGINE=y
 CONFIG_DMA_ENGINE_RAID=y
@@ -404,7 +402,6 @@ CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_TIME_ACCOUNTING=y
 CONFIG_IRQ_WORK=y
 CONFIG_JUMP_LABEL=y
-CONFIG_KASAN_STACK=1
 CONFIG_LIBFDT=y
 CONFIG_LOCK_DEBUGGING_SUPPORT=y
 CONFIG_LOCK_SPIN_ON_OWNER=y
@@ -463,7 +460,6 @@ CONFIG_OF_IRQ=y
 CONFIG_OF_KOBJ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_OLD_SIGSUSPEND3=y
 CONFIG_PADATA=y
 CONFIG_PARTITION_PERCPU=y
@@ -584,9 +580,7 @@ CONFIG_TIMER_PROBE=y
 # CONFIG_TI_CPSW_PHY_SEL is not set
 CONFIG_TREE_RCU=y
 CONFIG_TREE_SRCU=y
-CONFIG_UBSAN_ALIGNMENT=y
 # CONFIG_UCLAMP_TASK is not set
-CONFIG_UNIX_SCM=y
 # CONFIG_UNMAP_KERNEL_AT_EL0 is not set
 CONFIG_USB=y
 CONFIG_USB_COMMON=y
diff --git a/target/linux/mediatek/mt7623/config-5.4 b/target/linux/mediatek/mt7623/config-5.4
index 9338b1d114..6e1ff28bd3 100644
--- a/target/linux/mediatek/mt7623/config-5.4
+++ b/target/linux/mediatek/mt7623/config-5.4
@@ -1,4 +1,3 @@
-CONFIG_64BIT_TIME=y
 # CONFIG_AIO is not set
 CONFIG_ALIGNMENT_TRAP=y
 CONFIG_ARCH_32BIT_OFF_T=y
@@ -191,7 +190,6 @@ CONFIG_DEBUG_UART_VIRT=0xf1004000
 CONFIG_DEBUG_UNCOMPRESS=y
 # CONFIG_DEBUG_USER is not set
 CONFIG_DMADEVICES=y
-CONFIG_DMA_DECLARE_COHERENT=y
 CONFIG_DMA_ENGINE=y
 CONFIG_DMA_OF=y
 CONFIG_DMA_REMAP=y
@@ -323,7 +321,6 @@ CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_WORK=y
 CONFIG_JBD2=y
 CONFIG_KALLSYMS=y
-CONFIG_KASAN_STACK=1
 CONFIG_LEDS_MT6323=y
 CONFIG_LIBFDT=y
 CONFIG_LOCK_DEBUGGING_SUPPORT=y
@@ -415,7 +412,6 @@ CONFIG_OF_IRQ=y
 CONFIG_OF_KOBJ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_OLD_SIGACTION=y
 CONFIG_OLD_SIGSUSPEND3=y
 CONFIG_PADATA=y
@@ -536,11 +532,9 @@ CONFIG_UBIFS_FS=y
 CONFIG_UBIFS_FS_LZO=y
 CONFIG_UBIFS_FS_ZLIB=y
 CONFIG_UBIFS_FS_ZSTD=y
-CONFIG_UBSAN_ALIGNMENT=y
 CONFIG_UEVENT_HELPER_PATH=""
 CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
 CONFIG_UNINLINE_SPIN_UNLOCK=y
-CONFIG_UNIX_SCM=y
 CONFIG_UNWINDER_ARM=y
 # CONFIG_UNWINDER_FRAME_POINTER is not set
 CONFIG_USB=y
diff --git a/target/linux/mediatek/mt7629/config-5.4 b/target/linux/mediatek/mt7629/config-5.4
index d25c8331ad..861ce4222b 100644
--- a/target/linux/mediatek/mt7629/config-5.4
+++ b/target/linux/mediatek/mt7629/config-5.4
@@ -1,4 +1,3 @@
-CONFIG_64BIT_TIME=y
 # CONFIG_ADIN_PHY is not set
 CONFIG_ALIGNMENT_TRAP=y
 # CONFIG_AL_FIC is not set
@@ -149,7 +148,6 @@ CONFIG_DEBUG_MISC=y
 # CONFIG_DEBUG_PLIST is not set
 # CONFIG_DEBUG_USER is not set
 CONFIG_DEFAULT_HOSTNAME="(mt7629)"
-CONFIG_DMA_DECLARE_COHERENT=y
 CONFIG_DMA_REMAP=y
 CONFIG_DTC=y
 CONFIG_EDAC_ATOMIC_SCRUB=y
@@ -263,7 +261,6 @@ CONFIG_IRQ_DOMAIN_HIERARCHY=y
 CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_TIME_ACCOUNTING=y
 CONFIG_IRQ_WORK=y
-CONFIG_KASAN_STACK=1
 # CONFIG_LCD_CLASS_DEVICE is not set
 # CONFIG_LEDS_BRIGHTNESS_HW_CHANGED is not set
 # CONFIG_LEDS_TRIGGER_AUDIO is not set
@@ -341,7 +338,6 @@ CONFIG_OF_IRQ=y
 CONFIG_OF_KOBJ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_OLD_SIGACTION=y
 CONFIG_OLD_SIGSUSPEND3=y
 CONFIG_OUTER_CACHE=y
@@ -455,10 +451,8 @@ CONFIG_UBIFS_FS=y
 CONFIG_UBIFS_FS_LZO=y
 CONFIG_UBIFS_FS_ZLIB=y
 CONFIG_UBIFS_FS_ZSTD=y
-CONFIG_UBSAN_ALIGNMENT=y
 CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
 # CONFIG_UNICODE is not set
-CONFIG_UNIX_SCM=y
 CONFIG_UNWINDER_ARM=y
 # CONFIG_UNWINDER_FRAME_POINTER is not set
 CONFIG_USB=y
diff --git a/target/linux/mpc85xx/config-5.4 b/target/linux/mpc85xx/config-5.4
index 9fe66b3d36..65ee414c4e 100644
--- a/target/linux/mpc85xx/config-5.4
+++ b/target/linux/mpc85xx/config-5.4
@@ -217,7 +217,6 @@ CONFIG_OF_IRQ=y
 CONFIG_OF_KOBJ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_OLD_SIGACTION=y
 CONFIG_OLD_SIGSUSPEND=y
 # CONFIG_P1010_RDB is not set
diff --git a/target/linux/x86/config-5.4 b/target/linux/x86/config-5.4
index 676383efe3..3207025bbf 100644
--- a/target/linux/x86/config-5.4
+++ b/target/linux/x86/config-5.4
@@ -1,6 +1,5 @@
 # CONFIG_60XX_WDT is not set
 # CONFIG_64BIT is not set
-CONFIG_64BIT_TIME=y
 # CONFIG_ACPI is not set
 # CONFIG_ACQUIRE_WDT is not set
 # CONFIG_ADVANTECH_WDT is not set
@@ -297,7 +296,6 @@ CONFIG_ISA_DMA_API=y
 # CONFIG_ITCO_WDT is not set
 CONFIG_JBD2=y
 CONFIG_KALLSYMS=y
-CONFIG_KASAN_STACK=1
 CONFIG_KEXEC=y
 CONFIG_KEXEC_CORE=y
 CONFIG_KEYBOARD_ATKBD=y
@@ -437,8 +435,6 @@ CONFIG_TINY_SRCU=y
 # CONFIG_TI_CPSW_PHY_SEL is not set
 # CONFIG_TOSHIBA is not set
 # CONFIG_TQMX86_WDT is not set
-CONFIG_UBSAN_ALIGNMENT=y
-CONFIG_UNIX_SCM=y
 CONFIG_UNWINDER_FRAME_POINTER=y
 # CONFIG_UNWINDER_GUESS is not set
 CONFIG_UP_LATE_INIT=y

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
