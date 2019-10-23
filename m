Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A78E17AC
	for <lists+openwrt-devel@lfdr.de>; Wed, 23 Oct 2019 12:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xZNwwv5/6tYow/7w8iTinGw4tvtI9hx2KFzkUzqrjXo=; b=nA3blw3OShyXtsapkBdyTvjJjh
	XHRStBWjIVqWp0IU5M8zocZxsOVnNiP/pl3b3ZzwDdd4QlkXNX+RLU8EVfwS0F7AcgtbuLlnesLAA
	CjA/SRZK6oZG0X/j+Xkcibpd1aZ7kZYOqDZgloUhpmBSwb9pc96MSo3VLnJkstwBMYmcwqHISlmvv
	NZp2s8lfz3hPsLfWZA+MGOKFrWLD2mPsM5R2im68dhWiunTdQYfzBdZxxzD733uNkDpDhYDxbHGC0
	UBcA/8yTeP8SkknMDdjpjGeNHA9shIAVGpljciiNHYTFgQx9WF4SWzn0UGmbSXq9oAKy7nfunEAgi
	KR0nR3Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDhj-0001fp-4U; Wed, 23 Oct 2019 10:17:23 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDfw-00088S-ES
 for openwrt-devel@lists.openwrt.org; Wed, 23 Oct 2019 10:15:35 +0000
Received: from dbauer-t470.tu-darmstadt.de (unknown
 [IPv6:2001:41b8:83c:fa01:5d47:84e4:b335:6505])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id CD266225E5
 for <openwrt-devel@lists.openwrt.org>; Wed, 23 Oct 2019 12:15:27 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 23 Oct 2019 12:15:19 +0200
Message-Id: <20191023101519.189926-2-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191023101519.189926-1-mail@david-bauer.net>
References: <20191023101519.189926-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_031532_930416_74EEA691 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: add support for Aerohive HiveAP
 121
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

This commit adds support for the Aerohive HiveAP-121. It was previously
already supported in the ar71xx subtarget.

The following is copied from the commit which added ar71xx support:

Specification:
- SoC: Atheros AR9344-BC2A at 560MHz
- WiFi 1: 2.4GHz Atheros AR9340? - SoC
- WiFi 2: 5.0GHz Atheros AR9382-AL1A
- Memory: 128MB from 2x Nanya NT5TU32M16DG-AC
- SPI: 1MB Macronix MX25L8006E
- NAND: 128MB Hynix H27U1G8F2BTR-BC
- Ethernet: Atheros AR8035-A
- USB: 1x 2.0
- TPM: Atmel SC3204

Flashing:
1. Hook into UART (9600 baud) and enter U-Boot. You may need to enter
a password of administrator or AhNf?d@ta06 if prompted.
2. Once in U-Boot, download and flash LEDE factory image over tftp:

dhcp;
setenv serverip tftp-server-ip;
tftpboot 0x81000000 lede-ar71xx-nand-hiveap-121-squashfs-factory.bin;
nand erase 0x800000 0x800000;
nand write 0x81000000 0x800000 0x800000;
reset;

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../ath79/base-files/etc/board.d/02_network   |   1 +
 .../ath79/base-files/lib/upgrade/platform.sh  |   3 +
 .../ath79/dts/ar9344_aerohive_hiveap-121.dts  | 237 ++++++++++++++++++
 target/linux/ath79/image/nand.mk              |  17 ++
 target/linux/ath79/nand/config-default        |   8 +-
 5 files changed, 264 insertions(+), 2 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar9344_aerohive_hiveap-121.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index c40c07a906..13070a287b 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -11,6 +11,7 @@ ath79_setup_interfaces()
 	case "$board" in
 	adtran,bsap1800-v2|\
 	adtran,bsap1840|\
+	aerohive,hiveap-121|\
 	alfa-network,ap121f|\
 	aruba,ap-105|\
 	avm,fritz300e|\
diff --git a/target/linux/ath79/base-files/lib/upgrade/platform.sh b/target/linux/ath79/base-files/lib/upgrade/platform.sh
index 10756abbaf..e66395f0bc 100644
--- a/target/linux/ath79/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ath79/base-files/lib/upgrade/platform.sh
@@ -44,6 +44,9 @@ platform_do_upgrade() {
 	adtran,bsap1840)
 		redboot_fis_do_upgrade "$1" vmlinux_2
 		;;
+	aerohive,hiveap-121)
+		nand_do_upgrade "$1"
+		;;
 	jjplus,ja76pf2)
 		echo "Sysupgrade disabled due bug FS#2428"
 		;;
