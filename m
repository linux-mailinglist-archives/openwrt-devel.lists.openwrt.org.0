Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6CB8094F
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 06:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXrOjw7uh946kIABHcvE/ux8UeG2xzSvVXt25S13Dv0=; b=VxvIuzZLdVXjt6
	YGhhwkkylOGSOB3jEH5CrMXIjcZXYHZbpAKwA4h1eDthy+ww7qbiqMSvUvEXKLBuTLIYIY7axFDQ7
	mnzauRAShbNHcov6kYHaD0z9OF5F9yYC5XlTpxm78R9BkmD08+xbk2eRGwLfXn9qe9nfPldpdjmX1
	mBhQfVvYL5MhCEbxK/8nnmT1UaImZzl7a2SVy2nfQafyuSDwJ7xJw/dqC2ayiDUBIroBFL3xpSiYD
	xHz2yYoggyK5aAzYZ4NmwMz2VU8pmuwTxJ6E2x24LSmVYjSQC6elkIIjPXwN6eFI1UKfxWTBaWKwA
	OGu2Gnnm8YwjkKcFSMmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu8Dh-0003yR-9f; Sun, 04 Aug 2019 04:34:09 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu8D2-0003Re-F9
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 04:33:29 +0000
Received: by mail-vs1-xe43.google.com with SMTP id j26so53912545vsn.10
 for <openwrt-devel@lists.openwrt.org>; Sat, 03 Aug 2019 21:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FczMKLyELBfUSybqNHkqb4CqoP+yD52JZ0mafhOWk90=;
 b=ogOOUvFxc5MZsisv6zaXrooiCeZi8u8sNGP4ga0GzyxyNU9FZZZTncNXMhDHIKUfMm
 BcryOE4srS2x8+n4m+D4D35bbaRdejdz8saK+jQ5NNuWAg8jvzcAX4PJiob5PcV0qNio
 gYy4HMAZiSGxFnjzCMg1/jaLQdS5lGWjlTO/4GefXiVH0KzPmokQPs1EnVjGcgXO8Jey
 Fc9llx1FiblPwP8Pva2c4lcXHEV2L0QFxvU3Y7MdmGEb9cY/S50MGLPAgmZwLm3p/3sw
 6CEDUTBbVGV+7VNL1GWC/1PR/m6GZZF6K3LzbqIkhRmGRh//kXVV5y5kHgyHorS+UQPL
 +00g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FczMKLyELBfUSybqNHkqb4CqoP+yD52JZ0mafhOWk90=;
 b=EW9LbvXPgi7y/xUpxxYkvfNYBHmh1NJ1WHU85IKImBI4rnB1om+KKQUrnoPOO1nY01
 3YpjhGVha96Sk6Zy3MQf8f+rfNRFyZe3inPVzSXoG0pxbjKYpCLlvzSyp1l5DTCCj8Ds
 14ovGQTojDNMCuqpz0GcEpV6vzoQIUysfap3mLt9J3dchM+YA5MNOujLrNZidn1duLDe
 prmQM6A6PisQLjje1XJfA0ZAg5YdxN3qXD8v43EBhxUfwcFJL0FyxBQ57kuRujNt07Sb
 D9CbGBgMFHIUV76eK2DJg6TNdSm4lx3Gud+aLf4p/0rSRoW86okWzpuEKPNJxEzHVicJ
 4DvA==
X-Gm-Message-State: APjAAAXJ9YQWac9JBHxpF6Plu0HS8uMmYi6eB9pVYvpBzdw1hwT65zID
 928/0R9lGMBVkVCzV46/evV1DPEz
X-Google-Smtp-Source: APXvYqwwKqy4UdsOJj2zV8qK+qHScjcN2QoELMLTtPaPZIOtJEExs1K9LhWZHn408MOFY96A49k1Mw==
X-Received: by 2002:a67:ee98:: with SMTP id n24mr39401769vsp.92.1564893207607; 
 Sat, 03 Aug 2019 21:33:27 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.31.112])
 by smtp.gmail.com with ESMTPSA id 10sm33314346vkl.33.2019.08.03.21.33.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 21:33:27 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  4 Aug 2019 00:32:03 -0400
