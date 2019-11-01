Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEE8EC1C1
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 12:27:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2j/8x64UkYa9QNFR4XQyH6RaseNxBt3g1zwuz+o4SDg=; b=qdNBdICFOcgNZX
	PQuij7DCljnUtmX7cbXNbdnF/EJXYem7u3ayw/ZVgy06vcQnA7UdpeyydjlBoqr4xNA5iZP7GCEBH
	SXWPfCD0vx6VoskzMk0TgOH81fWrIWGPuvu7dFD42EOcsmv0jfCPsMhWiz2fE8PsW2huQlq1rbXV5
	Ox3ldqjQWTO+azsh6GBOf4N+C8960efN6iUyD07xXQKnEaJiUzbjAYMK9q4qTWuoArifxftGrlI6o
	YmzWmZz2gL/Kg6/Pqu8KtjJKh3mhdr4ueL1CEgb5RhGZMVK6PnGQYmrFgg+Y4I2SIvRnrJaL7fBMO
	GGCq07i4lq9yj/PWzlBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQV5h-0005Tw-Ha; Fri, 01 Nov 2019 11:27:41 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQV5M-0005KH-GR
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 11:27:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Cc:To:From;
 bh=ZmRlan6EEKtXoYKS1gfxMdG3lbZTLpNX/VdgaFkFe2c=; 
 b=B5rEkfU+mdCxaNochqfK68mD/OxnL2xp6+dvHBb0FuFikU97doatSF2XFwFPcWcLTTMsNI7PX3fhepjF2R+StuV+UXcA9TU9kL6D3XsrKIUkmvZpP7YP5D8lJOaY2IawRSpSdJUOY03inwerQ9VUE+dAtZhMV0bAfXVX13gKRXs=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 12:27:13 +0100
Message-Id: <20191101112713.10059-2-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191101112713.10059-1-daniel@dd-wrt.com>
References: <20191101112713.10059-1-daniel@dd-wrt.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:71d7:4afe:539a:4a2e
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1iQV4i-0003vm-Hj
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:71d7:4afe:539a:4a2e]
 (helo=localhost.localdomain)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1iQV4i-0003vm-Hj; Fri, 01 Nov 2019 12:26:41 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_042720_978600_B82DD68F 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/1] ipq40xx: ipq4019: Add new device Compex
 WPJ419
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
Cc: mail@adrianschmutzler.de, robimarko@gmail.com,
 Daniel Danzberger <daniel@dd-wrt.com>, lede@allycomm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This device contains 2 flash devices. One NOR (32M) and one NAND (128M).
U-boot and caldata are on the NOR, the firmware on the NAND.

    SoC:    IPQ4019
    CPU:    4x 710MHz ARMv7
    RAM:    256MB
    FLASH:  NOR:32MB NAND:128MB
    ETH:    2x GMAC Gigabit
    POE:    802.3 af/at POE, IEEE802.3af/IEEE802.3at(48-56V)
    WIFI:   1x 2.4Ghz Atheros qca4019 2x2 MU-MIMO
            1x 5.0Ghz Atheros qca4019 2x2 MU-MIMO
    USB:    1x 3.0
    PCI:    1x Mini PCIe
    SIM:    1x Slot
    SD:     1x MicroSD slot
    BTN:    Reset
    LED:    - Power
            - Ethernet
    UART:  1x Serial Port 4 Pin Connector (UART)
           1x Serial Port 6 Pin Connector (High Speed UART)
    POWER: 12V 2A

Installation
------------
Initial flashing can only be done via u-boot using the following commands:

tftpboot openwrt-ipq40xx-generic-compex_wpj419-squashfs-nand-factory.ubi
nand erase.chip; nand write ${fileaddr} 0x0 ${filesize}
res

Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
---
 .../ipq40xx/base-files/etc/board.d/02_network |   1 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   2 +
 .../base-files/lib/upgrade/platform.sh        |   3 +
 .../arch/arm/boot/dts/qcom-ipq4019-wpj419.dts | 374 ++++++++++++++++++
 target/linux/ipq40xx/image/Makefile           |  14 +
 .../901-arm-boot-add-dts-files.patch          |   3 +-
 6 files changed, 396 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts

diff --git a/target/linux/ipq40xx/base-files/etc/board.d/02_network b/target/linux/ipq40xx/base-files/etc/board.d/02_network
index 25402b7eb4..dafd83234e 100755
--- a/target/linux/ipq40xx/base-files/etc/board.d/02_network
+++ b/target/linux/ipq40xx/base-files/etc/board.d/02_network
@@ -48,6 +48,7 @@ ipq40xx_setup_interfaces()
 		ucidef_set_interface_lan "eth0"
 		;;
 	avm,fritzrepeater-3000|\
