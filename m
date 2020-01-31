Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B88414F016
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 16:48:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+lK/2jEOmgmP10dNjs5eneSa03F3B0VoTVTiiKobzD0=; b=r0mCh6UbCEwdaO
	Wj9OmMAQAweVMWjeO+KoF31C6Ss5nvBCxxqTviIxS5r6I88ULvrqvBqU6j47vhZYNZ1L+J0E9oSmf
	Cl25K12DGJEcI/ZiaGmo4F+aidxD6GY6K4v4UrhYemEHN+euas8H427tqyqn0J+Mc7R9PrtjUTng/
	PfJz6t7ip7kVEc68+6EzvSgdI79QCX2pFGL5vIiYoZY/v4GdNu0fv/PAmEk52r68Wup/nz2xu2r5Y
	VG6R/ZY75GBb377kgHps8+z+A6rSBCF7m63ESdpXO1sGgUP6ciy+yUr44aC2uYnk2ErMjp0070j7p
	QHk7Mn6ev5i3SV3hOhKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYX9-0008Df-D2; Fri, 31 Jan 2020 15:48:39 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYVg-0006SS-1T
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 15:47:09 +0000
Received: (wp-smtpd smtp.tlen.pl 390 invoked from network);
 31 Jan 2020 16:47:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1580485625; bh=rx3j1IGHK3LSvY9nuznWjTfQdECZ1CNXD2me12ExbQk=;
 h=From:To:Cc:Subject;
 b=ilttaX+kiiRe2Sm3PUCePZxiJk8iVZmh5LryTHVIzCVtnWmzmroHLoug9Ddj7SGaI
 kvHzH+sucD2zaRGXE2IKqw7VWN0U2B9SMdcRtAWBemylOeRxx5rvjlE5JqZF+FtEaA
 aCNquBUbLOe77azVnlU77D0/z0MkqDdycozowEc8=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Jan 2020 16:47:02 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 31 Jan 2020 16:46:19 +0100
Message-Id: <20200131154620.25773-8-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131154620.25773-1-tomek_n@o2.pl>
References: <20200131154620.25773-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: afefead1ea2139e97936ceb5d99599e2
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [gSMy]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_074708_278518_973B7688 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 7/8] mvebu: uDPU: drop patch compiling dtb
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
Cc: Scott Roberts <ttocsr@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

If device recipe has specified DEVICE_DTS variable, the dtb is built
anyway by OpenWrt buildroot image rules. Drop the patch and adjust the
location of compiled dtb.

Cc: Scott Roberts <ttocsr@gmail.com>
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/image/cortexa53.mk                  |  2 +-
 .../patches-4.19/530-add_armada-3820-uDPU-dts.patch    | 10 ----------
 2 files changed, 1 insertion(+), 11 deletions(-)
 delete mode 100644 target/linux/mvebu/patches-4.19/530-add_armada-3820-uDPU-dts.patch

diff --git a/target/linux/mvebu/image/cortexa53.mk b/target/linux/mvebu/image/cortexa53.mk
index 987d904597..77f5c79972 100644
--- a/target/linux/mvebu/image/cortexa53.mk
+++ b/target/linux/mvebu/image/cortexa53.mk
@@ -60,7 +60,7 @@ define Device/methode_udpu
   DEVICE_MODEL := micro-DPU (uDPU)
   DEVICE_DTS := armada-3720-uDPU
   KERNEL_LOADADDR := 0x00080000
-  KERNEL_INITRAMFS := kernel-bin | gzip | fit gzip $$(DTS_DIR)/$$(DEVICE_DTS).dtb
+  KERNEL_INITRAMFS := kernel-bin | gzip | fit gzip $$(KDIR)/image-$$(DEVICE_DTS).dtb
   KERNEL_INITRAMFS_SUFFIX := .itb
   DEVICE_PACKAGES += f2fs-tools fdisk kmod-i2c-pxa
   IMAGE_NAME = $$(IMAGE_PREFIX)-$$(2)
diff --git a/target/linux/mvebu/patches-4.19/530-add_armada-3820-uDPU-dts.patch b/target/linux/mvebu/patches-4.19/530-add_armada-3820-uDPU-dts.patch
deleted file mode 100644
index bd4f0aef9a..0000000000
--- a/target/linux/mvebu/patches-4.19/530-add_armada-3820-uDPU-dts.patch
+++ /dev/null
@@ -1,10 +0,0 @@
---- a/arch/arm64/boot/dts/marvell/Makefile
-+++ b/arch/arm64/boot/dts/marvell/Makefile
-@@ -2,6 +2,7 @@
- # Mvebu SoC Family
- dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-db.dtb
- dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin.dtb
-+dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-uDPU.dtb
- dtb-$(CONFIG_ARCH_MVEBU) += armada-7040-db.dtb
- dtb-$(CONFIG_ARCH_MVEBU) += armada-8040-db.dtb
- dtb-$(CONFIG_ARCH_MVEBU) += armada-8040-mcbin.dtb
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
