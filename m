Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E4486146
	for <lists+openwrt-devel@lfdr.de>; Thu,  8 Aug 2019 13:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wxnyCgwyqmyWJVz4b8Dr8TkJkdenI6GrPhhJ5hRuHcc=; b=Dq8uBqWTssIyQU
	a8646m1GVRlrHwm/xYfLAf1y6rgJH5kXMhVPe3sjmJwsLDAhzWq+z/m9ulAtIsurc+IJ/gXtpbtEb
	o4XhpQ36UOGOdJnriX1wwVYz6GamMcOlJCT512BcjQNKeNMzRoywIFrdyOauIEI+s3nwG8Ual6owy
	RpXil9yiqgHb8BOmSkUkiGxDIGMf7anyWL3zptMUd4VllZPkGJxOA1eCH86qt0ibr2mmltjgjpbfs
	EMEIY63YX5RlYjb8gHvcE4yeKn35Nv+ca1RoBEaJs7MELC/Sfqzkqhv0e2dKx/L00YndJiMr8gEED
	ybynpSfATBgNyCskHBtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvh4A-0007Q4-Cy; Thu, 08 Aug 2019 11:58:46 +0000
Received: from smtpbg513.qq.com ([203.205.250.40] helo=smtpbg.qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvh3f-0007E6-8M
 for openwrt-devel@lists.openwrt.org; Thu, 08 Aug 2019 11:58:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1565265475; bh=WpTjLVXEMpZm5vsfrIwygXVisxk3cZ8hjy1vKXx5lzg=;
 h=From:To:Subject:Date:Message-Id;
 b=YRI+9jmkFsdozuT1gjCeVFH/PH/nGpUFokBubGQjqtYSbssyZm4EyRMQ9G6rUnJRI
 h2hnWWabo6T0d9TkcPrGMSV7RY9skb7dSPwU/y0dVpYwQMWN+4luh/NMcJWH0BrQHs
 jtrgw1SPTav/TxiSnel8Alk0C4xrEextdYO3Eo60=
X-QQ-mid: esmtp6t1565265474td6ekuowp
Received: from localhost.localdomain (unknown [115.205.159.17])
 by esmtp4.qq.com (ESMTP) with 
 id ; Thu, 08 Aug 2019 19:57:53 +0800 (CST)
X-QQ-SSF: B1000000000000B0RH100500000000Z
X-QQ-FEAT: 7xGXugkJqOsOqAo3gtooHm4DfIwGX/iVD1f4gdl2o/enbmg+mcoHH2Xg2TvX8
 9MEjHYh8HRsgMVbhaXn4JWfMWvH2GiuNtCpDvFZpNfLcd7Mm339kGpgqBvVvwFKCV90tUWI
 1QgYeSv64g2jRWCiV5R6KjPSa1jkBcNtUOEcjlzC6wUXsqbbgGsykeHuc4qtq35KCnwZBSe
 AWRiZjEFQDvggU3AHaLl+pmE93mDlfYTLMdf2ZAK1mFYL+9Dz27AtNjWyGI+yjWVaX/mzqG
 KNYwYyup0vytUVOl6lYn/56lHTOv3PICG22Nn7r/ZhWnMxwPv7uqydUCI=
X-QQ-GoodBg: 0
From: Robinson Wu <wurobinson@qq.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  8 Aug 2019 19:57:46 +0800
Message-Id: <1565265466-11211-1-git-send-email-wurobinson@qq.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: esmtp:qq.com:bgweb:bgweb4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_045815_606388_F09BDCBD 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.250.40 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wurobinson[at]qq.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ramips: add support to ZTK7628P development
 board
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
Cc: Robinson Wu <wurobinson@qq.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This commit adds support for the ZhuoTK ZTK7628P development board,
The device has the following specifications:

- SOC:MT7628DAN
- RAM:64 MB (DDR2)
- FLASH:8/16/32 MB (SPI NOR)
- Ethernet:3x 10/100 Mbps ethernet ports (MT7628DAN built-in switch)
- WIFI:1x 2T2R 2.4 GHz Wi-Fi
- LEDs:1x system status green LED, 1x wifi green LED,
       3x ethernet green LED
- Buttons:1x reset button, 2x user defined button
- 1x microSD slot
- 4x USB 2.0 port
- 1x mini-usb debug UART
- 1x DC jack for main power (DC 5V)
- 1x TTL/RS232 UART
- 1x TTL/RS485 UART
- 13x GPIO header
- 1x audio codec(wm8960)

Installation via OpenWrt:

The original firmware is OpenWrt, so both LuCI or sysupgrade can be used.

Installation via U-boot web:

1. Power on board with reset button or key1 button pressed, release it
   after wifi led start blinking.
2. Setup static IP 192.168.1.123/4 on your PC.
3. Go to 192.168.1.8 in browser and upload "sysupgrade" image.

Installation via U-boot tftp:
1. Connect to serial console at the mini usb, which has been connected to UART0
   on board (115200 8N1)
2. Setup static IP 192.168.1.123/4 on your PC.
3. Place openwrt-firmware.bin on your PC tftp server (192.168.1.123).
3. Connect one of LAN ports on board to your PC.
4. Start terminal software (e.g. screen /dev/ttyUSB0 115200) on PC.
5. Apply power to board.
6. Interrupt U-boot with keypress of "2".
7. At u-boot prompts:
   Warning!! Erase Linux in Flash then burn new one. Are you sure?(Y/N) Y
   Input device IP (192.168.1.8) ==:192.168.1.8
   Input server IP (192.168.1.123) ==:192.168.1.123
   Input Linux Kernel filename (root_uImage) ==:openwrt-firmware.bin
8. board will download file from tftp server, write it to flash and reboot.

Other notes:

1. This board is available with three types of RAM with flash
   configuration. Chose one of the right "Target Profile" in
   "make menuconfig" as listed below:

   "ZhuoTK ZTK7628P 8M flash"
   "ZhuoTK ZTK7628P 16M flash"
   "ZhuoTK ZTK7628P 32M flash"

   to fit the board you have.

Vist www.zhuotk.com for further information.

Signed-off-by: Robinson Wu <wurobinson@qq.com>
---
 target/linux/ramips/base-files/etc/board.d/01_leds |  5 +-
 .../linux/ramips/base-files/etc/board.d/02_network |  3 ++
 .../ramips/dts/mt7628an_zhuotk_ztk7628p-16m.dts    | 60 ++++++++++++++++++++++
 .../ramips/dts/mt7628an_zhuotk_ztk7628p-32m.dts    | 60 ++++++++++++++++++++++
 .../ramips/dts/mt7628an_zhuotk_ztk7628p-8m.dts     | 60 ++++++++++++++++++++++
 target/linux/ramips/image/mt76x8.mk                | 30 +++++++++++
 6 files changed, 217 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_ztk7628p-16m.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_ztk7628p-32m.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_ztk7628p-8m.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index d1a56ee..be8f60b 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -463,7 +463,10 @@ zhuotk,js7628-16m|\
 zhuotk,js7628-32m|\
 zhuotk,js7688-8m|\
 zhuotk,js7688-16m|\
-zhuotk,js7688-32m)
+zhuotk,js7688-32m|\
+zhuotk,ztk7628p-8m|\
+zhuotk,ztk7628p-16m|\
+zhuotk,ztk7628p-32m)
 	ucidef_set_led_timer "system" "system" "js76x8:green:system" "1000" "1000"
 	set_wifi_led "js76x8:green:wifi"
 	;;
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index bd74b4a..a0a9734 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -109,6 +109,9 @@ ramips_setup_interfaces()
 	zhuotk,js7688-8m|\
 	zhuotk,js7688-16m|\
 	zhuotk,js7688-32m|\