+	compex,wpj419|\
 	compex,wpj428)
 		ucidef_set_interface_lan "eth0 eth1"
 		;;
diff --git a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 2336ef3c7b..d4e4cc49ec 100644
--- a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -70,6 +70,7 @@ case "$FIRMWARE" in
 		/usr/bin/fritz_cal_extract -i 1 -s 0x3C800 -e 0x207 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1") || \
 		/usr/bin/fritz_cal_extract -i 1 -s 0x3D000 -e 0x207 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1")
 		;;
+	compex,wpj419 |\
 	compex,wpj428 |\
 	engenius,eap1300 |\
 	openmesh,a42 |\
@@ -133,6 +134,7 @@ case "$FIRMWARE" in
 		/usr/bin/fritz_cal_extract -i 1 -s 0x3D000 -e 0x208 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1") || \
 		/usr/bin/fritz_cal_extract -i 1 -s 0x3C000 -e 0x208 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1")
 		;;
+	compex,wpj419 |\
 	compex,wpj428 |\
 	engenius,eap1300 |\
 	openmesh,a42 |\
diff --git a/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh b/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh
index 3445f2b50f..96f865c67e 100644
--- a/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh
@@ -73,6 +73,9 @@ platform_do_upgrade() {
 		CI_KERNPART="linux"
 		nand_do_upgrade "$1"
 		;;
+	compex,wpj419)
+		nand_do_upgrade "$1"
+		;;
 	linksys,ea6350v3 |\
 	linksys,ea8300)
 		platform_do_upgrade_linksys "$1"
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
new file mode 100644
index 0000000000..b6eb99278b
--- /dev/null
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
@@ -0,0 +1,374 @@
+/* Copyright (c) 2015, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2019, Nguyen Dinh Phi <phi_nguyen@compex.com.sg>
+ *
+ * Permission to use, copy, modify, and/or distribute this software for any
+ * purpose with or without fee is hereby granted, provided that the above
+ * copyright notice and this permission notice appear in all copies.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
+ * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
+ * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
+ * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
+ * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
+ *
+ */
+
+#include "qcom-ipq4019.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/soc/qcom,tcsr.h>
+
+/ {
+	model = "Compex WPJ419";
+	compatible = "compex,wpj419", "qcom,ipq4019";
+
+	memory {
+		device_type = "memory";
+		reg = <0x80000000 0x10000000>;
+	};
+
+	reserved-memory {
+		ranges;
+		rsvd1@87000000 {
+			/* Reserved for other subsystem */
+			reg = <0x87000000 0x500000>;
+			no-map;
+		};
+		wifi_dump@87500000 {
+			reg = <0x87500000 0x600000>;
+			no-map;
+		};
+
+		rsvd2@87B00000 {
+			/* Reserved for other subsystem */
+			reg = <0x87B00000 0x500000>;
+			no-map;
+		};
+	};
+
+	chosen {
+		bootargs-append = " ubi.mtd=ubi root=/dev/ubiblock0_1 clk_ignore_unused";
+	};
+
+	soc {
+		pinctrl@1000000 {
+			mdio_pins: mdio_pinmux {
+				mux_1 {
+					pins = "gpio6";
+					function = "mdio";
+					bias-pull-up;
+				};
+
+				mux_2 {
+					pins = "gpio7";
+					function = "mdc";
+					bias-pull-up;
+				};
+			};
+
+			serial_0_pins: serial_pinmux {
+				mux {
+					pins = "gpio16", "gpio17";
+					function = "blsp_uart0";
+					bias-disable;
+				};
+			};
+
+			serial_1_pins: serial1_pinmux {
+				mux {
+					pins = "gpio8", "gpio9", "gpio10", "gpio11";
+					function = "blsp_uart1";
+					bias-disable;
+				};
+			};
+
+			spi_0_pins: spi_0_pinmux {
+				pinmux {
+					function = "blsp_spi0";
+					pins = "gpio13", "gpio14", "gpio15";
+					bias-disable;
+				};
+
+				pinmux_cs {
+					function = "gpio";
+					pins = "gpio12";
+					bias-disable;
+					output-high;
+				};
+			};
+
+			i2c_0_pins: i2c_0_pinmux {
+				mux {
+					pins = "gpio20", "gpio21";
+					function = "blsp_i2c0";
+					bias-disable;
+				};
+			};
+
+			nand_pins: nand_pins {
+				pullups {
+					pins = "gpio52", "gpio53", "gpio58", "gpio59";
+					function = "qpic";
+					bias-pull-up;
+				};
+
+				pulldowns {
+					pins = "gpio54", "gpio55", "gpio56",
+					"gpio57", "gpio60", "gpio61",
+					"gpio62", "gpio63", "gpio64",
+					"gpio65", "gpio66", "gpio67",
+					"gpio68", "gpio69";
+					function = "qpic";
+					bias-pull-down;
+				};
+			};
+
+			led_0_pins: led0_pinmux {
+				mux_1 {
+					pins = "gpio36";
+					function = "led0";
+					bias-pull-down;
+				};
+				mux_2 {
+					pins = "gpio40";
+					function = "led4";
+					bias-pull-down;
+				};
+			};
+		};
+
+		blsp_dma: dma@7884000 {
+			status = "okay";
+		};
+
+		spi_0: spi@78b5000 {
+			pinctrl-0 = <&spi_0_pins>;
+			pinctrl-names = "default";
+			status = "okay";
+			cs-gpios = <&tlmm 12 GPIO_ACTIVE_HIGH>, <&tlmm 41 GPIO_ACTIVE_HIGH>;
+			num-cs = <2>;
+
+			flash0@0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+				reg = <0>;
+				compatible = "jedec,spi-nor";
+				spi-max-frequency = <24000000>;
+				broken-flash-reset;
+
+				partitions {
+					compatible = "fixed-partitions";
+
+					partition@0 {
+						label = "0:SBL1";
+						reg = <0x000000 0x040000>;
+						read-only;
+					};
+
+					partition@40000 {
+						label = "0:MIBIB";
+						reg = <0x040000 0x020000>;
+						read-only;
+					};
+
+					partition@60000 {
+						label = "0:QSEE";
+						reg = <0x060000 0x060000>;
+						read-only;
+					};
+
+					partition@c0000 {
+						label = "0:CDT";
+						reg = <0x0c0000 0x010000>;
+						read-only;
+					};
+
+					partition@d0000 {
+						label = "0:DDRPARAMS";
+						reg = <0x0d0000 0x010000>;
+						read-only;
+					};
+
+					partition@e0000 {
+						label = "u-boot-env";
+						reg = <0x0e0000 0x010000>;
+					};
+
+					partition@f0000 {
+						label = "u-boot";
+						reg = <0x0f0000 0x080000>;
+						read-only;
+					};
+
+					partition@170000 {
+						label = "0:ART";
+						reg = <0x170000 0x010000>;
+						read-only;
+					};
+				};
+			};
+
+			nand@1 {
+				reg = <1>;
+				status = "okay";
+				compatible = "spi-nand";
+				spi-max-frequency = <24000000>;
+
+				partitions {
+					compatible = "fixed-partitions";
+					#address-cells = <1>;
+					#size-cells = <1>;
+
+					/* The device has 128MB, but we can only address
+					 * 64MB because of the bootloader's default settings.
+					 * This is due to the old mt29f driver,
+					 * which detected the deivce with only 64MB
+					 */
+					partition@0 {
+						label = "ubi";
+						reg = <0x0000000 0x4000000>;
+					};
+				};
+			};
+		};
+
+		mdio@90000 {
+			status = "okay";
+			phy-reset-gpio = <&tlmm 47 0>;
+			pinctrl-0 = <&mdio_pins>;
+			pinctrl-names = "default";
+		};
+
+		ess-psgmii@98000 {
+			status = "okay";
+		};
+
+		tcsr@194b000 {
+			/* select hostmode */
+			compatible = "qcom,tcsr";
+			reg = <0x194b000 0x100>;
+			qcom,usb-hsphy-mode-select = <TCSR_USB_HSPHY_HOST_MODE>;
+			status = "okay";
+		};
+
+		tcsr@1949000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1949000 0x100>;
+			qcom,wifi_glb_cfg = <TCSR_WIFI_GLB_CFG>;
+		};
+
+		ess_tcsr@1953000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1953000 0x1000>;
+			qcom,ess-interface-select = <TCSR_ESS_PSGMII>;
+		};
+
+		tcsr@1957000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1957000 0x100>;
+			qcom,wifi_noc_memtype_m0_m2 = <TCSR_WIFI_NOC_MEMTYPE_M0_M2>;
+		};
+
+		i2c_0: i2c@78b7000 {
+			pinctrl-0 = <&i2c_0_pins>;
+			pinctrl-names = "default";
+			status = "ok";
+		};
+
+		serial@78af000 {
+			pinctrl-0 = <&serial_0_pins>;
+			pinctrl-names = "default";
+			status = "okay";
+		};
+
+		serial@78b0000 {
+			pinctrl-0 = <&serial_1_pins>;
+			pinctrl-names = "default";
+			status = "okay";
+		};
+
+		usb3_ss_phy: ssphy@9a000 {
+			status = "okay";
+		};
+
+		usb3_hs_phy: hsphy@a6000 {
+			status = "okay";
+		};
+
+		usb3: usb3@8af8800 {
+			status = "okay";
+		};
+
+		usb2_hs_phy: hsphy@a8000 {
+			status = "okay";
+		};
+
+		usb2: usb2@60f8800 {
+			status = "okay";
+		};
+
+		cryptobam: dma@8e04000 {
+			status = "okay";
+		};
+
+		crypto@8e3a000 {
+			status = "okay";
+		};
+
+		watchdog@b017000 {
+			status = "okay";
+		};
+
+		ess-switch@c000000 {
+			switch_lan_bmp = <0x1e>;
+			switch_wan_bmp = <0x20>;
+			status = "okay";
+		};
+
+		edma@c080000 {
+			status = "okay";
+		};
+
+		qpic_bam: dma@7984000 {
+			status = "okay";
+		};
+
+		pcie0: pci@40000000 {
+			status = "okay";
+			perst-gpio = <&tlmm 38 GPIO_ACTIVE_LOW>;
+			wake-gpio = <&tlmm 50 GPIO_ACTIVE_LOW>;
+		};
+
+		nand: qpic-nand@79b0000 {
+			pinctrl-0 = <&nand_pins>;
+			pinctrl-names = "default";
+			status = "okay";
+		};
+	};
+};
+
+&gmac0 {
+	qcom,phy_mdio_addr = <4>;
+	qcom,poll_required = <1>;
+	qcom,forced_speed = <1000>;
+	qcom,forced_duplex = <1>;
+	vlan_tag = <2 0x20>;
+};
+
+&gmac1 {
+	qcom,phy_mdio_addr = <3>;
+	qcom,poll_required = <1>;
+	qcom,forced_speed = <1000>;
+	qcom,forced_duplex = <1>;
+	vlan_tag = <1 0x10>;
+};
+
+&wifi0 {
+	status = "okay";
+};
+
+&wifi1 {
+	status = "okay";
+};
diff --git a/target/linux/ipq40xx/image/Makefile b/target/linux/ipq40xx/image/Makefile
index ed46bca649..ef80e68393 100644
--- a/target/linux/ipq40xx/image/Makefile
+++ b/target/linux/ipq40xx/image/Makefile
@@ -164,6 +164,20 @@ define Device/avm_fritzrepeater-3000
 endef
 TARGET_DEVICES += avm_fritzrepeater-3000
 
