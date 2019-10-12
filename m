Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F50BD501A
	for <lists+openwrt-devel@lfdr.de>; Sat, 12 Oct 2019 15:35:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tSDSK4k+rILuCHEmi6arXTPxvgqCkU0S2+oJ/f4JSsk=; b=XsG69QD3rbfp7T
	/IkiSJlfb6thIuT9DSP/BEwa3/wI+j0QnuT6D+HoqjVImYB5uUdDmFeT4WAUbYGgYO3ikSsksffr7
	W1cuggCpT5SfnD+5Usneagy3g5F/WVJFyNgUsICHx78bt6j6EYrD/+G4+r99VkySnBq+K4GQAiuWo
	ox5KrGdp0nFh5MNEXUUW8eRGAshZBlVwwF9tdY1KBpg0pZvzQnEeA/OUlDbakeSqAPSHUVr80cOF3
	6sxWsRBji+6j8u/B8nJetu2EP6NBj1DD+i8+tYzUK5rFTnvNqG+YOaUdDJXgZPg3Km+a2fey2Z8UQ
	WVjGqO7EylcO4xZsQTNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJHXu-0004IA-VK; Sat, 12 Oct 2019 13:34:58 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJHXn-0004HA-8h
 for openwrt-devel@lists.openwrt.org; Sat, 12 Oct 2019 13:34:53 +0000
Received: (wp-smtpd smtp.tlen.pl 32440 invoked from network);
 12 Oct 2019 15:34:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1570887286; bh=rAxChJjO2vJLA4cpvnJ/CUJXiEMn5aR+CqMYpLurz3g=;
 h=From:To:Subject;
 b=K9dh9wjLP9t8gWiYjn3eaxglgwz87KXqwtwUSNO/m6TV7BfWukuMAT1F4LYD/elpQ
 nPNjC9m5KAOcyP5WyfXOkEXNx39Dp6btehS91A00kqkMGTOhDm2qRJ3Wh9ckvC9uNb
 VF9rqMjma7/n83AAGC3yaBUXYTVouTbkYOo2OwWU=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 12 Oct 2019 15:34:46 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 12 Oct 2019 15:34:38 +0200
Message-Id: <20191012133438.4041-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-WP-MailID: 582ac4942aa8fc91a3a428ccedb7909a
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000003 [AUBs]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_063451_631883_071317A0 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] ath79: add support for Sitecom WLR-7100
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

Sitecom WLR-7100 v1 002 (marketed as X7 AC1200) is a dual band wireless
router.

Specification
SoC: Atheros AR1022
RAM: 64 MB DDR2
Flash: 8 MB SPI NOR
WIFI: 2.4 GHz 2T2R integrated
      5 GHz 2T2R QCA9882 integrated (connected to PCIe lane)
Ethernet: 5x 10/100/1000 Mbps QCA8337N
USB: 1x 2.0
LEDS: 4x GPIO controlled, 5x switch
Buttons: 2x GPIO controlled
UART: 4 unpopulated holes near USB port, starting count from white
      triangle on PCB
      1. VCC 3.3V, 2. GND, 3. TX, 4. RX
      baud: 115200, parity: none, flow control: none

Installation
1. Connect to one of LAN (yellow) ethernet ports,
2. Open router configuration interface,
3. Go to Toolbox > Firmware,
4. Browse for OpenWrt factory image with dlf extension and hit Apply,
5. Wait few minutes, after the Power LED will stop blinking, the router
   is ready for configuration.

Known issues
5GHz LED doesn't work

Additional information
When TX line on UART is connected, and board is switched on from power
off state, the DDR memory training may fail.
If connected to UART, when prompted for number on boot, one can enter
number 4 to open bootloader (U-Boot) command line.
OEM firmware shell password is: SitecomSenao
useful for creating backup of original firmware.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 .../ath79/base-files/etc/board.d/02_network   |   6 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   3 +-
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   3 +-
 .../ath79/dts/ar1022_sitecom_wlr-7100.dts     | 171 ++++++++++++++++++
 target/linux/ath79/image/generic.mk           |  14 ++
 5 files changed, 195 insertions(+), 2 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar1022_sitecom_wlr-7100.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index 0de17adb9d..4d7cd3e366 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -172,6 +172,7 @@ ath79_setup_interfaces()
 	iodata,wn-ac1600dgr2|\
 	iodata,wn-ag300dgr|\
 	pcs,cr5000|\
+	sitecom,wlr-7100|\
 	wd,mynet-n750)
 		ucidef_add_switch "switch0" \
 			"0@eth0" "1:lan" "2:lan" "3:lan" "4:lan" "5:wan"
@@ -408,6 +409,11 @@ ath79_setup_macs()
 		wan_mac=$(mtd_get_mac_binary factory 0x0)
 		lan_mac=$(macaddr_setbit_la "$wan_mac")
 		;;
