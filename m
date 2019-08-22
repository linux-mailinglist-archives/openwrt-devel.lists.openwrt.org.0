Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2777988D1
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 03:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nByPsyaunRjqo+HvMcdoSWd2UzR4aYGVFB1y6FNNa3k=; b=S5wKaOZrBR2FaV
	0Iox1Gd0N8A5pDx6zNtL6maVNzI/fgzl3jv7Uye5eiQ2qawlE94AEYZHZk5NBgmiCoG+PmgDN1qU+
	jSdGee+MPds3Y+zd9SdILYfejpmolSVVpp5E9McZgkp7UT4753DDfdxOBP7GdPBeSW57I8EkVL2iW
	mzSaKIVhreJcvzwA/5BpumPxRWBafbQspho2MmMe+IcempC0elIsYjC6RjA3l7F+zDjcF5gdZupPX
	9Gp9LcwHyj7D8VI3nCk3rR3e3Ih2vF9Aarq8fu4py/uilRJgaX/PlQEBChZ5VEFhFuHmlNKRv+Rgg
	NJoNji2uFDj/pO3jPk0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bSU-0007Ve-Gj; Thu, 22 Aug 2019 01:00:10 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bSI-0007KV-Cq
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 01:00:00 +0000
X-Originating-IP: 168.105.3.205
Received: from localhost.localdomain (unknown [168.105.3.205])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 2F9F9240004;
 Thu, 22 Aug 2019 00:59:40 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 21 Aug 2019 14:59:24 -1000
Message-Id: <20190822005924.32310-1-mail@aparcar.org>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_175958_586501_F14408EA 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ipqx0xx: add Generic subtarget
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
Cc: John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Both targets miss a subtarget causing an image naming style which is
different from other all othe targets, even tho it already uses
`x/generic/` as subfolder as if the subtarget would exist.

This commit adds the Generic subtarget resulting in consistent naming.

    ~/src/openwrt/openwrt/bin/targets/ipq806x/generic$ ls
    openwrt-ipq806x-generic-netgear_d7800-initramfs-uImage
    openwrt-ipq806x-generic-netgear-d7800.manifest
    openwrt-ipq806x-generic-netgear_d7800-squashfs-factory.img
    openwrt-ipq806x-generic-netgear_d7800-squashfs-sysupgrade.bin

CC: John Crispin <john@phrozen.org>

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 target/linux/ipq40xx/Makefile          | 1 +
 target/linux/ipq40xx/generic/target.mk | 1 +
 target/linux/ipq806x/Makefile          | 1 +
 target/linux/ipq806x/generic/target.mk | 1 +
 4 files changed, 4 insertions(+)
 create mode 100644 target/linux/ipq40xx/generic/target.mk
 create mode 100644 target/linux/ipq806x/generic/target.mk

diff --git a/target/linux/ipq40xx/Makefile b/target/linux/ipq40xx/Makefile
index 9b78d1f1bf..9e26b277fa 100644
--- a/target/linux/ipq40xx/Makefile
+++ b/target/linux/ipq40xx/Makefile
@@ -7,6 +7,7 @@ FEATURES:=squashfs fpu ramdisk nand
 CPU_TYPE:=cortex-a7
 CPU_SUBTYPE:=neon-vfpv4
 MAINTAINER:=John Crispin <john@phrozen.org>
+SUBTARGETS:=generic
 
 KERNEL_PATCHVER:=4.19
 
diff --git a/target/linux/ipq40xx/generic/target.mk b/target/linux/ipq40xx/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/ipq40xx/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
diff --git a/target/linux/ipq806x/Makefile b/target/linux/ipq806x/Makefile
index cd0e8b82ea..19ed015ebc 100644
--- a/target/linux/ipq806x/Makefile
+++ b/target/linux/ipq806x/Makefile
@@ -9,6 +9,7 @@ FEATURES:=squashfs nand fpu ramdisk
 CPU_TYPE:=cortex-a15
 CPU_SUBTYPE:=neon-vfpv4
 MAINTAINER:=John Crispin <john@phrozen.org>
+SUBTARGETS:=generic
 
 KERNEL_PATCHVER:=4.14
 
diff --git a/target/linux/ipq806x/generic/target.mk b/target/linux/ipq806x/generic/target.mk
new file mode 100644
index 0000000000..f5cb1fb19b
--- /dev/null
+++ b/target/linux/ipq806x/generic/target.mk
@@ -0,0 +1 @@
+BOARDNAME:=Generic
-- 
2.23.0.rc1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
