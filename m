Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0C71F16C1
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 12:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2VkLRZHcaHpVVIaxTK/Qgz2U3Rr9fv6WuzcAsWhfi18=; b=mOJtQM4W6OP5DDS4MfthpcNeQx
	AMas45yxWHtSerTXwwkiGqNEd6V8416Zl/K4oJ33y47bQcKVXDLeVuGt+qaGZ+T5/3EZdKksiElR7
	yjZP/Hv1VRLz4znBTOLf5lI87Abx2eeH4uvdY8eoRUjfJF3VSJGSl6pL4Wkea/fVcRGChDkiNggBS
	rv+YF0/YBLlZ6UbxxoWHI0EbA7V0oLBpJBpCV52dTZw9lYyDmgAWw1rtYVzRrEuAN2h0L4spxmL8T
	WMm4HKgJB69nNbxWRCBEXVTVhosXtiGI2DTaj8U8lQKWVtbx4AA98AX7HcVQqgT6S6sjCCw2yGt3w
	hMK7qZ+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiF4p-0001Vy-U4; Mon, 08 Jun 2020 10:32:23 +0000
Received: from mail.tintel.eu ([51.83.127.189])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiF3z-0000ap-JQ
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 10:31:35 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 1058A44881EA
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:22:58 +0200 (CEST)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id 7zrPg1L2m16F for <openwrt-devel@lists.openwrt.org>;
 Mon,  8 Jun 2020 12:22:56 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 1BC3E4482B6A
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:22:56 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 1BC3E4482B6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1591611776;
 bh=dkB1tZE65d42ZM0cwTsHDaxw3ANfy5YGFFKnK4a3qlg=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=UqKKpyYEbzeL4A8gppekvjrLIK83jbVf4XUG3ElHmkxlJmjG/xn5OEymIOecpH8eX
 CIuwrQQNm3v1t0VNYf2rkkHZT/X5Jl8uO/Gdekycn8s7saQBabK70LjBRpHCea+jaB
 NBKVW107oz7H5xZKSSMR/HdRB6BlV9ZDERMQBN9Q=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id 9ewSQg8smJr1 for <openwrt-devel@lists.openwrt.org>;
 Mon,  8 Jun 2020 12:22:55 +0200 (CEST)
Received: from taz.sof.bg.adlevio.net (unknown
 [IPv6:2001:67c:21bc:20:52bf:b29c:6e1e:7c70])
 by mail.tintel.eu (Postfix) with SMTP id 6B60744881EA
 for <openwrt-devel@lists.openwrt.org>; Mon,  8 Jun 2020 12:01:47 +0200 (CEST)
Received: (nullmailer pid 1196143 invoked by uid 1000);
 Mon, 08 Jun 2020 09:36:31 -0000
From: Stijn Tintel <stijn@linux-ipv6.be>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  8 Jun 2020 12:36:31 +0300
Message-Id: <20200608093631.1196081-5-stijn@linux-ipv6.be>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200608093631.1196081-1-stijn@linux-ipv6.be>
References: <20200608093631.1196081-1-stijn@linux-ipv6.be>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 6B60744881EA
X-Spamd-Result: default: False [0.00 / 15.00];
 ASN(0.00)[asn:200533, ipnet:2001:67c:21bc::/48, country:BG];
 IP_WHITELIST(0.00)[2001:67c:21bc:20:52bf:b29c:6e1e:7c70]
X-Rspamd-Server: skulls
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_033131_946770_DD532F0E 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] [PATCH 4/4] ath79: add support for D-Link
 DAP-2695-A1
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

Hardware:
* SoC: Qualcomm Atheros QCA9558
* RAM: 256MB
* Flash: 16MB SPI NOR
* Ethernet: 2x 10/100/1000 (1x 802.3at PoE-PD)
* WiFi 2.4GHz: Qualcomm Atheros QCA9558
* WiFi 5GHz: Qualcomm Ahteros QCA9880-2R4E
* LEDS: 1x 5GHz, 1x 2.4GHz, 1x LAN1(POE), 1x LAN2, 1x POWER
* Buttons: 1x RESET
* UART: 1x RJ45 RS-232 Console port

