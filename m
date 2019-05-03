Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF031348E
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 22:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OfRboY9PQwlj2EMmb2mgaDDoDPITbK4DsyNm/QZlFM=; b=py1QrMeSN6E6qx
	Rs18CGwapoXj9IavQA/vwi57AGAKkm8PPNvZ1DO/Pia5bJaBBaX0FmqSGe6wrd19PdEdXjf60rrFi
	HrRb3Hj7ZTRic0qP8PaekKy6xZw/DoetVy8vhRkkjytLFYLCAUmYTLCoPBRiF87DXxXEWiNpWrys5
	I8qJpuNYgccCjxQrH4hFOvqCq7d6qTOSUAivVKxO3HvMOLiXHpDhJPweaXkAD2zqVwtUKFmE4NPD8
	p3ggzo1nMpmU+uXxJnWFSvAPFOq2YsO22ofRC7ACNDnPKFmxug5n5POLcAEsvqkzOQkHisYyeblgH
	iKuLn60evF8pP6Knwdqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfBo-0000YP-IT; Fri, 03 May 2019 20:53:52 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfAi-0007Xy-B3
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 20:52:47 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 0D9C24E71A;
 Fri,  3 May 2019 22:52:43 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id qBhc4_8acrmE; Fri,  3 May 2019 22:52:28 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 22:52:02 +0200
Message-Id: <20190503205207.7675-6-hauke@hauke-m.de>
In-Reply-To: <20190503205207.7675-1-hauke@hauke-m.de>
References: <20190503205207.7675-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_135244_680970_DA656F2F 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 05/10] kernel: Activate CONFIG_SYN_COOKIES
 for all targets
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

Some targets deactivated CONFIG_SYN_COOKIES, for unknown reasons, use
the default setting from the generic configuration which activates
CONFIG_SYN_COOKIES.

This should prevent SYN flooding.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/at91/config-4.9                  | 1 -
 target/linux/gemini/config-4.14               | 1 -
 target/linux/gemini/config-4.19               | 1 -
 target/linux/layerscape/armv7/config-4.14     | 1 -
 target/linux/layerscape/armv8_32b/config-4.14 | 1 -
 target/linux/layerscape/armv8_64b/config-4.14 | 1 -
 target/linux/zynq/config-4.14                 | 1 -
 7 files changed, 7 deletions(-)

diff --git a/target/linux/at91/config-4.9 b/target/linux/at91/config-4.9
index 308b346161..26c499294b 100644
--- a/target/linux/at91/config-4.9
+++ b/target/linux/at91/config-4.9
@@ -482,7 +482,6 @@ CONFIG_SUSPEND_FREEZER=y
 CONFIG_SWIOTLB=y
 CONFIG_SWPHY=y
 # CONFIG_SWP_EMULATE is not set
-# CONFIG_SYN_COOKIES is not set
 CONFIG_SYSFS_SYSCALL=y
 CONFIG_SYS_SUPPORTS_APM_EMULATION=y
 # CONFIG_TCP_CONG_ADVANCED is not set
diff --git a/target/linux/gemini/config-4.14 b/target/linux/gemini/config-4.14
index ef5900771e..9a7e9240e5 100644
--- a/target/linux/gemini/config-4.14
+++ b/target/linux/gemini/config-4.14
@@ -398,7 +398,6 @@ CONFIG_SRCU=y
 CONFIG_SWIOTLB=y
 CONFIG_SWPHY=y
 CONFIG_SYNC_FILE=y
-# CONFIG_SYN_COOKIES is not set
 CONFIG_SYSFS_SYSCALL=y
 CONFIG_SYS_SUPPORTS_APM_EMULATION=y
 CONFIG_TASKS_RCU=y
diff --git a/target/linux/gemini/config-4.19 b/target/linux/gemini/config-4.19
index 014175ea13..d9b9cd7316 100644
--- a/target/linux/gemini/config-4.19
+++ b/target/linux/gemini/config-4.19
@@ -452,7 +452,6 @@ CONFIG_SRCU=y
 # CONFIG_STRIP_ASM_SYMS is not set
 CONFIG_SWPHY=y
 CONFIG_SYNC_FILE=y
-# CONFIG_SYN_COOKIES is not set
 CONFIG_SYSFS_SYSCALL=y
 CONFIG_SYS_SUPPORTS_APM_EMULATION=y
 CONFIG_TASKS_RCU=y
diff --git a/target/linux/layerscape/armv7/config-4.14 b/target/linux/layerscape/armv7/config-4.14
index 99df681b54..b2573eb321 100755
--- a/target/linux/layerscape/armv7/config-4.14
+++ b/target/linux/layerscape/armv7/config-4.14
@@ -706,7 +706,6 @@ CONFIG_SWIOTLB=y
 CONFIG_SWPHY=y
 CONFIG_SWP_EMULATE=y
 CONFIG_SYNC_FILE=y
-# CONFIG_SYN_COOKIES is not set
 CONFIG_SYSFS_SYSCALL=y
 CONFIG_SYS_SUPPORTS_APM_EMULATION=y
 CONFIG_SYS_SUPPORTS_HUGETLBFS=y
diff --git a/target/linux/layerscape/armv8_32b/config-4.14 b/target/linux/layerscape/armv8_32b/config-4.14
index cbbbeaabe9..a7b82fb5b8 100644
--- a/target/linux/layerscape/armv8_32b/config-4.14
+++ b/target/linux/layerscape/armv8_32b/config-4.14
@@ -858,7 +858,6 @@ CONFIG_SWIOTLB=y
 CONFIG_SWPHY=y
 CONFIG_SWP_EMULATE=y
 CONFIG_SYNC_FILE=y
-# CONFIG_SYN_COOKIES is not set
 CONFIG_SYSFS_SYSCALL=y
 CONFIG_SYS_SUPPORTS_APM_EMULATION=y
 CONFIG_SYS_SUPPORTS_HUGETLBFS=y
diff --git a/target/linux/layerscape/armv8_64b/config-4.14 b/target/linux/layerscape/armv8_64b/config-4.14
index e9da223528..585cad6cc0 100644
--- a/target/linux/layerscape/armv8_64b/config-4.14
+++ b/target/linux/layerscape/armv8_64b/config-4.14
@@ -848,7 +848,6 @@ CONFIG_SWIOTLB=y
 CONFIG_SWIOTLB_XEN=y
 CONFIG_SWPHY=y
 CONFIG_SYNC_FILE=y
-# CONFIG_SYN_COOKIES is not set
 CONFIG_SYSCTL_EXCEPTION_TRACE=y
 CONFIG_SYSFS_SYSCALL=y
 CONFIG_SYS_HYPERVISOR=y
diff --git a/target/linux/zynq/config-4.14 b/target/linux/zynq/config-4.14
index 1e39e1061e..fc33ca1b51 100644
--- a/target/linux/zynq/config-4.14
+++ b/target/linux/zynq/config-4.14
@@ -574,7 +574,6 @@ CONFIG_SWIOTLB=y
 CONFIG_SWPHY=y
 CONFIG_SWP_EMULATE=y
 CONFIG_SYNC_FILE=y
-# CONFIG_SYN_COOKIES is not set
 CONFIG_SYSCTL_SYSCALL=y
 CONFIG_SYSFS_SYSCALL=y
 CONFIG_SYS_SUPPORTS_APM_EMULATION=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
