Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0693CA43B6
	for <lists+openwrt-devel@lfdr.de>; Sat, 31 Aug 2019 11:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W77w/hcb0+GJpp9prI0h+eKQ5N7yYFf547HsIzc5V3A=; b=nBujO4xrcjNKQ5
	8GswhGKvItbq1z3W90SsDN0sBeNlWq+D5jw+l0iG+dUfrnRlRmDwoVZvHcBHtrUuOuyIId/xU15bv
	o5ePgPyk0Rb16HZcZ7ukYPZnQU8QFuhYzTD16HGNqYfn3B53YxlnLYtmkXwf8VjnqSb6iKOp3R9S1
	V8lsFQbVi7O04fzuXcZgD2L5xfbEI2y54oEFlef2swvW9Q/19EOPU7Gy/psDIAw4mDh7JmujqRGF4
	9xWzSc+c0MNJqYOR14FKiWep4AF7YrEdRTp/lJ77RkKfTFsyk8nBAKtmudfMGHapINwssinqi2wZm
	X/2Fq3RV46bdu1DbWYEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3zre-0007n9-V3; Sat, 31 Aug 2019 09:40:11 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3zrG-0007mX-AP
 for openwrt-devel@lists.openwrt.org; Sat, 31 Aug 2019 09:39:48 +0000
Received: by mail-lj1-x242.google.com with SMTP id l14so8626810lje.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 31 Aug 2019 02:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l+VeEax6gGOVZSx+W4Qv6Z3GKREJFreMZFjbDbNOdY4=;
 b=BWgWetBQLG3AIfyoGcWUutSBs6FTBqfcoS7i4JeHk/8gjtviNjkysjBdZDtXwuXKmn
 szWomJ1VS0N2YALf/q5RHIqyPZBvmMbTcMAQKNYPBT1duxKBb3557WI9FeFpcQ1go/qg
 FXjdo3dXPSd6a0Ipwi7UiaJh0A9h3+RdNdXkARTiL6aawguv+KWaamwRo/jOmYYZ4iaH
 gRVRCzOugMMrlmb7xTBhTHKi1rKsKDKmWRdjoD/XD8nJ0oHW4o3Amn+thT83LNkETCD+
 0JjVTqVRa2Bxfet9pvknTF+thKRVdcTbliAU3077SoQxX4ggzAl/zsTWCwTui+QOdNAV
 Du9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l+VeEax6gGOVZSx+W4Qv6Z3GKREJFreMZFjbDbNOdY4=;
 b=Z0pRJzQKpqzpjSCQuNtw2ZBERy3ZVW0CxwutIrasqItsSyGRDFAA3P+xdM7l622zDa
 rjx0PEBMJZABh8CXeCsvKF6XKe2sMXuGvcBj/I4uUoLzdxLwBrEjKQ802B2VaSm3CpLe
 yH9AsXND59kSf0t3gDlOX0icosmoSgt7lyvu6Onx+DYxi9G6w/MNFhYa71ODgdQenj2Z
 uz77lqJJTjgfNHqoUW+FtkIFcCYbxoEzlkPMoIWXEr/SoLEppKvPLDTRZUZ7k3Lprlmx
 +WjTvb5WPDLDXmx343LfbbMqDVtvUoUSQ48oVAt7MuE6jl47obp1gGvDm+2yFEBAnS9c
 6BqQ==
X-Gm-Message-State: APjAAAUDTFDNUcFYpQe3pt0lHP+wuPLZU3SalF6HpftlzswczubwkSjM
 T/UObsi/ZZXS2PJEyyoXFYrNr9Xu4gc=
X-Google-Smtp-Source: APXvYqxogUUhxhDwN2tOCPEPLcPos1ImmQuOQznTs0fpgplgk6/qPHXw9j2Jsu/Sinsp+7O/edbTcA==
X-Received: by 2002:a2e:91da:: with SMTP id u26mr10883870ljg.125.1567244378256; 
 Sat, 31 Aug 2019 02:39:38 -0700 (PDT)
