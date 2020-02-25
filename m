Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883C616EEA0
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Feb 2020 20:09:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fOY97gbDlo8oSoHM6lX9YCajFWyNSJ41ZxUyT6NBS+U=; b=ZsG+6flQrmvz11K+KdyVmRBqtQ
	ys/fBYDeUrWr1rfNCjQvdM/81jXqHl3jT4VWQcCb4Flgk4u+DKcmAievpxo/OvnfnU3oyQEjjTyAw
	ROHaAoJUAxwlh80ryby03Gh/IVRjvG+JvEdUiOE4zHZ8estchh39Uu/Xa9mJjo2iBySud5XZLRhpQ
	BHCegNW+eD2eGp3aKdZpq1/5rV488LGzo+utpn5alUHpnZiQ9xh6CJ0nj4pVUEWDiAUTIXDgYEo45
	LOZEGFRAASs3FMwVR6a6uApP7FiMQ1AcJNWBQqxNSO9NqW6xWLFRZWovCQCiql66FyKceCtxPGBSx
	JpPWKenw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6fZv-0007GJ-6z; Tue, 25 Feb 2020 19:09:11 +0000
Received: from mx-out.tlen.pl ([193.222.135.145])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6fYv-0006C0-6z
 for openwrt-devel@lists.openwrt.org; Tue, 25 Feb 2020 19:08:13 +0000
Received: (wp-smtpd smtp.tlen.pl 18801 invoked from network);
 25 Feb 2020 20:08:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1582657683; bh=T6gsVpXwruTOGe9/SeP+uW58rtl6L63cr1QyUmKaOnI=;
 h=From:To:Subject;
 b=tTYNqA4Cx9BgYRRXSUcB0DDgOIxv00kO6uWzxl9WNCm5mRa5WzUPQkatBcXPp6JAb
 Pi4sxbCLGOAB4Wsw6CnU6yJjUVA4wl8++OT1HZkPGAXwKzIQ37QpWAKJjlsVucDbeR
 T2Zf3LOrLVSER7b1XrMSE9tN3Um2qMvGOttPyPbI=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 25 Feb 2020 20:08:03 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 25 Feb 2020 20:07:40 +0100
Message-Id: <20200225190741.113235-5-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200225190741.113235-1-tomek_n@o2.pl>
References: <20200225190741.113235-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 51119028f4246391d829fa01f1c798c3
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [wUN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_110809_411485_84885B98 
X-CRM114-Status: UNSURE (   6.57  )
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
Subject: [OpenWrt-Devel] [PATCH 5/6] layerscape: ls10121frdm: add sysupgrade
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

Instead of dangerous rewriting full chip with firmware.bin image to
update OpenWrt, add sysupgrade image. This image will be used to update
kernel and rootfs, leaving bootloader intact and making recovery
possible, without resorting to external hardware tools.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/layerscape/base-files/lib/upgrade/platform.sh | 7 +++++++
 target/linux/layerscape/image/armv8_64b.mk                 | 4 ++++
 2 files changed, 11 insertions(+)

diff --git a/target/linux/layerscape/base-files/lib/upgrade/platform.sh b/target/linux/layerscape/base-files/lib/upgrade/platform.sh
index c7b9b06cfe..a2ee81cf3a 100644
--- a/target/linux/layerscape/base-files/lib/upgrade/platform.sh
+++ b/target/linux/layerscape/base-files/lib/upgrade/platform.sh
@@ -32,6 +32,9 @@ platform_check_image() {
 		nand_do_platform_check "traverse-ls1043" $1
 		return $?
 		;;
+	fsl,ls1012a-frdm)
+		return 0
+		;;
 	*)
 		echo "Sysupgrade is not currently supported on $board"
 		;;
@@ -51,6 +54,10 @@ platform_do_upgrade() {
 	traverse,ls1043s)
 		platform_do_upgrade_traverse_nandubi "$1"
 		;;
+	fsl,ls1012a-frdm)
+		PART_NAME=firmware
+		default_do_upgrade "$1"
+		;;
 	*)
 		echo "Sysupgrade is not currently supported on $board"
 		;;
diff --git a/target/linux/layerscape/image/armv8_64b.mk b/target/linux/layerscape/image/armv8_64b.mk
index 3a7b28c416..bd7055b3ee 100644
--- a/target/linux/layerscape/image/armv8_64b.mk
+++ b/target/linux/layerscape/image/armv8_64b.mk
@@ -25,6 +25,7 @@ define Device/ls1012afrdm
   DEVICE_DTS := freescale/fsl-ls1012a-frdm
   BLOCKSIZE := 256KiB
   FILESYSTEMS := squashfs
+  IMAGES += sysupgrade.bin
   IMAGE/firmware.bin := \
     ls-clean | \
     ls-append $(1)-bl2.pbl | pad-to 1M | \
@@ -34,8 +35,11 @@ define Device/ls1012afrdm
     ls-append-dtb $$(DEVICE_DTS) | pad-to 16M | \
     append-kernel | pad-to $$(BLOCKSIZE) | \
     append-rootfs | pad-rootfs | check-size 67108865
+  IMAGE/sysupgrade.bin := append-kernel | pad-to $$(BLOCKSIZE) | \
+	append-rootfs | pad-rootfs | check-size 50331648 | append-metadata
   KERNEL := kernel-bin | gzip | fit gzip $$(DTS_DIR)/$$(DEVICE_DTS).dtb
   KERNEL_INITRAMFS := kernel-bin | fit none $$(DTS_DIR)/$$(DEVICE_DTS).dtb
+  SUPPORTED_DEVICES := fsl,ls1012a-frdm
 endef
 TARGET_DEVICES += ls1012afrdm
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