+define Device/compex_wpj419
+	$(call Device/FitImage)
+	$(call Device/UbiFit)
+	DEVICE_VENDOR := Compex
+	DEVICE_MODEL := WPJ419
+	DEVICE_DTS := qcom-ipq4019-wpj419
+	DEVICE_DTS_CONFIG := config@12
+	KERNEL_INSTALL := 1
+	BLOCKSIZE := 128k
+	PAGESIZE := 2048
+	FILESYSTEMS := squashfs
+endef
+TARGET_DEVICES += compex_wpj419
+
 define Device/compex_wpj428
 	$(call Device/FitImage)
 	DEVICE_VENDOR := Compex
diff --git a/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch b/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
index 28ab181e77..711b662690 100644
--- a/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
+++ b/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
@@ -12,7 +12,7 @@ diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
 index b5bd3de87..5a52a0b19 100644
 --- a/arch/arm/boot/dts/Makefile
 +++ b/arch/arm/boot/dts/Makefile
-@@ -785,11 +785,35 @@ dtb-$(CONFIG_ARCH_QCOM) += \
+@@ -785,11 +785,36 @@ dtb-$(CONFIG_ARCH_QCOM) += \
  	qcom-apq8074-dragonboard.dtb \
  	qcom-apq8084-ifc6540.dtb \
  	qcom-apq8084-mtp.dtb \
@@ -42,6 +42,7 @@ index b5bd3de87..5a52a0b19 100644
 +	qcom-ipq4019-qxwlan-e2600ac-c1.dtb \
 +	qcom-ipq4019-qxwlan-e2600ac-c2.dtb \
 +	qcom-ipq4019-unielec-u4019-32m.dtb \
++	qcom-ipq4019-wpj419.dtb \
 +	qcom-ipq4028-wpj428.dtb \
 +	qcom-ipq4029-gl-b1300.dtb \
 +	qcom-ipq4029-mr33.dtb \
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