Received: from localhost.localdomain ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id u11sm1375963lfu.47.2019.08.31.02.39.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 31 Aug 2019 02:39:37 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 31 Aug 2019 11:39:36 +0200
Message-Id: <20190831093936.20621-1-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_023946_393861_E8B40996 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2] ipq40xx: Add support for Unielec U4019
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
Cc: Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This commit adds support for the 32MB storage/512MB RAM version of the U4019
IPQ4019-based board from Unielec. The board has the following specifications:

* Qualcomm IPQ4019 (running at 717MHz)
* 512MB DDR3 RAM (optional 256MB/1GB)
* 32MB SPI NOR (optional 8/16MB or NAND)
* Five gigabit ports (Qualcomm QCA8075)
* 1x 2.4 GHz wifi (QCA4019 hw1.0)
* 1x 5 Ghz wifi (QCA4019 hw1.0)
* 1x mini-PCIe slot (only USB-pins connected)
* 1x SIM slot (mini-SIM)
* 1x USB2.0 port
* 1x button
* 1x controllable LED
* 1x micro SD-card reader

Working:
* Ethernet
* Wifi
* USB-port
* mini-PCIe slot + SIM slot
* Button
* Sysupgrade

Not working:
* SD card slot (no upstream support)

Installation instructions:

In order to install OpenWRT on the U4019, you need to go via the
initramfs-image. The installation steps are as follows:

* Connect to board via serial (header exposed and clearly marked).
* Interrupt bootloader by pressing a button.
* Copy the initramfs-image to your tftp folder, call the file C0A80079.img.
* Give the network interface connected to the U4019 the address
192.168.0.156/24.
* Start your tftp-server and run tftpboot on the board.
* Run bootm when the file has been transferred, to boot OpenWRT.
* Once OpenWRT has booted, copy the sysupgrade-image to the device and run
sysupgrade to install OpenWRT on the U4019.

Notes:

- Since IPQ4019 has been moved to 4.19, I have not added support for kernel
4.14.

- There is a bug with hardware encryption on IPQ4019, causing poor performance
with TCP and ipsec (see for example FS#2355). In order to improve performance,
I have disabled hardware encryption in the DTS. We can enable hw. enc. once/if
bug is fixed.

- In order for Ethernet to work, the phy has to be reset by setting gpio 47
low/high. Adding support for phy reset via gpio required patching the
mdio-driver, and the code added comes from the vendor driver. I do not know if
patching the driver is an acceptable approach or not.

v1->v2:
* Do not use wildcard as identifier in the board.d-scripts (thanks
Adrian Schmutzler).

Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>
---
 .../ipq40xx/base-files/etc/board.d/02_network |   5 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   6 +-
 .../dts/qcom-ipq4019-unielec-u4019-32m.dts    |  79 +++++++
 .../boot/dts/qcom-ipq4019-unielec-u4019.dtsi  | 223 ++++++++++++++++++
 target/linux/ipq40xx/image/Makefile           |  13 +
 .../700-net-add-qualcomm-mdio.patch           |  80 ++++++-
 .../901-arm-boot-add-dts-files.patch          |  15 +-
 7 files changed, 410 insertions(+), 11 deletions(-)
 create mode 100644 target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019-32m.dts
 create mode 100644 target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019.dtsi

diff --git a/target/linux/ipq40xx/base-files/etc/board.d/02_network b/target/linux/ipq40xx/base-files/etc/board.d/02_network
index e5ba7260f3..f036dc842f 100755
--- a/target/linux/ipq40xx/base-files/etc/board.d/02_network
+++ b/target/linux/ipq40xx/base-files/etc/board.d/02_network
@@ -61,6 +61,11 @@ ipq40xx_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0u@eth0" "3:lan" "4:lan" "0u@eth1" "5:wan"
 		;;
+	unielec,u4019-32m)
+		ucidef_set_interfaces_lan_wan "eth0" "eth1"
+		ucidef_add_switch "switch0" \
+			"0u@eth0" "1:lan" "2:lan" "3:lan" "4:lan" "0u@eth1" "5:wan"
+		;;
 	*)
 		echo "Unsupported hardware. Network interfaces not initialized"
 		;;
