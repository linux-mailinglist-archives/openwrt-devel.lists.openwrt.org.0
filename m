Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DB41C88C4
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 May 2020 13:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4ZalUKQJpj3NW/7DPKptMcYR/BrrRMP1TS3U3xuko0s=; b=ZSOMl+jw2SGF4w
	hyKSsBimHym05BO0tMnECbYRXJVfK+c/D4LGTRbqO6XV+cWU7wg9dDr+RoBbJ+x0Yao+/o7/X2ouW
	CKptl9vgMBSAi3VDJLGLTcRC1k4+MuEWEkM4VmDXpYI+SdztcKhGs5dT41L/95rhhv3YpLteEXdue
	r6IoBGAdPeZyx2/Q4QjuknfhljJsQLyg1VDVGyaxm6mqRE4IvNWRhgMm9Oqe53aBO4eCyC6s0YPyr
	ITEENkDhCZh5Um5udSNHBRPrPFmRJXOR+9ES4PA8CAQ+XRDah+BcMV6BzOwm/6mYwjmi9yfp3ZlJX
	g/fEHkdYfFcCHpPyUi1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWf0E-0004jC-79; Thu, 07 May 2020 11:47:46 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWezy-0004Ry-OK
 for openwrt-devel@lists.openwrt.org; Thu, 07 May 2020 11:47:34 +0000
X-QQ-mid: bizesmtp3t1588852021t3fvz9xx9
Received: from luo-B250M-D3H.lan (unknown [113.116.145.140])
 by esmtp6.qq.com (ESMTP) with 
 id ; Thu, 07 May 2020 19:47:01 +0800 (CST)
X-QQ-SSF: 01100000001000Z0ZL20000B0000000
X-QQ-FEAT: s8YYpWqVDddKz+Q/EMpux3+AwFmrTLUZCifucX7+rqs3v5vAe3LdIjYnleJV7
 71CwT/XOo7f9H8D/UEmRhkMPLF56L4E40MG3uBqDWVqeGmVRx5b1bQ5d0MEQcMgGuyar9Yj
 g4s4hX+15S4WXer44gW97xKOOhd8/RPTslrkz7Nu9MTxMq4DFTwWQgotdttpp+edNKewpNy
 oEBQo+tbbPmR2b4t1apg40ejGlEqGBbe1bOGp9S+TaLTsUUSvjH+lfb2FBqTAqFKHabvxs/
 A+Y3Gni4eVDzLmsAzG90Kx9veAOEGOTnFnuejBEburXEedA3mtqNx1WciMsD1OLdGiQoBU4
 NQ5nu8ifgeb5iiqeHA=
X-QQ-GoodBg: 0
From: Luochongjun <luochongjun@gl-inet.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  7 May 2020 19:46:59 +0800
Message-Id: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_044730_926703_53DCD2E3 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.204.34.130 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: add support for gl-e750
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
Cc: Luochongjun <luochongjun@gl-inet.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The gl-e750 is a portable travel router that gives you safe access to
the internet while traveling.

Specifications:
- SoC: Qualcomm Atheros AR9531 (650MHz)
- RAM: 128 MB DDR2
- Flash: 16 MB SPI NOR (W25Q128FVSG) + 128 MB SPI NAND (GD5F1GQ4UFYIG)
- Ethernet: 10/100: 1xLAN
- Wireless: QCA9531 2.4GHz (bgn) + QCA9887 5GHz (ac)
- USB: 1x USB 2.0 port
- Switch: 1x switch
- Button: 1x reset button
- OLED Screen: 128*64 px

Flash instruction:
Support for sysupgrade directive upgrades, as well as luci upgrades.

OLED screen control:
OLED controller is connected to QCA9531 through serial port, and can send
instructions to OLED controller directly through serial port.
Refer to the links below for a list of supported instructions:
https://github.com/gl-inet/GL-E750-MCU-instruction

Signed-off-by: Luochongjun <luochongjun@gl-inet.com>
---
 target/linux/ath79/dts/qca9531_glinet_gl-e750.dts  | 141 +++++++++++++++++++++
 .../generic/base-files/etc/board.d/02_network      |   1 +
 target/linux/ath79/image/nand.mk                   |  15 +++
 3 files changed, 157 insertions(+)
 create mode 100644 target/linux/ath79/dts/qca9531_glinet_gl-e750.dts

diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-e750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-e750.dts
new file mode 100644
index 0000000..645c69a
--- /dev/null
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-e750.dts
@@ -0,0 +1,141 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "qca953x.dtsi"
+
+/ {
+	compatible = "glinet,gl-e750", "qca,qca9531";
+	model = "GL.iNet GL-E750";
+
+	keys {
+		compatible = "gpio-keys";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&jtag_disable_pins>;
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 3 GPIO_ACTIVE_LOW>;
+		};
+
+		switch {
+			label = "switch";
+			linux,code = <BTN_0>;
+			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+        gpio-export {
+                compatible = "gpio-export";
+                #size-cells = <0>;
+
+                gpio_lte_power {
+                        gpio-export,name = "lte";
+                        gpio-export,output = <1>;
+                        gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
+                };
+        };
+
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
+&usb0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	hub_port: port@1 {
+		reg = <1>;
+		#trigger-source-cells = <0>;
+	};
+};
+
+&usb_phy {
+	status = "okay";
+};
+
+&spi {
+	status = "okay";
+	num-cs = <2>;
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
+				reg = <0x0 0x40000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "u-boot-env";
+				reg = <0x40000 0x10000>;
+			};
+
+			art: partition@50000 {
+				label = "art";
+				reg = <0x50000 0x10000>;
+				read-only;
+			};
+
+			partition@60000 {
+				label = "kernel";
+				reg = <0x60000 0x400000>;
+			};
+
+			partition@460000 {
+				label = "reserved";
+				reg = <0x460000 0xba0000>;
+			};
+
+		};
+	};
+
+	flash@1 {
+		compatible = "spi-nand";
+		reg = <1>;
+		spi-max-frequency = <25000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "ubi";
+				reg = <0x0 0x8000000>;
+			};
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	mtd-mac-address = <&art 0x0>;
+	phy-handle = <&swphy4>;
+};
+
+&wmac {
+	status = "okay";
+	mtd-cal-data = <&art 0x1000>;
+	mtd-mac-address = <&art 0x1002>;
+};
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index d7f7eed..a50dfec 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -23,6 +23,7 @@ ath79_setup_interfaces()
 	dlink,dir-505|\
 	engenius,ecb1750|\
 	glinet,gl-ar300m-lite|\
+	glinet,gl-e750|\
 	netgear,ex6400|\
 	netgear,ex7300|\
 	ocedo,koala|\
diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index 3ccd199..e6743e4 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -130,6 +130,21 @@ define Device/glinet_gl-ar750s-nor
 endef
 TARGET_DEVICES += glinet_gl-ar750s-nor
 
+define Device/glinet_gl-e750
+  SOC := qca9531
+  DEVICE_VENDOR := GL.iNet
+  DEVICE_MODEL := GL-E750
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct kmod-usb2 \
+	kmod-usb-storage block-mount
+  KERNEL_SIZE := 4096k
+  IMAGE_SIZE := 131072k
+  PAGESIZE := 2048
+  VID_HDR_OFFSET := 2048
+  BLOCKSIZE := 128k
+  IMAGES += factory.img
+endef
+TARGET_DEVICES += glinet_gl-e750
+
 # fake rootfs is mandatory, pad-offset 129 equals (2 * uimage_header + 0xff)
 define Device/netgear_ath79_nand
   DEVICE_VENDOR := NETGEAR
-- 
2.7.4




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
