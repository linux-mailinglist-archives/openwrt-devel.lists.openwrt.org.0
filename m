Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D729B159
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 15:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AlrLSgt+5fWkL/fMMKufm6PoH6d6+UEZOOViJqMQFlg=; b=Xmr6YeV9OuzGtt
	gMur+XLc1GiXdKusai2c3u3IflqwV5GR6DNpLzO48dKNkNf5QYL7KR7gDdhGDF46SV1A9JGuRqm5J
	ANH2vsdMArTfP8fdkT+bfRmVMUUBvCFeyNq9nrrCRB/673eqvsiqcvmOaYPgc/9hyV3iFN0O9EnVP
	55VICwYGT+liSYaA/wKu8oFoVD6J4ryJB4OMBSRvwMidmYx39vy/IqxlQjOkOwtyPRj98y9WE6vjl
	xOk6Kn+nczpLbDLzhhmXOoBWh7Sp1ZOd0L5wFcjcRSqL9tJd3h0q9nT3bG/+kovrchV9Ibi+rHWgX
	2xbv7u8e0oFG8/6qPEoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i19z4-00088l-LB; Fri, 23 Aug 2019 13:52:06 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i19y9-0006ga-GJ
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 13:51:11 +0000
Received: (wp-smtpd smtp.tlen.pl 23405 invoked from network);
 23 Aug 2019 15:51:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1566568267; bh=utW7UMs24/06oAmwQRQPre/27HUR2sg206Cph41bvu8=;
 h=From:To:Cc:Subject;
 b=LxMaqIrvTFtaGy6kmhjOFxC5d55VZA4funMVoLNss/xCeMhL5MgZ5h1Kpl/uD1/4s
 x5p39qR8dnFdJ2xN72LY3zsxX6xrmCrTfO4xgdS9s2kKw57TF64Y0WhWtxyI2Nuguq
 dNgFN3iq2bDvmw4CidO5nWvPG+NcSDs9txQYd1Is=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 23 Aug 2019 15:51:07 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 23 Aug 2019 15:50:52 +0200
Message-Id: <20190823135052.2305-8-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823135052.2305-1-tomek_n@o2.pl>
References: <20190823135052.2305-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 20b2d9dd2ad466028a24983db3a366b9
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [0WMl]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_065109_727201_B6C0ADFE 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 7/7] ath79: image: disable sysupgrade
 images for routerstations and ja76pf2
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
Cc: Matt Merhar <mattmerhar@protonmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Because a bug in handling partial erase blocks in 4.19 kernel, using
sysupgrade images will hard brick devices that use RedBoot bootloader
and have "FIS directory" with "RedBoot config" on the same erase block.
Since flashing the devices from bootloader is safe, and to not cause a
situation where external chip programmer or JTAG is needed, disable
sysupgrade images for affected boards while creating kernel.bin and
rootfs.bin for jjPlus JA76PF2 board, which doesn't have factory image.

To set up the JA76PF2 board follow "Installation" instructions in b3a0c97
("ath79: add support for jjPlus JA76PF2") except the part of loading
initramfs image and using sysupgrade image for flashing (point 6 and 7).
Enter following commands to flash the board from bootloader:
  fis init
  load -r -b 0x80060000 <openwrt_kernel_image_name>
  fis create linux
  load -r -b %{FREEMEMLO} <openwrt_rootfs_image_name>
  fis create rootfs
  fis load -l linux
  exec -c ""

For RouterStations use TFTP recovery procedure.

Ref: FS#2428
Cc: Matt Merhar <mattmerhar@protonmail.com>
Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/ath79/image/generic-ubnt.mk | 4 +---
 target/linux/ath79/image/generic.mk      | 5 +++--
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index c696aac3a8..368da8e01b 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -208,10 +208,8 @@ define Device/ubnt_routerstation_common
   DEVICE_VENDOR := Ubiquiti
   ATH_SOC := ar7161
   IMAGE_SIZE := 16128k
-  IMAGES += factory.bin
+  IMAGES := factory.bin
   IMAGE/factory.bin := append-rootfs | pad-rootfs | mkubntimage | check-size $$$$(IMAGE_SIZE)
-  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | combined-image | append-metadata | check-size $$$$(IMAGE_SIZE)
-#  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | sysupgrade-tar rootfs=$$$$@ | append-metadata
   KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
   KERNEL_INITRAMFS := kernel-bin | append-dtb
 endef
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index b4e709de3e..eca1f80947 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -643,8 +643,9 @@ define Device/jjplus_ja76pf2
   DEVICE_VENDOR := jjPlus
   DEVICE_MODEL := JA76PF2
   DEVICE_PACKAGES += -kmod-ath9k -swconfig -wpad-mini -uboot-envtools fconfig
-  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | combined-image | append-metadata | check-size $$$$(IMAGE_SIZE)
-#  IMAGE/sysupgrade.bin := append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | sysupgrade-tar rootfs=$$$$@ | append-metadata
+  IMAGES := kernel.bin rootfs.bin
+  IMAGE/kernel.bin := append-kernel
+  IMAGE/rootfs.bin := append-rootfs | pad-rootfs
   KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
   KERNEL_INITRAMFS := kernel-bin | append-dtb
   IMAGE_SIZE := 16000k
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