Installation via stock firmware:
* Install the factory image via the stock firmware web interface

Installation via bootloader Emergency Web Server:
* Connect your PC to the LAN1(PoE) port
* Configure your PC with IP address 192.168.0.90
* Open a serial console to the Console port (115200,8n1)
* Press "q" within 2s when "press 'q' to stop autoboot" appears
* Open http://192.168.0.50 in a browser
* Upload either the factory or the sysupgrade image
* Once you see "write image into flash...OK,dest addr=0x9f070000" you
  can power-cycle the device. Ignore "checksum bad" messages.

Setting the MAC addresses for the ethernet interfaces via
/etc/board.d/02_network adds the following snippets to
/etc/config/network:

config device 'lan_eth0_1_dev'
        option name 'eth0.1'
        option macaddr 'xx:xx:xx:xx:xx:xx'

config device 'wan_eth1_2_dev'
        option name 'eth1.2'
        option macaddr 'xx:xx:xx:xx:xx:xx'

This would result in the proper MAC addresses being set for the VLAN
subinterfaces, but the parent interfaces would still have a random MAC
address. Using untagged VLANs could solve this, but would still leave
those extra snippets in /etc/config/network, and then the device VLAN
setup would differ from the one used in ar71xx. Therefore, the MAC
addresses of the ethernet interfaces are being set via preinit instead.

The bdcfg partition contains 4 MAC address labels:
- lanmac
- wanmac
- wlanmac
- wlanmac_a

The first 3 all contain the same MAC address, which is also the one on
the label. This MAC address is used for the 2.4GHz interface, eth0 uses
this MAC+1, eth1 uses this MAC+2, as is done in ar71xx.

Signed-off-by: Stijn Tintel <stijn@linux-ipv6.be>
---
 .../ath79/dts/qca9558_dlink_dap-2695-a1.dts   | 172 ++++++++++++++++++
 .../generic/base-files/etc/board.d/01_leds    |   5 +
 .../generic/base-files/etc/board.d/02_network |   6 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   4 +
 .../etc/uci-defaults/09_fix-checksum          |   8 +
 .../base-files/lib/preinit/10_fix_eth_mac.sh  |   5 +
 target/linux/ath79/image/generic-dlink.mk     |  33 ++++
 8 files changed, 237 insertions(+)
 create mode 100644 target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts

