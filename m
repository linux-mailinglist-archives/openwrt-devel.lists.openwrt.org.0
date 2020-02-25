Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 426E516EE9F
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Feb 2020 20:09:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KOudRBoRGg2ntJyYSK0AFsDeWSx7HBrh0tmYR7KQBhc=; b=hLpw+Mlhzf29cmxdJ324k9SjzE
	3lDcuLYKV0Rllo5tF4AlhELAk6iRIL5UB03yupCr9aObT+R248GkOzY4nnDAePqITkboZPJaHFVCA
	7Fbf/n6izzNSGVDoy5VsySanPMZxFh5tQ2DsVZmk0AfVKVUIlpvp61XbLftZIhuWcDuu82MUyq7wU
	oT0oSiJ/141e6AAaASYVKmY/OjyuYG/RoE4oyJ4uCQqvp1BlSpLimfHNDfxSfEtQQbpl2YUsOF+wp
	+O1IkN/+k35tyC9ON9dKSJIyDM1jf7Rsw5hv9f4k+PzeH2jfzMVYgJu/l3dfoGVTzwSZgfaIi9SM2
	0vesAPzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6fZm-00070G-PL; Tue, 25 Feb 2020 19:09:02 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6fYu-0006C2-Mh
 for openwrt-devel@lists.openwrt.org; Tue, 25 Feb 2020 19:08:13 +0000
Received: (wp-smtpd smtp.tlen.pl 14277 invoked from network);
 25 Feb 2020 20:08:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1582657681; bh=GUH2E6jlKbzV90Pe4dFVVk48c25rx1M/tKQad0w0aPE=;
 h=From:To:Subject;
 b=PlPJJv2LIIkKpl3XKIbfHFskWk7/+ETD5U53X8WJ/df0oy9WAI+Q71+A55fG6d8Tg
 Fcebmb5SvdAQOPPfXORrlcJNyK0KFtMCDyxELGrJRBXHjU/34JaXXt68gculX0sB4U
 nWxXVz0EOHDRktBa2tiON0kNT89QgiRGIUgxxBVI=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 25 Feb 2020 20:08:01 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 25 Feb 2020 20:07:38 +0100
Message-Id: <20200225190741.113235-3-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200225190741.113235-1-tomek_n@o2.pl>
References: <20200225190741.113235-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: b5ce24a58af728df79a383ab3055bfd9
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [USN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_110809_088924_CACCCE48 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 3/6] layerscape: ls1012afrdm: convert image
 to squashfs
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

This commit replaces UBIFS root partition with squashfs+overlay. It's
preparation for introducing dynamic partitioning.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 package/boot/uboot-layerscape/files/ls1012afrdm-uEnv.txt | 2 +-
 target/linux/layerscape/image/armv8_64b.mk               | 5 ++---
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/package/boot/uboot-layerscape/files/ls1012afrdm-uEnv.txt b/package/boot/uboot-layerscape/files/ls1012afrdm-uEnv.txt
index ccc98dd299..0f213d85e8 100644
--- a/package/boot/uboot-layerscape/files/ls1012afrdm-uEnv.txt
+++ b/package/boot/uboot-layerscape/files/ls1012afrdm-uEnv.txt
@@ -3,6 +3,6 @@ loadaddr=0x81000000
 fdt_high=0xffffffffffffffff
 initrd_high=0xffffffffffffffff
 qspi_boot=sf probe 0:0;sf read $fdtaddr f00000 100000;sf read $loadaddr 1000000 1000000;bootm $loadaddr - $fdtaddr
-bootargs=ubi.mtd=8 root=ubi0:rootfs rw rootfstype=ubifs noinitrd earlycon=uart8250,mmio,0x21c0500 console=ttyS0,115200 mtdparts=1550000.quadspi:1m(bl2),4m(fip),1m(u-boot-env),4m(reserved-1),3m(pfe),2m(reserved-2),1m(dtb),16m(kernel),32m(ubifs)
+bootargs=rootfstype=squashfs,jffs2 noinitrd earlycon=uart8250,mmio,0x21c0500 console=ttyS0,115200 mtdparts=1550000.quadspi:1m(bl2),4m(fip),1m(u-boot-env),4m(reserved-1),3m(pfe),2m(reserved-2),1m(dtb),16m(kernel),32m(rootfs)
 bootcmd=echo starting OpenWrt ...;pfe stop;run qspi_boot
 bootdelay=3
diff --git a/target/linux/layerscape/image/armv8_64b.mk b/target/linux/layerscape/image/armv8_64b.mk
index c2e091fb2a..70af95aa28 100644
--- a/target/linux/layerscape/image/armv8_64b.mk
+++ b/target/linux/layerscape/image/armv8_64b.mk
@@ -23,9 +23,8 @@ define Device/ls1012afrdm
     tfa-ls1012afrdm \
     kmod-ppfe
   DEVICE_DTS := freescale/fsl-ls1012a-frdm
-  UBINIZE_OPTS := -E 5
   BLOCKSIZE := 256KiB
-  PAGESIZE := 1
+  FILESYSTEMS := squashfs
   IMAGE/firmware.bin := \
     ls-clean | \
     ls-append $(1)-bl2.pbl | pad-to 1M | \
@@ -34,7 +33,7 @@ define Device/ls1012afrdm
     ls-append pfe.itb | pad-to 15M | \
     ls-append-dtb $$(DEVICE_DTS) | pad-to 16M | \
     append-kernel | pad-to 32M | \
-    append-ubi | check-size 67108865
+    append-rootfs | pad-rootfs | check-size 67108865
   KERNEL_INITRAMFS := kernel-bin | fit none $$(DTS_DIR)/$$(DEVICE_DTS).dtb
 endef
 TARGET_DEVICES += ls1012afrdm
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