diff --git a/target/linux/ath79/dts/ar9344_aerohive_hiveap-121.dts b/target/linux/ath79/dts/ar9344_aerohive_hiveap-121.dts
new file mode 100644
index 0000000000..d757b21e8b
--- /dev/null
+++ b/target/linux/ath79/dts/ar9344_aerohive_hiveap-121.dts
@@ -0,0 +1,237 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar9344.dtsi"
+
+/ {
+	compatible = "aerohive,hiveap-121", "qca,ar9344";
+	model = "Aerohive HiveAP 121";
+
+	aliases {
+		led-boot = &power_white;
+		led-failsafe = &power_orange;
+		led-running = &power_white;
+		led-upgrade = &power_orange;
+		label-mac-device = &eth0;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,9600";
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "Reset button";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 4 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		power_orange: power_orange {
+			label = "hiveap-121:orange:power";
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+		};
+
+		power_white: power_white {
+			label = "hiveap-121:white:power";
+			gpios = <&gpio 21 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	i2c {
+		compatible = "i2c-gpio";
+		gpios = <&gpio 13 GPIO_ACTIVE_HIGH /* sda */
+			 &gpio 12 GPIO_ACTIVE_HIGH /* scl */
+			>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		tpm@29 {
+			compatible = "atmel,at97sc3204t";
+			reg = <0x29>;
+		};
+	};
+};
+
+&ref {
+	clock-frequency = <40000000>;
+};
+
+&uart {
+	status = "okay";
+};
+
+&gpio {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&jtag_disable_pins>;
+
+	gpio_ext_lna0 {
+		gpio-hog;
+		gpios = <20 0>;
+		output-low;
+		line-name = "hiveap-121:ext:lna0";
+	};
+
+	gpio_ext_lna1 {
+		gpio-hog;
+		gpios = <19 0>;
+		output-low;
+		line-name = "hiveap-121:ext:lna1";
+	};
+
+	gpio_usb_power {
+		gpio-hog;
+		gpios = <15 0>;
+		output-high;
+		line-name = "hiveap-121:power:usb";
+	};
+};
+
+&usb {
+	status = "okay";
+};
+
+&usb_phy {
+	status = "okay";
+};
+
+&pcie {
+	status = "okay";
+
+	wifi@0,0 {
+		compatible = "pci168c,0030";
+		reg = <0x0000 0 0 0 0>;
+		
+		mtd-mac-address = <&hw_info 0x0>;
+		mtd-mac-address-increment = <2>;
+	};
+};
+
+&spi {
+	status = "okay";
+	num-cs = <1>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <25000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x000000 0x80000>;
+				read-only;
+			};
+
+			partition@80000 {
+				label = "u-boot-env";
+				reg = <0x80000 0x10000>;
+				read-only;
+			};
+
+			hw_info: partition@90000 {
+				label = "hw-info";
+				reg = <0x90000 0x10000>;
+				read-only;
+			};
+
+			partition@a0000 {
+				label = "boot-info";
+				reg = <0xa0000 0x10000>;
+				read-only;
+			};
+
+			partition@b0000 {
+				label = "boot-sinfo";
+				reg = <0xb0000 0x10000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&wmac {
+	status = "okay";
+
+	mtd-mac-address = <&hw_info 0x0>;
+	mtd-mac-address-increment = <1>;
+};
+
+&nand {
+	status = "okay";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "u-boot1";
+			reg = <0x0 0x400000>;
+			read-only;
+		};
+
+		partition@400000 {
+			label = "u-boot-env1";
+			reg = <0x400000 0x400000>;
+			read-only;
+		};
+
+		partition@800000 {
+			label = "kernel";
+			reg = <0x800000 0x500000>;
+		};
+
+		partition@d00000 {
+			label = "ubi";
+			reg = <0xd00000 0x6f00000>;
+		};
+
+		partition@2e00000 {
+			label = "wifi-info";
+			reg = <0x7c00000 0x400000>;
+			read-only;
+		};
+	};
+};
+
+&mdio0 {
+	status = "okay";
+
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	pll-data = <0x06000000 0x00000101 0x00001313>;
+
+	mtd-mac-address = <&hw_info 0x0>;
+
+	phy-mode = "rgmii-id";
+	phy-handle = <&phy0>;
+
+	gmac-config {
+		device = <&gmac>;
+		rgmii-gmac0 = <1>;
+		rxd-delay = <1>;
+		rxdv-delay = <1>;
+	};
+};
diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index db4ff9c6f0..7faa659d46 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -1,3 +1,20 @@
+define Device/aerohive_hiveap-121
+  ATH_SOC := ar9344
+  DEVICE_VENDOR := Aerohive
+  DEVICE_MODEL := HiveAP 121
+  DEVICE_PACKAGES := kmod-usb2
+  BLOCKSIZE := 128k
+  PAGESIZE := 2048
+  IMAGE_SIZE := 115m
+  KERNEL_SIZE := 5120k
+  UBINIZE_OPTS := -E 5
+  SUPPORTED_DEVICES += hiveap-121
+  IMAGES += factory.bin
+  IMAGE/factory.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi | check-size $$$$(IMAGE_SIZE)
+  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
+endef
+TARGET_DEVICES += aerohive_hiveap-121
+
 define Device/glinet_gl-ar300m-nand
   ATH_SOC := qca9531
   DEVICE_VENDOR := GL.iNet
diff --git a/target/linux/ath79/nand/config-default b/target/linux/ath79/nand/config-default
index c8114a4985..84e6748a20 100644
--- a/target/linux/ath79/nand/config-default
+++ b/target/linux/ath79/nand/config-default
@@ -1,3 +1,4 @@
+CONFIG_AT803X_PHY=y
 CONFIG_BCH=y
 CONFIG_MTD_NAND=y
 CONFIG_MTD_NAND_AR934X=y
@@ -8,8 +9,11 @@ CONFIG_MTD_SPINAND_MT29F=y
 CONFIG_MTD_SPINAND_ONDIEECC=y
 CONFIG_MTD_UBI=y
 CONFIG_MTD_UBI_BEB_LIMIT=20
-# CONFIG_MTD_UBI_BLOCK is not set
+CONFIG_MTD_UBI_BLOCK=y
 # CONFIG_MTD_UBI_FASTMAP is not set
 # CONFIG_MTD_UBI_GLUEBI is not set
 CONFIG_MTD_UBI_WL_THRESHOLD=4096
-# CONFIG_UBIFS_FS is not set
+CONFIG_UBIFS_FS=y
+CONFIG_UBIFS_FS_ADVANCED_COMPR=y
+CONFIG_UBIFS_FS_LZO=y
+CONFIG_UBIFS_FS_ZLIB=y
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