diff --git a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index be57646128..ee1e899fae 100644
--- a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -161,7 +161,8 @@ case "$FIRMWARE" in
 	openmesh,a42 |\
 	openmesh,a62 |\
 	qxwlan,e2600ac-c1 |\
-	qxwlan,e2600ac-c2)
+	qxwlan,e2600ac-c2 |\
+	unielec,u4019-32m)
 		ath10kcal_extract "0:ART" 0x1000 0x2f20
 		;;
 	engenius,ens620ext)
@@ -222,7 +223,8 @@ case "$FIRMWARE" in
 	openmesh,a42 |\
 	openmesh,a62 |\
 	qxwlan,e2600ac-c1 |\
-	qxwlan,e2600ac-c2)
+	qxwlan,e2600ac-c2 |\
+	unielec,u4019-32m)
 		ath10kcal_extract "0:ART" 0x5000 0x2f20
 		;;
 	engenius,ens620ext)
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019-32m.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019-32m.dts
new file mode 100644
index 0000000000..606ac165ba
--- /dev/null
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019-32m.dts
@@ -0,0 +1,79 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+/dts-v1/;
+
+#include "qcom-ipq4019-unielec-u4019.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Unielec U4019 (32M)";
+	compatible = "unielec,u4019-32m","unielec,u4019","qcom,ipq4019";
+};
+
+&blsp1_spi1 {
+	pinctrl-0 = <&spi_0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+	cs-gpios = <&tlmm 12 GPIO_ACTIVE_LOW>;
+
+	flash@0 {
+		reg = <0>;
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <24000000>;
+		broken-flash-reset;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "0:SBL1";
+				reg = <0x0 0x40000>;
+				read-only;
+			};
+			partition@40000 {
+				label = "0:MIBIB";
+				reg = <0x40000 0x20000>;
+				read-only;
+			};
+			partition@60000 {
+				label = "0:QSEE";
+				reg = <0x60000 0x60000>;
+				read-only;
+			};
+			partition@c0000 {
+				label = "0:CDT";
+				reg = <0xc0000 0x10000>;
+				read-only;
+			};
+			partition@d0000 {
+				label = "0:DDRPARAMS";
+				reg = <0xd0000 0x10000>;
+				read-only;
+			};
+			partition@e0000 {
+				label = "0:APPSBLENV";
+				reg = <0xe0000 0x10000>;
+				read-only;
+			};
+			partition@f0000 {
+				label = "0:APPSBL";
+				reg = <0xf0000 0x80000>;
+				read-only;
+			};
+			partition@170000 {
+				label = "0:ART";
+				reg = <0x170000 0x10000>;
+				read-only;
+			};
+			partition@180000 {
+				compatible = "denx,fit";
+				label = "firmware";
+				reg = <0x180000 0x1e80000>;
+			};
+		};
+	};
+};
+
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019.dtsi b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019.dtsi
new file mode 100644
index 0000000000..cf67fddd2b
--- /dev/null
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-unielec-u4019.dtsi
@@ -0,0 +1,223 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include "qcom-ipq4019.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/soc/qcom,tcsr.h>
+
+/ {
+	compatible = "unielec,u4019","qcom,ipq4019";
+
+	soc {
+		rng@22000 {
+			status = "okay";
+		};
+
+		mdio@90000 {
+			status = "okay";
+			pinctrl-0 = <&mdio_pins>;
+			pinctrl-names = "default";
+			phy-reset-gpio = <&tlmm 47 0>;
+		};
+
+		ess-psgmii@98000 {
+			status = "okay";
+		};
+
+		tcsr@1949000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1949000 0x100>;
+			qcom,wifi_glb_cfg = <TCSR_WIFI_GLB_CFG>;
+		};
+
+		tcsr@194b000 {
+			compatible = "qcom,tcsr";
+			reg = <0x194b000 0x100>;
+			qcom,usb-hsphy-mode-select = <TCSR_USB_HSPHY_HOST_MODE>;
+			status = "okay";
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
+		usb2@60f8800 {
+			status = "okay";
+
+			dwc3@6000000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@1 {
+					reg = <1>;
+					#trigger-source-cells = <0>;
+				};
+			};
+		};
+
+		usb3@8af8800 {
+			status = "okay";
+
+			dwc3@8a00000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@1 {
+					reg = <1>;
+					#trigger-source-cells = <0>;
+				};
+
+				port@2 {
+					reg = <2>;
+					#trigger-source-cells = <0>;
+				};
+			};
+		};
+
+		watchdog@b017000 {
+			status = "okay";
+		};
+
+		ess-switch@c000000 {
+			status = "okay";
+		};
+
+		edma@c080000 {
+			status = "okay";
+		};
+
+		aliases {
+			led-boot = &led_status;
+			led-failsafe = &led_status;
+			led-running = &led_status;
+			led-upgrade = &led_status;
+			serial0 = &blsp1_uart1;
+			serial1 = &blsp1_uart2;
+		};
+
+		leds {
+			compatible = "gpio-leds";
+			pinctrl-0 = <&led_pins>;
+			pinctrl-names = "default";
+
+			led_status: led2 {
+				label = "u4019:green:led2";
+				gpios = <&tlmm 68 GPIO_ACTIVE_LOW>;
+			};
+		};
+
+		keys {
+			compatible = "gpio-keys";
+
+			reset {
+				label = "reset";
+				gpios = <&tlmm 18 GPIO_ACTIVE_LOW>;
+				linux,code = <KEY_RESTART>;
+			};
+		};
+	};
+};
+
+&blsp_dma {
+	status = "okay";
+};
+
+&blsp1_uart1 {
+	pinctrl-0 = <&serial_0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&blsp1_uart2 {
+	pinctrl-0 = <&serial_1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&qpic_bam {
+	status = "okay";
+};
+
+&tlmm {
+	mdio_pins: mdio_pinmux {
+		mux_1 {
+			pins = "gpio6";
+			function = "mdio";
+			bias-pull-up;
+		};
+		mux_2 {
+			pins = "gpio7";
+			function = "mdc";
+			bias-pull-up;
+		};
+	};
+
+	serial_0_pins: serial0-pinmux {
+		mux {
+			pins = "gpio16", "gpio17";
+			function = "blsp_uart0";
+			bias-disable;
+		};
+	};
+	serial_1_pins: serial1_pinmux {
+		mux {
+			pins = "gpio8", "gpio9";
+			function = "blsp_uart1";
+			bias-disable;
+		};
+	};
+
+	spi_0_pins: spi_0_pinmux {
+		pinmux {
+			function = "blsp_spi0";
+			pins = "gpio13", "gpio14", "gpio15";
+			drive-strength = <12>;
+			bias-disable;
+		};
+
+		pinmux_cs {
+			function = "gpio";
+			pins = "gpio12";
+			drive-strength = <2>;
+			bias-disable;
+			output-high;
+		};
+	};
+
+	led_pins: led_pinmux {
+		mux {
+			function = "gpio";
+			pins = "gpio68";
+			bias-disabled;
+			output-low;
+		};
+	};
+};
+
+&usb3_ss_phy {
+	status = "okay";
+};
+
+&usb3_hs_phy {
+	status = "okay";
+};
+
+&usb2_hs_phy {
+	status = "okay";
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
index 4572ab461d..8907eb756b 100644
--- a/target/linux/ipq40xx/image/Makefile
+++ b/target/linux/ipq40xx/image/Makefile
@@ -404,6 +404,19 @@ define Device/qxwlan_e2600ac-c2
 endef
 TARGET_DEVICES += qxwlan_e2600ac-c2
 
+define Device/unielec_u4019-32m
+	$(call Device/FitImage)
+	DEVICE_VENDOR := Unielec
+	DEVICE_MODEL := U4019 (32M)
+	BOARD_NAME := u4019-32m
+	DEVICE_DTS := qcom-ipq4019-unielec-u4019-32m
+	KERNEL_SIZE := 4096k
+	IMAGE_SIZE := 31232k
+	IMAGES := sysupgrade.bin
+	IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata
+endef
+TARGET_DEVICES += unielec_u4019-32m
+
 define Device/zyxel_nbg6617
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := ZyXEL
diff --git a/target/linux/ipq40xx/patches-4.19/700-net-add-qualcomm-mdio.patch b/target/linux/ipq40xx/patches-4.19/700-net-add-qualcomm-mdio.patch
index e939597b8e..4be25186e6 100644
--- a/target/linux/ipq40xx/patches-4.19/700-net-add-qualcomm-mdio.patch
+++ b/target/linux/ipq40xx/patches-4.19/700-net-add-qualcomm-mdio.patch
@@ -1,6 +1,20 @@
+From 234d6f40fb4b771b396b45a9492aab463771bd0b Mon Sep 17 00:00:00 2001
+From: Kristian Evensen <kristian.evensen@gmail.com>
+Date: Tue, 6 Aug 2019 11:42:57 +0200
+Subject: [PATCH] phy: Add ipq40xx mdio driver
+
+---
+ drivers/net/phy/Kconfig        |   7 +
+ drivers/net/phy/Makefile       |   1 +
+ drivers/net/phy/mdio-ipq40xx.c | 247 +++++++++++++++++++++++++++++++++
+ 3 files changed, 255 insertions(+)
+ create mode 100644 drivers/net/phy/mdio-ipq40xx.c
+
+diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
+index 1f5fd24cd..eb71b47a3 100644
 --- a/drivers/net/phy/Kconfig
 +++ b/drivers/net/phy/Kconfig
-@@ -519,6 +519,13 @@ config XILINX_GMII2RGMII
+@@ -436,6 +436,13 @@ config XILINX_GMII2RGMII
  	  the Reduced Gigabit Media Independent Interface(RGMII) between
  	  Ethernet physical media devices and the Gigabit Ethernet controller.
  
@@ -14,9 +28,11 @@
  endif # PHYLIB
  
  config MICREL_KS8995MA
+diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
+index f21cda9d8..804c52634 100644
 --- a/drivers/net/phy/Makefile
 +++ b/drivers/net/phy/Makefile
-@@ -48,6 +48,7 @@ obj-$(CONFIG_MDIO_CAVIUM)	+= mdio-cavium
+@@ -33,6 +33,7 @@ obj-$(CONFIG_MDIO_CAVIUM)	+= mdio-cavium.o
  obj-$(CONFIG_MDIO_GPIO)		+= mdio-gpio.o
  obj-$(CONFIG_MDIO_HISI_FEMAC)	+= mdio-hisi-femac.o
  obj-$(CONFIG_MDIO_I2C)		+= mdio-i2c.o
@@ -24,9 +40,12 @@
  obj-$(CONFIG_MDIO_MOXART)	+= mdio-moxart.o
  obj-$(CONFIG_MDIO_MSCC_MIIM)	+= mdio-mscc-miim.o
  obj-$(CONFIG_MDIO_OCTEON)	+= mdio-octeon.o
+diff --git a/drivers/net/phy/mdio-ipq40xx.c b/drivers/net/phy/mdio-ipq40xx.c
+new file mode 100644
+index 000000000..88fe5dc2b
 --- /dev/null
 +++ b/drivers/net/phy/mdio-ipq40xx.c
-@@ -0,0 +1,196 @@
+@@ -0,0 +1,247 @@
 +/*
 + * Copyright (c) 2015-2016, The Linux Foundation. All rights reserved.
 + *
@@ -49,8 +68,10 @@
 +#include <linux/io.h>
 +#include <linux/of_address.h>
 +#include <linux/of_mdio.h>
++#include <linux/of_gpio.h>
 +#include <linux/phy.h>
 +#include <linux/platform_device.h>
++#include <linux/gpio.h>
 +
 +#define MDIO_CTRL_0_REG		0x40
 +#define MDIO_CTRL_1_REG		0x44
@@ -150,11 +171,60 @@
 +	return 0;
 +}
 +
++static int ipq40xx_phy_reset(struct platform_device *pdev)
++{
++	struct device_node *mdio_node;
++	int phy_reset_gpio_number;
++	int ret;
++
++	mdio_node = of_find_node_by_name(NULL, "mdio");
++	if (!mdio_node) {
++		dev_err(&pdev->dev, "Could not find mdio node\n");
++		return -ENOENT;
++	}
++
++	ret = of_get_named_gpio(mdio_node, "phy-reset-gpio", 0);
++	if (ret < 0) {
++		dev_err(&pdev->dev, "Could not find phy-reset-gpio\n");
++		return ret;
++	}
++
++	phy_reset_gpio_number = ret;
++
++	ret = gpio_request(phy_reset_gpio_number, "phy-reset-gpio");
++	if (ret) {
++		dev_err(&pdev->dev, "Can't get phy-reset-gpio %d\n", ret);
++		return ret;
++	}
++
++	ret = gpio_direction_output(phy_reset_gpio_number, 0x0);
++	if (ret) {
++		dev_err(&pdev->dev,
++			"Can't set direction for phy-reset-gpio %d\n", ret);
++		goto phy_reset_out;
++	}
++
++	usleep_range(1000, 10005);
++
++	gpio_set_value(phy_reset_gpio_number, 0x01);
++
++phy_reset_out:
++	gpio_free(phy_reset_gpio_number);
++
++	return ret;
++}
++
 +static int ipq40xx_mdio_probe(struct platform_device *pdev)
 +{
 +	struct ipq40xx_mdio_data *am;
 +	struct resource *res;
-+	int i;
++	int i, ret;
++
++	ret = ipq40xx_phy_reset(pdev);
++	if (ret) {
++		dev_err(&pdev->dev, "Could not find qca8075 reset gpio\n");
++		return -ENODEV;
++	}
 +
 +	am = devm_kzalloc(&pdev->dev, sizeof(*am), GFP_KERNEL);
 +	if (!am)
@@ -223,3 +293,5 @@
 +MODULE_AUTHOR("Qualcomm Atheros");
 +MODULE_VERSION(DRV_VERSION);
 +MODULE_LICENSE("Dual BSD/GPL");
+--
+2.20.1
diff --git a/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch b/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
index a0386f6b66..aa4c0f2e6f 100644
--- a/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
+++ b/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
@@ -1,16 +1,18 @@
-From 8f68331e14dff9a101f2d0e1d6bec84a031f27ee Mon Sep 17 00:00:00 2001
+From a10fab12a927e60b7141a602e740d70cb4d09e4a Mon Sep 17 00:00:00 2001
 From: John Crispin <john@phrozen.org>
 Date: Thu, 9 Mar 2017 11:03:18 +0100
-Subject: [PATCH 69/69] arm: boot: add dts files
+Subject: [PATCH] arm: boot: add dts files
 
 Signed-off-by: John Crispin <john@phrozen.org>
 ---
- arch/arm/boot/dts/Makefile | 8 ++++++++
- 1 file changed, 8 insertions(+)
+ arch/arm/boot/dts/Makefile | 23 +++++++++++++++++++++++
+ 1 file changed, 23 insertions(+)
 
+diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
+index b5bd3de87..5a52a0b19 100644
 --- a/arch/arm/boot/dts/Makefile
 +++ b/arch/arm/boot/dts/Makefile
-@@ -785,11 +785,33 @@ dtb-$(CONFIG_ARCH_QCOM) += \
+@@ -785,11 +785,34 @@ dtb-$(CONFIG_ARCH_QCOM) += \
  	qcom-apq8074-dragonboard.dtb \
  	qcom-apq8084-ifc6540.dtb \
  	qcom-apq8084-mtp.dtb \
@@ -38,9 +40,12 @@ Signed-off-by: John Crispin <john@phrozen.org>
 +	qcom-ipq4019-map-ac2200.dtb \
 +	qcom-ipq4019-qxwlan-e2600ac-c1.dtb \
 +	qcom-ipq4019-qxwlan-e2600ac-c2.dtb \
++	qcom-ipq4019-unielec-u4019-32m.dtb \
 +	qcom-ipq4028-wpj428.dtb \
 +	qcom-ipq4029-gl-b1300.dtb \
 +	qcom-ipq4029-mr33.dtb \
  	qcom-ipq8064-ap148.dtb \
  	qcom-msm8660-surf.dtb \
  	qcom-msm8960-cdp.dtb \
+--
+2.20.1
-- 
2.20.1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