diff --git a/target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts b/target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts
new file mode 100644
index 0000000000..fdabbcb84a
--- /dev/null
+++ b/target/linux/ath79/dts/qca9558_dlink_dap-2695-a1.dts
@@ -0,0 +1,172 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "qca955x.dtsi"
+
+/ {
+	compatible = "dlink,dap-2695-a1", "qca,qca9557";
+	model = "D-link DAP-2695-A1";
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		power_green {
+			label = "d-link:green:power";
+			gpios = <&gpio 23 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+
+		power_red {
+			label = "d-link:red:power";
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+
+		wifi_2g {
+			label = "d-link:green:wifi2g";
+			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys-polled";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		poll-interval = <20>;
+
+		button@0 {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&spi {
+	status = "okay";
+	num-cs = <1>;
+
+	flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "mx25l12805d";
+		reg = <0>;
+		spi-max-frequency = <25000000>;
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			uboot:  partition@0 {
+				label = "u-boot";
+				reg = <0x000000 0x040000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "bdcfg";
+				reg = <0x040000 0x010000>;
+				read-only;
+			};
+
+			partition@50000 {
+				label = "rgdb";
+				reg = <0x050000 0x010000>;
+				read-only;
+			};
+
+			partition@60000 {
+				label = "langpack";
+				reg = <0x060000 0x010000>;
+				read-only;
+			};
+
+			partition@70000 {
+				compatible = "wrg";
+				label = "firmware";
+				reg = <0x070000 0xf00000>;
+			};
+
+			partition@f70000 {
+				label = "captival";
+				reg = <0xf70000 0x070000>;
+				read-only;
+			};
+
+			partition@fe0000 {
+				label = "certificate";
+				reg = <0xfe0000 0x010000>;
+				read-only;
+			};
+
+			art: partition@ff0000 {
+				label = "art";
+				reg = <0xff0000 0x010000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&mdio0 {
+	status = "okay";
+
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+
+		qca,ar8327-initvals = <
+			0x04 0x07600000 /* PORT0_PAD_CTRL */
+			0x0c 0x00080080 /* PORT6_PAD_CTRL */
+			0x7c 0x0000007e /* PORT0_STATUS */
+			0x94 0x0000007e /* PORT6_STATUS */
+		>;
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	phy-handle = <&phy0>;
+	phy-mode = "rgmii";
+	pll-data = <0x56000000 0x00000101 0x00001616>;
+
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+	};
+};
+
+&eth1 {
+	status = "okay";
+
+	phy-mask = <0>;
+	phy-mode = "sgmii";
+	pll-data = <0x03000101 0x00000101 0x00001616>;
+
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+	};
+};
+
+&pcie0 {
+	status = "okay";
+};
+
+&uart {
+	status = "okay";
+};
+
+&wmac {
+	status = "okay";
+
+	qca,no-eeprom;
+};
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
index 5521379cea..f31a21088e 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
@@ -110,6 +110,11 @@ enterasys,ws-ap3705i)
 devolo,magic-2-wifi)
 	ucidef_set_led_netdev "plcw" "dLAN" "devolo:white:dlan" "eth0.1" "rx"
 	;;
+dlink,dap-2695-a1)
+	ucidef_set_led_default "power" "POWER" "d-link:green:power" "1"
+	ucidef_set_led_default "diag" "DIAG" "d-link:red:power" "0"
+	ucidef_set_led_wlan "wlan2g" "WLAN 2.4 GHz" "d-link:green:wlan2g" "phy1tpt"
+	;;
 dlink,dir-859-a1)
 	ucidef_set_led_switch "internet" "WAN" "$boardname:green:internet" "switch0" "0x20"
 	;;
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index 1672f093a7..d5964e9a0f 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -136,6 +136,9 @@ ath79_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0@eth0" "2:wan" "3:lan" "4:lan"
 		;;
+	dlink,dap-2695-a1)
+		ucidef_add_switch "switch0" "0@eth0" "2:lan" "3:wan" "6@eth1"
+		;;
 	dlink,dir-825-b1)
 		ucidef_set_interface_wan "eth1"
 		ucidef_add_switch "switch0" \
@@ -359,6 +362,9 @@ ath79_setup_macs()
 	devolo,magic-2-wifi)
 		label_mac=$(macaddr_add "$(mtd_get_mac_binary art 0x1002)" 3)
 		;;
+	dlink,dap-2695-a1)
+		label_mac=$(mtd_get_mac_ascii bdcfg "wlanmac")
+		;;
 	dlink,dir-825-b1)
 		lan_mac=$(mtd_get_mac_text "caldata" 0xffa0)
 		wan_mac=$(mtd_get_mac_text "caldata" 0xffb4)
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index e0fa5ff354..972157604d 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -14,6 +14,10 @@ case "$FIRMWARE" in
 	avm,fritz450e)
 		caldata_extract_reverse "urlader" 0x1541 0x440
 		;;
+	dlink,dap-2695-a1)
+		caldata_extract "art" 0x1000 0x440
+		ath9k_patch_mac $(mtd_get_mac_ascii bdcfg "wlanmac")
+		;;
 	dlink,dir-505|\
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 29815a1ada..603557d6c2 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -40,6 +40,10 @@ case "$FIRMWARE" in
 		caldata_extract "art" 0x5000 0x844
 		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) -1)
 		;;
+	dlink,dap-2695-a1)
+		caldata_extract "art" 0x5000 0x844
+		ath10k_patch_mac $(mtd_get_mac_ascii bdcfg wlanmac_a)
+		;;
 	dlink,dir-859-a1)
 		caldata_extract "art" 0x5000 0x844
 		ath10k_patch_mac $(mtd_get_mac_ascii devdata "wlan5mac")