+	zhuotk,ztk7628p-8m|\
+	zhuotk,ztk7628p-16m|\
+	zhuotk,ztk7628p-32m|\
 	zyxel,keenetic|\
 	zyxel,keenetic-omni)
 		ucidef_add_switch "switch0" \
diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_ztk7628p-16m.dts b/target/linux/ramips/dts/mt7628an_zhuotk_ztk7628p-16m.dts
new file mode 100644
index 0000000..f84dda9
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_zhuotk_ztk7628p-16m.dts
@@ -0,0 +1,60 @@
+/dts-v1/;
+
+#include "mt7628an_zhuotk_js76x8.dtsi"
+
+/ {
+	compatible = "zhuotk,ztk7628p-16m", "zhuotk,js76x8", "mediatek,mt7628an-soc";
+	model = "ZhuoTK ZTK7628P (16M flash)";
+};
+
+&spi0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins>, <&spi_cs1_pins>;
+
+	m25p80@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <40000000>;
+		m25p,chunked-io = <32>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x30000>;
+				read-only;
+			};
+
+			partition@30000 {
+				label = "u-boot-env";
+				reg = <0x30000 0x10000>;
+				read-only;
+			};
+
+			factory: partition@40000 {
+				label = "factory";
+				reg = <0x40000 0x10000>;
+				read-only;
+			};
+
+			partition@50000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x50000 0xfb0000>;
+			};
+		};
+	};
+
+	spidev@1 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "linux,spidev";
+		reg = <1>;
+		spi-max-frequency = <40000000>;
+	};
+};
diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_ztk7628p-32m.dts b/target/linux/ramips/dts/mt7628an_zhuotk_ztk7628p-32m.dts
new file mode 100644
index 0000000..00f7865
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_zhuotk_ztk7628p-32m.dts
@@ -0,0 +1,60 @@
+/dts-v1/;
+
+#include "mt7628an_zhuotk_js76x8.dtsi"
+
+/ {
+	compatible = "zhuotk,ztk7628p-32m", "zhuotk,js76x8", "mediatek,mt7628an-soc";
+	model = "ZhuoTK ZTK7628P (32M flash)";
+};
+
+&spi0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins>, <&spi_cs1_pins>;
+
+	m25p80@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <40000000>;
+		m25p,chunked-io = <32>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x30000>;
+				read-only;
+			};
+
+			partition@30000 {
+				label = "u-boot-env";
+				reg = <0x30000 0x10000>;
+				read-only;
+			};
+
+			factory: partition@40000 {
+				label = "factory";
+				reg = <0x40000 0x10000>;
+				read-only;
+			};
+
+			partition@50000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x50000 0x1fb0000>;
+			};
+		};
+	};
+
+	spidev@1 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "linux,spidev";
+		reg = <1>;
+		spi-max-frequency = <40000000>;
+	};
+};
diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_ztk7628p-8m.dts b/target/linux/ramips/dts/mt7628an_zhuotk_ztk7628p-8m.dts
new file mode 100644
index 0000000..01c7e5d
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_zhuotk_ztk7628p-8m.dts
@@ -0,0 +1,60 @@
+/dts-v1/;
+
+#include "mt7628an_zhuotk_js76x8.dtsi"
+
+/ {
+	compatible = "zhuotk,ztk7628p-8m", "zhuotk,js76x8", "mediatek,mt7628an-soc";
+	model = "ZhuoTK ZTK7628P (8M flash)";
+};
+
+&spi0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins>, <&spi_cs1_pins>;
+
+	m25p80@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <40000000>;
+		m25p,chunked-io = <32>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x30000>;
+				read-only;
+			};
+
+			partition@30000 {
+				label = "u-boot-env";
+				reg = <0x30000 0x10000>;
+				read-only;
+			};
+
+			factory: partition@40000 {
+				label = "factory";
+				reg = <0x40000 0x10000>;
+				read-only;
+			};
+
+			partition@50000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x50000 0x7b0000>;
+			};
+		};
+	};
+
+	spidev@1 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "linux,spidev";
+		reg = <1>;
+		spi-max-frequency = <40000000>;
+	};
+};
diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index 60d84b3..deb6742 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -613,6 +613,36 @@ define Device/zhuotk_js7688-32m
 endef
 TARGET_DEVICES += zhuotk_js7688-32m
 
+define Device/zhuotk_ztk7628p-8m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := 7872k
+  DEVICE_VENDOR := ZhuoTK
+  DEVICE_MODEL := ZTK7628P
+  DEVICE_VARIANT := 8M flash
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+endef
+TARGET_DEVICES += zhuotk_ztk7628p-8m
+
+define Device/zhuotk_ztk7628p-16m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := 16064k
+  DEVICE_VENDOR := ZhuoTK
+  DEVICE_MODEL := ZTK7628P
+  DEVICE_VARIANT := 16M flash
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+endef
+TARGET_DEVICES += zhuotk_ztk7628p-16m
+
+define Device/zhuotk_ztk7628p-32m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := 32448k
+  DEVICE_VENDOR := ZhuoTK
+  DEVICE_MODEL := ZTK7628P
+  DEVICE_VARIANT := 32M flash
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+endef
+TARGET_DEVICES += zhuotk_ztk7628p-32m
+
 define Device/zyxel_keenetic-extra-ii
   MTK_SOC := mt7628an
   IMAGE_SIZE := 14912k
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
