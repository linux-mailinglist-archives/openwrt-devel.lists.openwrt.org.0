Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D2CE423B
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 05:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gG1nY+FYtjlDmrC2OxyT+z+2iDvJzmDSI+6nOnx4TlY=; b=a5vzdIgdEFSt0F
	IYxNu7XWjeQlOHe5YEstGtsg3ULV+o4GFSlwyi3KhWgm2QGkr5KX/ik9vrjRkBYhO028G+S/q/ilE
	4Rc0w+AI7PLd9Dr7D8CaBC1XuOGH1lHIOog1c87lAlqQydHVLcxv3I0m8Jf76SH77zGbMQ0xX3IF6
	48DBnauDPxu4vXo4vOlbvyedAPN8OG/25o1arCYt49TYpHSKad1q01xBaBfxTnmtLHtXoapcTYN4I
	r0Yxy5w0w5AQiTJzUkqhkCF7OpMhhrGhu88NhDbkYUPZh89PBsIfFBAU2ZBJU11Xsle/p/0Gd1aIA
	qLEWUZWq7w0VPlVP+EQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNqhc-0007lR-VN; Fri, 25 Oct 2019 03:55:53 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNqhT-0007ki-UF
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 03:55:45 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id C973459C40;
 Thu, 24 Oct 2019 20:55:12 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 24 Oct 2019 20:55:00 -0700
Message-Id: <20191025035501.3063-2-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191025035501.3063-1-lede@allycomm.com>
References: <20191025035501.3063-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_205543_978159_AAF556CA 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] ath79: Remove legacy GL.iNet GL-AR300M
 NAND target
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
Cc: "Marty E . Plummer" <hanetzer@startmail.com>,
 Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

Remove the sole board on the legacy ath79 NAND target
to clarify patches that will reintroduce support
on the MTD SPI-NAND framework present in Linux 4.19

Cc: Marty E. Plummer <hanetzer@startmail.com>

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 package/boot/uboot-envtools/files/ath79       |  1 -
 .../ath79/base-files/etc/board.d/01_leds      |  1 -
 .../dts/qca9531_glinet_gl-ar300m-nand.dts     | 34 -------------------
 target/linux/ath79/image/nand.mk              | 15 --------
 4 files changed, 51 deletions(-)
 delete mode 100644 target/linux/ath79/dts/qca9531_glinet_gl-ar300m-nand.dts

diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-envtools/files/ath79
index d5b94823fd..c0d131142d 100644
--- a/package/boot/uboot-envtools/files/ath79
+++ b/package/boot/uboot-envtools/files/ath79
@@ -17,7 +17,6 @@ alfa-network,ap121f|\
 buffalo,bhr-4grv2|\
 engenius,ecb1750|\
 glinet,gl-ar300m-lite|\
-glinet,gl-ar300m-nand|\
 glinet,gl-ar300m-nor|\
 librerouter,librerouter-v1|\
 netgear,ex6400|\
diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index 499fe0031c..5beba7665c 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -101,7 +101,6 @@ glinet,gl-ar150)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
 	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0" "0x02"
 	;;
-glinet,gl-ar300m-nand|\
 glinet,gl-ar300m-nor)
 	ucidef_set_led_netdev "lan" "LAN" "gl-ar300m:green:lan" "eth0"
 	;;
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-nand.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-nand.dts
deleted file mode 100644
index 26c30f2b72..0000000000
--- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-nand.dts
+++ /dev/null
@@ -1,34 +0,0 @@
-/dts-v1/;
-
-#include "qca9531_glinet_gl-ar300m.dtsi"
-
-/ {
-	compatible = "glinet,gl-ar300m-nand", "qca,qca9531";
-	model = "GL.iNet GL-AR300M (NAND)";
-};
-
-&spi {
-	num-cs = <1>;
-
-	flash@1 {
-		compatible = "spinand,mt29f";
-		reg = <1>;
-		spi-max-frequency = <25000000>;
-
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				label = "kernel";
-				reg = <0x000000 0x0200000>;
-			};
-
-			partition@1 {
-				label = "ubi";
-				reg = <0x200000 0x7e00000>;
-			};
-		};
-	};
-};
diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index db4ff9c6f0..e69de29bb2 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -1,15 +0,0 @@
-define Device/glinet_gl-ar300m-nand
-  ATH_SOC := qca9531
-  DEVICE_VENDOR := GL.iNet
-  DEVICE_MODEL := GL-AR300M
-  DEVICE_VARIANT := NAND
-  DEVICE_PACKAGES := kmod-usb2 kmod-usb-storage kmod-usb-ledtrig-usbport
-  KERNEL_SIZE := 2048k
-  BLOCKSIZE := 128k
-  PAGESIZE := 2048
-  VID_HDR_OFFSET := 512
-  IMAGES += factory.ubi
-  IMAGE/sysupgrade.bin := sysupgrade-tar
-  IMAGE/factory.ubi := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
-endef
-TARGET_DEVICES += glinet_gl-ar300m-nand
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