diff --git a/target/linux/ath79/generic/base-files/etc/uci-defaults/09_fix-checksum b/target/linux/ath79/generic/base-files/etc/uci-defaults/09_fix-checksum
index 22c9483e74..085ad2e925 100644
--- a/target/linux/ath79/generic/base-files/etc/uci-defaults/09_fix-checksum
+++ b/target/linux/ath79/generic/base-files/etc/uci-defaults/09_fix-checksum
@@ -6,9 +6,17 @@ fix_seama_header() {
 	[ "$kernel_size" ] && mtd -c 0x$kernel_size fixseama firmware
 }
 
+fixwrgg() {
+	local kernel_size=$(sed -n 's/mtd[0-9]*: \([0-9a-f]*\).*"kernel".*/\1/p' /proc/mtd)
+	[ "$kernel_size" ] && mtd -c 0x$kernel_size fixwrgg firmware
+}
+
 board=$(board_name)
 
 case "$board" in
+dlink,dap-2695-a1)
+	fixwrgg
+	;;
 qihoo,c301)
 	fix_seama_header
 	;;
diff --git a/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh b/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
index da1583a825..5b1aea7bb0 100644
--- a/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
+++ b/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
@@ -8,6 +8,11 @@ preinit_set_mac_address() {
 	avm,fritz450e)
 		ip link set dev eth0 address $(fritz_tffs -n maca -i $(find_mtd_part "tffs (1)"))
 		;;
+	dlink,dap-2695-a1)
+		label_mac=$(mtd_get_mac_ascii bdcfg "lanmac")
+		ip link set dev eth0 address $(macaddr_add "$label_mac" 1)
+		ip link set dev eth1 address $(macaddr_add "$label_mac" 2)
+		;;
 	enterasys,ws-ap3705i)
 		ip link set dev eth0 address $(mtd_get_mac_ascii u-boot-env0 ethaddr)
 		;;
diff --git a/target/linux/ath79/image/generic-dlink.mk b/target/linux/ath79/image/generic-dlink.mk
index 96cb015a09..4d59af1645 100644
--- a/target/linux/ath79/image/generic-dlink.mk
+++ b/target/linux/ath79/image/generic-dlink.mk
@@ -1,3 +1,36 @@
+DEVICE_VARS += DAP_SIGNATURE
+
+define Build/mkwrggimg
+	$(STAGING_DIR_HOST)/bin/mkwrggimg -b \
+		-i $@ -o $@.imghdr -d /dev/mtdblock/1 \
+		-m $(DEVICE_MODEL)-$(DEVICE_VARIANT) -s $(DAP_SIGNATURE) \
+		-v $(VERSION_DIST) -B $(REVISION)
+	mv $@.imghdr $@
+endef
+
+define Build/wrgg-pad-rootfs
+	$(STAGING_DIR_HOST)/bin/padjffs2 $(IMAGE_ROOTFS) -c 64 >>$@
+endef
+
+define Device/dlink_dap-2695-a1
+  SOC := qca9558
+  DEVICE_VENDOR := D-Link
+  DEVICE_MODEL := DAP-2965
+  DEVICE_VARIANT := A1
+  IMAGES := factory.img sysupgrade.bin
+  IMAGE_SIZE := 15360k
+  IMAGE/default := append-kernel | pad-offset 65536 160
+  IMAGE/factory.img := $$(IMAGE/default) | append-rootfs | wrgg-pad-rootfs | \
+	mkwrggimg | check-size $$$$(IMAGE_SIZE)
+  IMAGE/sysupgrade.bin := $$(IMAGE/default) | mkwrggimg | append-rootfs | \
+	wrgg-pad-rootfs | append-metadata |  check-size $$$$(IMAGE_SIZE)
+  KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma
+  KERNEL_INITRAMFS := $$(KERNEL) | mkwrggimg
+  DAP_SIGNATURE := wapac02_dkbs_dap2695
+  SUPPORTED_DEVICES += dlink,dap-2695-a1 dap-2695-a1
+endef
+TARGET_DEVICES += dlink_dap-2695-a1
+
 define Device/dlink_dir-505
   SOC := ar9330
   DEVICE_VENDOR := D-Link
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
