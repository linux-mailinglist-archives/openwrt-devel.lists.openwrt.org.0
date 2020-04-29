Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 233DB1BD3CA
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Apr 2020 06:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+FEua6p6jsUXdZWR7GpxOow76x1SbMGgfNvOQ2TZXvo=; b=kn8wnV8y8usPHv
	8vUG/AGvFSNbkV14LucAAHu67ZNuvGjo2yreuiQPFKPpkj7B7wS43938VvMy+zEuObMfJuTwLPD86
	oD4TohUXYlgFrGbnoNeQC/7dkoyJR+vdCqgY5nRFjVqv6mGunwGjnFt+Q9YAhFD5TjPVLCHiB1skG
	Xw5ZwrCAwbtMk7EmJSevy9y+gAzluar0KWsvA5hMQxyOnTSluhkYvaCjuWOhPIyiLfDe6lAjQ/1ZH
	uL0oBrN/9akltP15nrkoe5jhtomqLRZBFeyDBOmuycp97ByK0I6fKUPNwb+vPXs8Nzkg0JlnyrLtD
	RC9S/AtvIf6MPyzgUvcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTeV8-0006Sv-2Q; Wed, 29 Apr 2020 04:39:14 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTeUy-0006O9-Gv
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 04:39:08 +0000
X-QQ-mid: bizesmtp18t1588135110tdm63u9s
Received: from luo-B250M-D3H.lan (unknown [116.30.122.215])
 by esmtp6.qq.com (ESMTP) with 
 id ; Wed, 29 Apr 2020 12:38:29 +0800 (CST)
X-QQ-SSF: 01100000001000Z0ZL20000A0000000
X-QQ-FEAT: 5cW5f8fCC4BfEf6IiE/bBsO5MiruFLzlWtikPxqjAlepptBXlf2s9UtiemJjA
 Ya9t2v1hPZWdZLCIx6FL4DSt1gUMwRUP4OtO6PMsNrdT181h8r3caLBZEf6NjSeeC6UDXt5
 WAGnryJy6g4rZoBtA2keytuObyptFeo6I0J8s3ghBfW55R/fp0CTDMHXwFqYMHRv1u1XL9e
 27pMg3p7r1aK5qlOT3DNpQP87EkXAXyWOufYfvaMUvbgF118eoCm4OTcWJKzd/osnK7Qga4
 i/feJkosX80fSgER/jc0RZVQiVs8k2cHZgoO/+LTYKTQFto0khzro1b6oupxNGLsIDS7fU3
 4F7/qJDxyiZD0p4/FE=
X-QQ-GoodBg: 0
From: Luochongjun <luochongjun@gl-inet.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 Apr 2020 12:38:26 +0800
Message-Id: <1588135106-26552-1-git-send-email-luochongjun@gl-inet.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign6
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_213904_928957_B92F5C3F 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.254.200.128 listed in list.dnswl.org]
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
 target/linux/ath79/dts/qca9531_glinet_gl-e750.dts  | 146 +++++++++++++++++++++
 .../generic/base-files/etc/board.d/02_network      |   3 +
 target/linux/ath79/image/nand.mk                   |  21 +++
 3 files changed, 170 insertions(+)
 create mode 100644 target/linux/ath79/dts/qca9531_glinet_gl-e750.dts

diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-e750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-e750.dts
new file mode 100644
index 0000000..36ba376
--- /dev/null
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-e750.dts
@@ -0,0 +1,146 @@
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
+		compatible = "gpio-keys-polled";
+
+		poll-interval = <20>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&jtag_disable_pins>;
+
+		button0 {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 3 GPIO_ACTIVE_LOW>;
+		};
+
+		button1 {
+			label = "right";
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
+                        gpio-export,name = "4G POWER";
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
+				reg = <0x000000 0x040000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "u-boot-env";
+				reg = <0x040000 0x010000>;
+			};
+
+			art: partition@50000 {
+				label = "art";
+				reg = <0x050000 0x010000>;
+				read-only;
+			};
+
+			partition@60000 {
+				label = "kernel";
+				reg = <0x060000 0x400000>;
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
+				reg = <0x000000 0x8000000>;
+			};
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
+	mtd-mac-address = <&art 0x0>;
+	phy-handle = <&swphy4>;
+};
+
+&eth1 {
+	mtd-mac-address = <&art 0x0>;
+	mtd-mac-address-increment = <1>;
+};
+
+&wmac {
+	status = "okay";
+	mtd-cal-data = <&art 0x1000>;
+	mtd-mac-address = <&art 0x1002>;
+};
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index d7f7eed..1e80c68 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -63,6 +63,9 @@ ath79_setup_interfaces()
 	winchannel,wb2000)
 		ucidef_set_interface_lan "eth0"
 		;;
+	glinet,gl-e750)
+		ucidef_set_interface_lan "eth1"
+		;;
 	avm,fritz4020|\
 	pcs,cr3000|\
 	tplink,archer-c58-v1|\
diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index 3ccd199..6518f99 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -130,6 +130,27 @@ define Device/glinet_gl-ar750s-nor
 endef
 TARGET_DEVICES += glinet_gl-ar750s-nor
 
+define Device/glinet_gl-e750
+  SOC := qca9531
+  DEVICE_VENDOR := GL.iNet
+  DEVICE_MODEL := GL-E750
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9887-ct kmod-usb2 \
+	kmod-usb-storage block-mount
+  KERNEL_SIZE := 2048k
+  IMAGE_SIZE := 16000k
+  PAGESIZE := 2048
+  VID_HDR_OFFSET := 2048
+  DEVICE_VARIANT := NOR/NAND
+  BLOCKSIZE := 128k
+  GL_UBOOT_UBI_OFFSET := 2048k
+  IMAGES += factory.img
+  IMAGE/factory.img := append-kernel | pad-to $$$$(GL_UBOOT_UBI_OFFSET) | \
+	append-ubi | check-kernel-size $$$$(GL_UBOOT_UBI_OFFSET)
+  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
+  SUPPORTED_DEVICES += glinet,gl-e750
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
