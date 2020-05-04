Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2841C4340
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 19:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8u1N+Ts4EoTtgLXaAekl7/TpbbpJhmvTIAJczu+Hb6k=; b=Oigp/p156ieKsT
	VSIzOrpSOjIISHd921WowHKZJZSDbXwbzdbMOhgRMlYCHcfNRGC4XzFNNbswhb+mwrPLUOcC/6DYs
	az1Pio2q7t5jGyVZA/2YYNJV/u08shyCjic1G82B7dbGlrwl7q6AVQqYEz6GIK7OM3nEr8Gr9S8u8
	KyxrBXLhjmvJkNFMnK/5AN6v+C3pTBT8/z5UlKPjxA9e/Mc9R/NneJOGbEOvXneE78EO41tOG2Diz
	NfN8+i4hqlPtEFPhjGq87/9/fdBGWyF/dhR65LmT+xfjvbyvkIJwDg9TxYgb9M/4XOKrlgiG8tNjj
	GqO8MWDAwuISpiwJpEcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVfDZ-00027D-U7; Mon, 04 May 2020 17:49:25 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVfDQ-000252-7u
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 17:49:19 +0000
Received: (wp-smtpd smtp.tlen.pl 5988 invoked from network);
 4 May 2020 19:49:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1588614545; bh=WXVCjojd3L5XBXrJS6BCUM8Wzp13vqAw0HSlZ0LzbZo=;
 h=From:To:Subject;
 b=mIIAq5c2G2G927zP/OpX7eU7+UM6YKKVQ002crSyHJOXwHs2gIlHrUf6vUrnVNa2T
 ThuO+SmxNS8txSSGV05SZybkl4lXtg4ON0zto2fyZWavVbbfbyesJkXVtHzPIaX84E
 aFgE+OxiZg23dAo/3c+Pmv3CJ//Q7uR1rGDQbzWE=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 4 May 2020 19:49:05 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  4 May 2020 19:48:55 +0200
Message-Id: <20200504174855.24934-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-WP-MailID: a1f6079d6f92aeb422fe94ff8d23ea47
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [4SLt]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_104916_600098_B8B1E97F 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [19.07] [PATCH] ath79: add support for Sitecom
 WLR-7100
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

Backported from: 1bc921f419df508c57dc07cd3e43cdf0408c17dd

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
UART: row of 4 unpopulated holes near USB port, starting count from
      white triangle on PCB
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
There is also another revision of this device (v1 001), which may or may
not work with introduced images.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 .../ath79/base-files/etc/board.d/02_network   |   6 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   3 +-
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   3 +-
 .../ath79/dts/ar1022_sitecom_wlr-7100.dts     | 171 ++++++++++++++++++
 target/linux/ath79/image/generic.mk           |  12 ++
 5 files changed, 193 insertions(+), 2 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar1022_sitecom_wlr-7100.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index 1b0e76b1593b..d494c0144725 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -150,6 +150,7 @@ ath79_setup_interfaces()
 	iodata,wn-ac1600dgr2|\
 	iodata,wn-ag300dgr|\
 	pcs,cr5000|\
+	sitecom,wlr-7100|\
 	wd,mynet-n750)
 		ucidef_add_switch "switch0" \
 			"0@eth0" "1:lan" "2:lan" "3:lan" "4:lan" "5:wan"
@@ -349,6 +350,11 @@ ath79_setup_macs()
 		wan_mac=$(mtd_get_mac_binary factory 0)
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
index d85e90f10683..69ffad1a99ef 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -119,7 +119,8 @@ case "$FIRMWARE" in
 	iodata,wn-ac1167dgr|\
 	iodata,wn-ac1600dgr|\
 	iodata,wn-ac1600dgr2|\
-	iodata,wn-ag300dgr)
+	iodata,wn-ag300dgr|\
+	sitecom,wlr-7100)
 		ath9k_eeprom_extract "art" 4096 1088
 		ath9k_patch_fw_mac $(mtd_get_mac_ascii u-boot-env ethaddr) 2
 		;;
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index d93e6dcd71ab..5b29ad0ce9fc 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -109,7 +109,8 @@ case "$FIRMWARE" in
 		;;
 	engenius,epg5000|\
 	iodata,wn-ac1167dgr|\
-	iodata,wn-ac1600dgr2)
+	iodata,wn-ac1600dgr2|\
+	sitecom,wlr-7100)
 		ath10kcal_extract "art" 20480 2116
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
 		;;
diff --git a/target/linux/ath79/dts/ar1022_sitecom_wlr-7100.dts b/target/linux/ath79/dts/ar1022_sitecom_wlr-7100.dts
new file mode 100644
index 000000000000..8a70b597b0fe
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
index 55053be34f11..550f24f45c8b 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -674,6 +674,18 @@ define Device/rosinson_wr818
 endef
 TARGET_DEVICES += rosinson_wr818
 
+define Device/sitecom_wlr-7100
+  ATH_SOC := ar1022
+  DEVICE_TITLE := Sitecom WLR-7100 v1 002
+  DEVICE_PACKAGES := ath10k-firmware-qca988x-ct kmod-ath10k-ct-smallbuffers kmod-usb2
+  IMAGES += factory.dlf
+  IMAGE/factory.dlf := append-kernel | pad-to $$$$(BLOCKSIZE) | \
+	append-rootfs | pad-rootfs | check-size $$$$(IMAGE_SIZE) | \
+	senao-header -r 0x222 -p 0x53 -t 2
+  IMAGE_SIZE := 7488k
+endef
+TARGET_DEVICES += sitecom_wlr-7100
+
 define Device/wd_mynet-n750
   $(Device/seama)
   ATH_SOC := ar9344
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
