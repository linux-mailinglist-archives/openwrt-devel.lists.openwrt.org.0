Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A42B10C55
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 May 2019 19:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vpV8VoCOA+OLOjOSbAsL8cBUdhrWuHBHQk3Z54bFFtE=; b=UPUFPJiz7Rf50U4DV8jlfv4ttG
	K9psqFPQQlaWx1tvTTXqxweenzv4IUXoYcR6bwEyIZVA9uQWJxgX1dcLBieIHN/LB4saJzL+za5i3
	2Crg4U0L4XAEOdJD8X5cf6mkqY4BccsaTvhXKQb2NqzML44/CxUxei8Ph7c/C4wz5mLBhIrmonHTB
	gCVyoA1lL5q86XTUIkRGqp14gDbW3XSHPEIj7FE87KkIfNme65TkEHXjjLnk5GJGQ2OHdrpmTiL27
	rPSwajAtXppGkA8qjSmFkoaY3C8j6tW2rgCJJnnFY6I6ehHAcZq4pcRS4IsupetWyzVl1LeyNMnNA
	dnc99apA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtGz-0000i9-Bk; Wed, 01 May 2019 17:44:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtGC-00088q-U7
 for openwrt-devel@bombadil.infradead.org; Wed, 01 May 2019 17:43:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G48nnIH+5TUYc3AgxNUkbPqqiq9fr6cdwo0GgU6d7M0=; b=oLSAgUHtR7Nn9EhCVehdg+Eq1I
 9Gkir70dtkogRAM7vt2aEaSfzAuKIspkhg6A5+CARs4T+E/I7rLQYsHE7v4doafYMQRFOePqNbFVE
 WsaARwtKFiXJL5c/kGR1lqzsxY9uwpdeCDqWuOAiaxmpJmLr9tUsFj92xUQNclTPhPgFnas4z0X9e
 Xe5H2YQP92SDWbgVzRlOXgjRrwqhctfB/5A5E+jX7Ifuw6HewWGxomMcrtP6SAqNKynljYHXfCxzp
 W/93TECggxtL06iaAfhuAupPZr9aQQVJuzaHMo/j3BJJsD0vu1+ymw6p5fT8GisMscPijkSWsVRYr
 O++CESlA==;
Received: from mx-out.tlen.pl ([193.222.135.175])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtG9-0006P4-76
 for openwrt-devel@lists.openwrt.org; Wed, 01 May 2019 17:43:11 +0000
Received: (wp-smtpd smtp.tlen.pl 2802 invoked from network);
 1 May 2019 19:42:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1556732556; bh=G48nnIH+5TUYc3AgxNUkbPqqiq9fr6cdwo0GgU6d7M0=;
 h=From:To:Subject;
 b=HO8Irq5KmQD/iF7oqJiHrvV3kKnjYVl0EjLQ2iCz3YcQKcj2PRSGfHIf1yR1hrYyf
 E3RkBI69lmPcFIcpkoBLgRJkRFiwgi/QOWon+Ovqp8HW+wZBkXJr9lIdHyfu0VIPM5
 uONLq7ZNGRhep9Ox1gjf/aRJklE3l0u4Ke1GnjSA=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 1 May 2019 19:42:35 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 May 2019 19:42:21 +0200
Message-Id: <20190501174224.19089-6-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190501174224.19089-1-tomek_n@o2.pl>
References: <20190501174224.19089-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 6e761a0c9e808a4eeb29e0064eb58b23
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [4ZMU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_184309_375866_224BDF26 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.222.135.175 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 5/8] mvebu: image: don't create
 unnecessarily shell variables
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Use make syntax to pass the U-Boot image location and boot and root
partitions size, instead of relying on shell functions and variables.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/image/Makefile              | 18 ++++++------------
 .../linux/mvebu/image/gen_mvebu_sdcard_img.sh  |  4 ++--
 2 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index 4a1a85d681..240cc88642 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -42,25 +42,19 @@ define Build/boot-img-ext4
 endef
 
 define Build/sdcard-img
-	if [ -n "$(UBOOT)" ]; then UBOOT="$(STAGING_DIR_IMAGE)/$(UBOOT)"; fi; \
-	BOOTFS_SIZE=$$(( $(CONFIG_TARGET_KERNEL_PARTSIZE) * 1024 * 2 )); \
-	ROOTFS_SIZE=$$(( $(CONFIG_TARGET_ROOTFS_PARTSIZE) * 1024 * 2 )); \
 	SIGNATURE="$(SIGNATURE)" \
 	./gen_mvebu_sdcard_img.sh $@ \
-		$$UBOOT \
-		c $$BOOTFS_SIZE $@.boot \
-		83 $$ROOTFS_SIZE $(IMAGE_ROOTFS)
+		$(if $(UBOOT),$(STAGING_DIR_IMAGE)/$(UBOOT)) \
+		c $(CONFIG_TARGET_KERNEL_PARTSIZE) $@.boot \
+		83 $(CONFIG_TARGET_ROOTFS_PARTSIZE) $(IMAGE_ROOTFS)
 endef
 
 define Build/sdcard-img-ext4
-	if [ -n "$(UBOOT)" ]; then UBOOT="$(STAGING_DIR_IMAGE)/$(UBOOT)"; fi; \
-	BOOTFS_SIZE=$$(( $(CONFIG_TARGET_KERNEL_PARTSIZE) * 1024 * 2 )); \
-	ROOTFS_SIZE=$$(( $(CONFIG_TARGET_ROOTFS_PARTSIZE) * 1024 * 2 )); \
 	SIGNATURE="$(SIGNATURE)" \
 	./gen_mvebu_sdcard_img.sh $@ \
-		$$UBOOT \
-		83 $$BOOTFS_SIZE $@.bootimg \
-		83 $$ROOTFS_SIZE $(IMAGE_ROOTFS)
+		$(if $(UBOOT),$(STAGING_DIR_IMAGE)/$(UBOOT)) \
+		83 $(CONFIG_TARGET_KERNEL_PARTSIZE) $@.bootimg \
+		83 $(CONFIG_TARGET_ROOTFS_PARTSIZE) $(IMAGE_ROOTFS)
 endef
 
 define Build/omnia-medkit-initramfs
diff --git a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
index 67416ed80c..e0230e48b6 100755
--- a/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
+++ b/target/linux/mvebu/image/gen_mvebu_sdcard_img.sh
@@ -18,7 +18,7 @@
 #
 
 usage() {
-	echo "$0 <outfile> [<bootloader> <type_partitionN> <sectors_partitionN> <img_partitionN>]?"
+	echo "$0 <outfile> [<bootloader> <type_partitionN> <size_partitionN> <img_partitionN>]?"
 }
 
 # always require first 2 or 3 arguments
@@ -46,7 +46,7 @@ dd if=/dev/zero of="$OUTFILE" bs=512 count=1 >/dev/null
 printf "Done\n"
 
 while [ "$#" -ge 3 ]; do
-	ptgen_args="$ptgen_args -t $1 -p $(($2 / 2 + 256))"
+	ptgen_args="$ptgen_args -t $1 -p $(($2 * 1024 + 256))"
 	parts="$parts$3 "
 	shift; shift; shift
 done
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
