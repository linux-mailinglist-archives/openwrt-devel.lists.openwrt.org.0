Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B1D16EE9E
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Feb 2020 20:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YzVLeeMQsCqZlICKDEFae3+uhuPsJFix3Tgey7Wztkk=; b=JSmNUltJdByYsjeKz6Ce1Zypf8
	5Vx4UZcJg4YaNIF526Gu0xRukakKkLIdIMy2u1lWeuxiTKVn2K+ajzdJCqu94lluwpf4oj895pV3j
	9pAYMgF98swxeBq+N7oGTh4nPEJ4d0N8+c35+Ixb6pfG/XBszCFJUaO9RdZUp1UavpYyKg1KQ8vg1
	9ikhm4Y3CorvMOKAYEgiv+XqBZcowG3BpZiTvlIdm9HPqX8Xc8/Ht+V7ArNusda0xkHPCtMRNbVu3
	nuZ+Je+cWC4KZpIQ9EVZ3P0C2cm4WxcW47WWQOW6mA9sKzhJ3LVMe2ny/4oA3XMp/ibiFrkrCA+Wa
	MGhmyEsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6fZa-0006j0-V0; Tue, 25 Feb 2020 19:08:50 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6fYv-0006Bx-5v
 for openwrt-devel@lists.openwrt.org; Tue, 25 Feb 2020 19:08:13 +0000
Received: (wp-smtpd smtp.tlen.pl 16171 invoked from network);
 25 Feb 2020 20:08:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1582657682; bh=1yn96EMij3AQTCGhLrcmc4peHhoHvAoWdLYKVpy1Rsc=;
 h=From:To:Subject;
 b=BHN4xWzYiDhgfxVDkgwRcI/n3w6rTV/VmKL4DbX/GbF+rOtr+3DYHgSD7Q71WPp6F
 UBFTnOZnJJd5K/AVePLaadQpIEfjG8+qhmFKyXOUxRtX90h9sIFMqgqvMCoFIup+Bf
 6FSNs1IoF87LeCb7XiJtlW4wxJ//2KcK/7Vlwino=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 25 Feb 2020 20:08:02 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 25 Feb 2020 20:07:39 +0100
Message-Id: <20200225190741.113235-4-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200225190741.113235-1-tomek_n@o2.pl>
References: <20200225190741.113235-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 25895b12c21f9cc23f8eea9f949cd842
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [0RPE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_110809_377832_BCFD6FCD 
X-CRM114-Status: UNSURE (   6.96  )
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
Subject: [OpenWrt-Devel] [PATCH 4/6] layerscape: ls1012afrdm: introduce
 dynamic partitioning
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

Combine fixed sizes of "kernel" and "rootfs" partitions into one
partition managed by OpenWrt splitter, it will allow better management
of chip capacity and less maintenance burden when compiled kernel image
will outgrow allocated size for kernel partition. This also changes kernel
image format, since splitter only manages kernel and rootfs partitions,
the dtb needs to be updated with the kernel, so for convenience, kernel is
packed to FIT image.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 package/boot/uboot-layerscape/files/ls1012afrdm-uEnv.txt | 4 ++--
 target/linux/layerscape/armv8_64b/config-4.14            | 2 ++
 target/linux/layerscape/image/armv8_64b.mk               | 3 ++-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/package/boot/uboot-layerscape/files/ls1012afrdm-uEnv.txt b/package/boot/uboot-layerscape/files/ls1012afrdm-uEnv.txt
index 0f213d85e8..415155810e 100644
--- a/package/boot/uboot-layerscape/files/ls1012afrdm-uEnv.txt
+++ b/package/boot/uboot-layerscape/files/ls1012afrdm-uEnv.txt
@@ -2,7 +2,7 @@ fdtaddr=0x8f000000
 loadaddr=0x81000000
 fdt_high=0xffffffffffffffff
 initrd_high=0xffffffffffffffff
-qspi_boot=sf probe 0:0;sf read $fdtaddr f00000 100000;sf read $loadaddr 1000000 1000000;bootm $loadaddr - $fdtaddr
-bootargs=rootfstype=squashfs,jffs2 noinitrd earlycon=uart8250,mmio,0x21c0500 console=ttyS0,115200 mtdparts=1550000.quadspi:1m(bl2),4m(fip),1m(u-boot-env),4m(reserved-1),3m(pfe),2m(reserved-2),1m(dtb),16m(kernel),32m(rootfs)
+qspi_boot=sf probe 0:0;sf read $loadaddr 1000000 2800000;bootm $loadaddr
+bootargs=rootfstype=squashfs,jffs2 noinitrd earlycon=uart8250,mmio,0x21c0500 console=ttyS0,115200 mtdparts=1550000.quadspi:1m(bl2),4m(fip),1m(u-boot-env),4m(reserved-1),3m(pfe),2m(reserved-2),1m(dtb),-(firmware)
 bootcmd=echo starting OpenWrt ...;pfe stop;run qspi_boot
 bootdelay=3
diff --git a/target/linux/layerscape/armv8_64b/config-4.14 b/target/linux/layerscape/armv8_64b/config-4.14
index 54e6d4cd9d..c1bd718366 100644
--- a/target/linux/layerscape/armv8_64b/config-4.14
+++ b/target/linux/layerscape/armv8_64b/config-4.14
@@ -630,6 +630,8 @@ CONFIG_MTD_NAND_FSL_IFC=y
 CONFIG_MTD_SPI_NOR=y
 CONFIG_MTD_SPI_NOR_USE_4K_SECTORS=y
 CONFIG_MTD_SPI_NOR_USE_4K_SECTORS_LIMIT=16384
+CONFIG_MTD_SPLIT_FIRMWARE=y
+CONFIG_MTD_SPLIT_FIT_FW=y
 CONFIG_MTD_SST25L=y
 CONFIG_MTD_UBI=y
 CONFIG_MTD_UBI_BEB_LIMIT=20
diff --git a/target/linux/layerscape/image/armv8_64b.mk b/target/linux/layerscape/image/armv8_64b.mk
index 70af95aa28..3a7b28c416 100644
--- a/target/linux/layerscape/image/armv8_64b.mk
+++ b/target/linux/layerscape/image/armv8_64b.mk
@@ -32,8 +32,9 @@ define Device/ls1012afrdm
     ls-append $(1)-uboot-env.bin | pad-to 10M | \
     ls-append pfe.itb | pad-to 15M | \
     ls-append-dtb $$(DEVICE_DTS) | pad-to 16M | \
-    append-kernel | pad-to 32M | \
+    append-kernel | pad-to $$(BLOCKSIZE) | \
     append-rootfs | pad-rootfs | check-size 67108865
+  KERNEL := kernel-bin | gzip | fit gzip $$(DTS_DIR)/$$(DEVICE_DTS).dtb
   KERNEL_INITRAMFS := kernel-bin | fit none $$(DTS_DIR)/$$(DEVICE_DTS).dtb
 endef
 TARGET_DEVICES += ls1012afrdm
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
