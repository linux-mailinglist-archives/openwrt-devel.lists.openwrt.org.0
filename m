Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F3A1348D
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 22:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRq2Q/0S0jaVNtPmK/QCLin4GTTLQP/FLBjzaKXv05Q=; b=Rka0t1HthWGk5L
	XeQFCMTb1kj6WsENAgDU+QaZhDeO31SXLdIZXA6cWm9ePjBzPHUbgFilEXIcjsj9Z2idcIikHs44l
	/qnzos2yY+FzOkrdFC0fT6J+4nDb/6uslwSzInrUixp7ZeB7oPII3UQxKuq8iK/DrGPM8FacJ3jxe
	52aYuwvSkxGVa4c+bSOlSGib3djiNWPV+64C0S5Ymeqs7ZOXluINAbEl1xOyeh/tJYKiFyXWeUBWv
	N3QZGsOdv7+Dsk+EsOXXImAOQ2gbtQp8f/XXTOnU7tZm3AUC3HP2EPlvXCkz90A1lrrVDODO8d5UH
	4+bHEquJswBWiE8ppk9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMfBe-0000IQ-59; Fri, 03 May 2019 20:53:42 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMfAh-0007Xj-Mx
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 20:52:47 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 9DEB7A108D;
 Fri,  3 May 2019 22:52:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id CKeUCYL9_HN7; Fri,  3 May 2019 22:52:28 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 May 2019 22:52:03 +0200
Message-Id: <20190503205207.7675-7-hauke@hauke-m.de>
In-Reply-To: <20190503205207.7675-1-hauke@hauke-m.de>
References: <20190503205207.7675-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_135243_910684_605342FD 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 06/10] kernel: Do not set CONFIG_DEVMEM or
 CONFIG_DEVKMEM
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

This is deactivated by default and should be manually activated in the
OpenWrt kernel configuration

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/layerscape/armv7/config-4.14     | 2 --
 target/linux/layerscape/armv8_32b/config-4.14 | 2 --
 target/linux/layerscape/armv8_64b/config-4.14 | 1 -
 target/linux/samsung/s5pv210/config-4.14      | 1 -
 4 files changed, 6 deletions(-)

diff --git a/target/linux/layerscape/armv7/config-4.14 b/target/linux/layerscape/armv7/config-4.14
index b2573eb321..0880436a20 100755
--- a/target/linux/layerscape/armv7/config-4.14
+++ b/target/linux/layerscape/armv7/config-4.14
@@ -205,8 +205,6 @@ CONFIG_DETECT_HUNG_TASK=y
 # CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND is not set
 # CONFIG_DEVFREQ_GOV_USERSPACE is not set
 # CONFIG_DEVFREQ_THERMAL is not set
-CONFIG_DEVKMEM=y
-CONFIG_DEVMEM=y
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_DMADEVICES=y
diff --git a/target/linux/layerscape/armv8_32b/config-4.14 b/target/linux/layerscape/armv8_32b/config-4.14
index a7b82fb5b8..437081a3a8 100644
--- a/target/linux/layerscape/armv8_32b/config-4.14
+++ b/target/linux/layerscape/armv8_32b/config-4.14
@@ -218,8 +218,6 @@ CONFIG_DEFAULT_CFQ=y
 CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=120
 CONFIG_DEFAULT_IOSCHED="cfq"
 CONFIG_DETECT_HUNG_TASK=y
-CONFIG_DEVKMEM=y
-CONFIG_DEVMEM=y
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_DMADEVICES=y
diff --git a/target/linux/layerscape/armv8_64b/config-4.14 b/target/linux/layerscape/armv8_64b/config-4.14
index 585cad6cc0..739ca731f9 100644
--- a/target/linux/layerscape/armv8_64b/config-4.14
+++ b/target/linux/layerscape/armv8_64b/config-4.14
@@ -215,7 +215,6 @@ CONFIG_DEFAULT_CFQ=y
 CONFIG_DEFAULT_HUNG_TASK_TIMEOUT=120
 CONFIG_DEFAULT_IOSCHED="cfq"
 CONFIG_DETECT_HUNG_TASK=y
-CONFIG_DEVMEM=y
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_DMADEVICES=y
diff --git a/target/linux/samsung/s5pv210/config-4.14 b/target/linux/samsung/s5pv210/config-4.14
index b72fce16f0..548b198715 100644
--- a/target/linux/samsung/s5pv210/config-4.14
+++ b/target/linux/samsung/s5pv210/config-4.14
@@ -117,7 +117,6 @@ CONFIG_DECOMPRESS_LZO=y
 CONFIG_DECOMPRESS_XZ=y
 CONFIG_DEFAULT_IOSCHED="noop"
 CONFIG_DEFAULT_NOOP=y
-CONFIG_DEVMEM=y
 CONFIG_DM9000=y
 # CONFIG_DM9000_FORCE_SIMPLE_PHY_POLL is not set
 CONFIG_DNOTIFY=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
