Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75581C5F16
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 19:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IGsk10Q6qqmW+N7n47DPJZEn4OkJzwH+Gx72snRYNmY=; b=RWsGPKfBgO7XZi
	LRTXH1O11hclf+9umnrsRpLji/FA0tTeWIL9RL6ZGpd+sj6GivVKYkiP8I6uUMrjZrZfz9mQppQHv
	dLLQ+xJKYXpgffq9FafewBb9Zzd0UhgWt5/krK31cEfYbztWyK9S/vub6XGq8GdZmd55mOOlrxF+B
	Aca5Gvnbjbq0Dpoi/c5dzi/2WONGCDruT7d/YTv57n6lRDeDSTGJMOeMjd0+YtSzPU01yT/nEs+Y/
	Vqaqet54XRcpDhlH1AXKqMYMKZZxSmtsdcOs0LzDhSoDNS8gJzH/u129x7mxcfpUHXc8kVKbs1c2G
	fwmNNLdIpWlehu09+xcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1ax-0003oI-Cy; Tue, 05 May 2020 17:43:03 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jW1ag-0003d9-4f
 for openwrt-devel@lists.openwrt.org; Tue, 05 May 2020 17:42:47 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F10490045476E9B312CB1C5.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f10:4900:4547:6e9b:312c:b1c5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 369D21E312
 for <openwrt-devel@lists.openwrt.org>; Tue,  5 May 2020 19:42:39 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 May 2020 19:42:30 +0200
Message-Id: <20200505174231.398817-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_104246_327662_2804B2CE 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/2] mpc85xx: rename generic subtarget to
 p1010
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

The mpc85xx-generic subtarget supports the QorIQ SoCs of the p1010
family. Rename the subtarget to reflect this affiliation as it's the
case with the other mpc85xx subtargets.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/mpc85xx/Makefile                                 | 2 +-
 target/linux/mpc85xx/image/Makefile                           | 2 +-
 target/linux/mpc85xx/{generic => p1010}/config-default        | 0
 .../linux/mpc85xx/{generic => p1010}/profiles/00-default.mk   | 2 +-
 target/linux/mpc85xx/{generic => p1010}/target.mk             | 4 ++--
 5 files changed, 5 insertions(+), 5 deletions(-)
 rename target/linux/mpc85xx/{generic => p1010}/config-default (100%)
 rename target/linux/mpc85xx/{generic => p1010}/profiles/00-default.mk (81%)
 rename target/linux/mpc85xx/{generic => p1010}/target.mk (53%)

diff --git a/target/linux/mpc85xx/Makefile b/target/linux/mpc85xx/Makefile
index 4bb4d8812d..2ffdfeddcd 100644
--- a/target/linux/mpc85xx/Makefile
+++ b/target/linux/mpc85xx/Makefile
@@ -11,7 +11,7 @@ BOARD:=mpc85xx
 BOARDNAME:=Freescale MPC85xx
 CPU_TYPE:=8540
 FEATURES:=squashfs ramdisk
-SUBTARGETS:=generic p1020 p2020
+SUBTARGETS:=p1010 p1020 p2020
 
 KERNEL_PATCHVER:=5.4
 
diff --git a/target/linux/mpc85xx/image/Makefile b/target/linux/mpc85xx/image/Makefile
index 40002c13c4..225f871699 100644
--- a/target/linux/mpc85xx/image/Makefile
+++ b/target/linux/mpc85xx/image/Makefile
@@ -21,7 +21,7 @@ define Device/Default
   SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
 endef
 
-ifeq ($(SUBTARGET),generic)
+ifeq ($(SUBTARGET),p1010)
 
 define Device/tplink_tl-wdr4900-v1
   DEVICE_VENDOR := TP-Link
diff --git a/target/linux/mpc85xx/generic/config-default b/target/linux/mpc85xx/p1010/config-default
similarity index 100%
rename from target/linux/mpc85xx/generic/config-default
rename to target/linux/mpc85xx/p1010/config-default
diff --git a/target/linux/mpc85xx/generic/profiles/00-default.mk b/target/linux/mpc85xx/p1010/profiles/00-default.mk
similarity index 81%
rename from target/linux/mpc85xx/generic/profiles/00-default.mk
rename to target/linux/mpc85xx/p1010/profiles/00-default.mk
index 67507ace8a..5356aaa939 100644
--- a/target/linux/mpc85xx/generic/profiles/00-default.mk
+++ b/target/linux/mpc85xx/p1010/profiles/00-default.mk
@@ -9,7 +9,7 @@ define Profile/Default
 endef
 
 define Profile/Default/Description
-	Default package set compatible with most MPC85xx boards.
+	Default package set compatible with most P1010 boards.
 endef
 
 $(eval $(call Profile,Default))
diff --git a/target/linux/mpc85xx/generic/target.mk b/target/linux/mpc85xx/p1010/target.mk
similarity index 53%
rename from target/linux/mpc85xx/generic/target.mk
rename to target/linux/mpc85xx/p1010/target.mk
index f826fe4d15..12ed78ace1 100644
--- a/target/linux/mpc85xx/generic/target.mk
+++ b/target/linux/mpc85xx/p1010/target.mk
@@ -1,8 +1,8 @@
-BOARDNAME:=Generic
+BOARDNAME:=P1010
 FEATURES+=nand
 KERNELNAME:=simpleImage.tl-wdr4900-v1
 
 define Target/Description
-	Build firmware images for generic MPC85xx based boards.
+	Build firmware images for P1010 based boards.
 endef
 
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