Message-Id: <20190804043206.30580-3-luaraneda@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804043206.30580-1-luaraneda@gmail.com>
References: <20190804043206.30580-1-luaraneda@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_213328_502382_02048CAD 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [190.22.31.112 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 2/5] zynq: kernel: use some configs provided
 by generic
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
Cc: Luis Araneda <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

- Select CONFIG_PREEMPT_NONE (server) instead
  of CONFIG_PREEMPT (low-latency desktop)
- Remove CONFIG_USELIB
- Remove CONFIG_SYSCTL_SYSCALL

Signed-off-by: Luis Araneda <luaraneda@gmail.com>
---
 target/linux/zynq/config-4.19 | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/target/linux/zynq/config-4.19 b/target/linux/zynq/config-4.19
index e559e8cd05..cfa6d04e3a 100644
--- a/target/linux/zynq/config-4.19
+++ b/target/linux/zynq/config-4.19
@@ -512,17 +512,12 @@ CONFIG_POWER_RESET=y
 CONFIG_POWER_RESET_VEXPRESS=y
 CONFIG_POWER_SUPPLY=y
 CONFIG_PPS=y
-CONFIG_PREEMPT=y
-CONFIG_PREEMPT_COUNT=y
-# CONFIG_PREEMPT_NONE is not set
-CONFIG_PREEMPT_RCU=y
 CONFIG_PROC_EVENTS=y
 # CONFIG_PROC_STRIPPED is not set
 CONFIG_PTP_1588_CLOCK=y
 CONFIG_R8169=y
 CONFIG_RAS=y
 CONFIG_RATIONAL=y
-# CONFIG_RCU_BOOST is not set
 CONFIG_RCU_NEED_SEGCBLIST=y
 CONFIG_RCU_STALL_COMMON=y
 CONFIG_REALTEK_PHY=y
@@ -576,10 +571,8 @@ CONFIG_SUSPEND_FREEZER=y
 CONFIG_SWPHY=y
 CONFIG_SWP_EMULATE=y
 CONFIG_SYNC_FILE=y
-CONFIG_SYSCTL_SYSCALL=y
 CONFIG_SYSFS_SYSCALL=y
 CONFIG_SYS_SUPPORTS_APM_EMULATION=y
-CONFIG_TASKS_RCU=y
 # CONFIG_TCP_CONG_ADVANCED is not set
 # CONFIG_TEXTSEARCH is not set
 CONFIG_THERMAL=y
@@ -593,6 +586,7 @@ CONFIG_TICK_CPU_ACCOUNTING=y
 CONFIG_TIMER_OF=y
 CONFIG_TIMER_PROBE=y
 # CONFIG_TMPFS_XATTR is not set
+CONFIG_TREE_RCU=y
 CONFIG_TREE_SRCU=y
 CONFIG_UIO=y
 # CONFIG_UIO_AEC is not set
@@ -605,7 +599,6 @@ CONFIG_UIO_PDRV_GENIRQ=y
 # CONFIG_UIO_PRUSS is not set
 # CONFIG_UIO_SERCOS3 is not set
 CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
-CONFIG_UNINLINE_SPIN_UNLOCK=y
 CONFIG_USB=y
 CONFIG_USB_CHIPIDEA=y
 CONFIG_USB_CHIPIDEA_HOST=y
@@ -626,7 +619,6 @@ CONFIG_USB_SUPPORT=y
 CONFIG_USB_ULPI=y
 CONFIG_USB_ULPI_BUS=y
 CONFIG_USB_ULPI_VIEWPORT=y
-CONFIG_USELIB=y
 # CONFIG_USERIO is not set
 CONFIG_USE_OF=y
 CONFIG_VEXPRESS_CONFIG=y
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