+	sitecom,wlr-7100)
+		lan_mac=$(mtd_get_mac_ascii u-boot-env ethaddr)
+		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
+		label_mac=$lan_mac
+		;;
 	tplink,archer-a7-v5|\
 	tplink,archer-c7-v4|\
 	tplink,archer-c7-v5|\
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 7911d0aa1e..1db571432b 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -122,7 +122,8 @@ case "$FIRMWARE" in
 	iodata,wn-ac1167dgr|\
 	iodata,wn-ac1600dgr|\
 	iodata,wn-ac1600dgr2|\
-	iodata,wn-ag300dgr)
+	iodata,wn-ag300dgr|\
+	sitecom,wlr-7100)
 		ath9k_eeprom_extract "art" 0x1000 0x440
 		ath9k_patch_fw_mac $(mtd_get_mac_ascii u-boot-env ethaddr) 0x2
 		;;
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 446b729a2b..75f78b1532 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -114,7 +114,8 @@ case "$FIRMWARE" in
 		;;
 	engenius,epg5000|\
 	iodata,wn-ac1167dgr|\
-	iodata,wn-ac1600dgr2)
+	iodata,wn-ac1600dgr2|\
+	sitecom,wlr-7100)
 		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
 		;;
diff --git a/target/linux/ath79/dts/ar1022_sitecom_wlr-7100.dts b/target/linux/ath79/dts/ar1022_sitecom_wlr-7100.dts
new file mode 100644
index 0000000000..8a70b597b0
--- /dev/null
+++ b/target/linux/ath79/dts/ar1022_sitecom_wlr-7100.dts
@@ -0,0 +1,171 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar9344.dtsi"
+
+/ {
+	model = "Sitecom WLR-7100 v1 002 (X7 AC1200)";
+	compatible = "sitecom,wlr-7100", "qca,ar9344";
+
+	aliases {
+		led-boot = &power;
+		led-failsafe = &power;
+		led-running = &power;
+		led-upgrade = &power;
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		wlan2g {
+			label = "2.4GHz";
+			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+
+		wlan5g {
+			label = "5GHz";
+			gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_WPS_BUTTON>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		ops {
+			label = "wlr-7100:white:ops";
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
+		};
+
+		power: power {
+			label = "wlr-7100:amber:power";
+			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
+			default-state = "on";
+		};
+
+		wlan2g {
+			label = "wlr-7100:blue:wlan2g";
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	pll-data = <0x06000000 0x00000101 0x00001616>;
+
+	phy-mode = "rgmii";
+	phy-handle = <&phy0>;
+
+	gmac-config {
+		device = <&gmac>;
+		rgmii-gmac0 = <1>;
+	};
+};
+
+&mdio0 {
+	status = "okay";
+
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+		phy-mode = "rgmii";
+
+		qca,ar8327-initvals = <
+			0x04 0x87a00000 /* PORT0 PAD Mode */
+			0x0c 0x01000000 /* PORT6 PAD Mode */
+			0x10 0x80000000 /* PWS_REG_VALUE */
+			0x7c 0x000000fe /* PORT0_STATUS */
+			0x94 0x000000fe /* PORT6_STATUS */
+		>;
+	};
+};
+
+&pcie {
+	status = "okay";
+
+	wifi@0,0 {
+		compatible = "qcom,ath10k";
+		reg = <0x0000 0 0 0 0>;
+	};
+};
+
+&ref {
+	clock-frequency = <25000000>;
+};
+
+&spi {
+	num-cs = <1>;
+	status = "okay";
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
+				reg = <0x000000 0x030000>;
+				read-only;
+			};
+
+			uenv: partition@30000 {
+				label = "u-boot-env";
+				reg = <0x030000 0x010000>;
+				read-only;
+			};
+
+			partition@40000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x040000 0x750000>;
+			};
+
+			partition@790000 {
+				label = "backup";
+				reg = <0x790000 0x010000>;
+				read-only;
+			};
+
+			partition@7a0000 {
+				label = "storage";
+				reg = <0x7a0000 0x050000>;
+				read-only;
+			};
+
+			art: partition@7f0000 {
+				label = "art";
+				reg = <0x7f0000 0x010000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&uart {
+	status = "okay";
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
+&wmac {
+	status = "okay";
+
+	qca,no-eeprom;
+};
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index cb6a38126a..78093b1d49 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -921,6 +921,20 @@ define Device/rosinson_wr818
 endef
 TARGET_DEVICES += rosinson_wr818
 
+define Device/sitecom_wlr-7100
+  ATH_SOC := ar1022
+  DEVICE_VENDOR := Sitecom
+  DEVICE_MODEL := WLR-7100
+  DEVICE_VARIANT := v1 002
+  DEVICE_PACKAGES := ath10k-firmware-qca988x kmod-ath10k kmod-usb2
+  IMAGES += factory.dlf
+  IMAGE/factory.dlf := append-kernel | pad-to $$$$(BLOCKSIZE) | \
+	append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | \
+	senao-header -r 0x222 -p 0x53 -t 2
+  IMAGE_SIZE := 7488k
+endef
+TARGET_DEVICES += sitecom_wlr-7100
+
 define Device/trendnet_tew-823dru
   ATH_SOC := qca9558
   DEVICE_VENDOR := Trendnet
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
