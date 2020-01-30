Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BFC14E063
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Jan 2020 19:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lpRWZNK3WTtId0CJIbue+7z1mzZ32x1Fec+ZMGgjDDo=; b=txJtmigZyiNXN7
	EJfw97sznzbWowzmUFG1E/Q4VWK5hzmZ0dK+v/LqwnBWnWkHhg8PtSlBkPm0QRG4K2ZWmV4GTHvSc
	gff4ctwGjlR4/eIOQIZ/eDEM/MUV9Facdpb6uGe4RB0fYJnx+lx2XyuSov+3dmFYjt+RMS/reMaUw
	SlcYhQH1MYG1PsiwkWqNjSMzV3vKkUUYyXvhKQjzEaN/XvikVb2IY9QcA/JpCYvPWYVXs7T9D5iQK
	rjpOfwFVQ10o438VuEWBwOq4MWiO0dD5RqB4QFh9ZHL1KUR7zYLDbAK8nyvJLGsnI9GtX7DsUppZh
	FFvKkMUB0ijA9V8J+Msg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixE7J-0008Nn-60; Thu, 30 Jan 2020 18:00:37 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixE79-0008Lm-DG
 for openwrt-devel@lists.openwrt.org; Thu, 30 Jan 2020 18:00:29 +0000
Received: from buildfff.adridolf.com ([188.195.207.249]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MC2wN-1irTsR18Cj-00CVaA; Thu, 30 Jan 2020 19:00:22 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 30 Jan 2020 18:59:35 +0100
Message-Id: <20200130175935.18226-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZUu86mQpPNpJD3ckCXvAUy8HZ69SS3kssK0kfI+UI90SmrGLNex
 a1WE/Aw9fC6gEvfutamgy7VPu1rZVGggPXoMdHKKX0/XlMIoCud2UOIOJNOWwsr0Xt3R7sI
 jsm+sCeGgz9a410ZGLVsWEAPCTsgZtUXrDEhHzfcoYkFDEomcvybOCVkH8XUXFTNgImh1j6
 V7mCarDr4wiAk+mVfGjvQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HOU7HLC/c/Y=:lF1Jeun7vYnDcSZWGtrs8R
 AiYgvqSi8qU2Nl/qNHz3lXm3MHPx0hG3CU6lNNQMcAbGzSXVQpl2SUOx9oF6dGzXILdb55B08
 fRVu4kv9wczAC0ijt65EW7I1ySsfulvGM8SX8G4gk9TnVD/Q4pBYBtixxkdvib8/fG7Gnl8sp
 65CupuqfJCpYUsj/yrZ2xD3fJ2t4OiXtP3RY/jO12Jbz5UBGSdNbsUqqbcOng2kx+3XhXB+yG
 4keYYlgmlfr0hIKBFuBspboi7ZHlK2KnPkczvSaM8K2bf5HVHxx1WlEoy3zWIHMKuHMA1r+Dj
 pfcJCjltI4GSw1Idi8qtG+Cn93u+fAzb4iVhKIfPKYzKde01GOM4QioJ1/4bsasKO+2CQTstQ
 cJddw6MtbO5rJOpsXhEUbMrzNRm3SABqyzDOY9wFh1tnsv50gYnwuh1x9qxqWSPyUHVeOuPGp
 BxM+YIkYhAYHlwvPqHgFVHTu0tH/WVKXt4BP1utOF6C/u6lwhnhrHpfwuR6IoBJxERtxc8MNB
 05+FEp3mQSsXYi3Y2t690yd887EL3ZdHwZsTQ1QvEafzUbX5rgS+C1UDarVHHGgxi60WYne2Q
 WXZM568YmKdxwi/3v9o3TbgScjGbYGv1jDbYmldpoQY3OpajIN30hIQ8QBC57UFaVEpYMKMM1
 aZNaGUUhLBCXZ3vQkQfcbKJJasKBRhiFYLKWj4PvXtKQGvGXq0ciwDC9KqJHLMrO09IWql2CJ
 LbFfANIax8bngeEIrJIf6YB2Z3SUJeWM/50rrHfh5f3/msZNd8MBOx05JGF72DRgy+q9gtSfv
 8N/xipnh4mE2OYROzzJqny1RgeG6vayof7/pxcR8NWZnawue0Rd46tp0HX8sGQYoVOC4o2j
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_100027_747665_55FCBF38 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] mediatek: mt7623: remove left-over
 fragments of mt7623a-rfb-emmc
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
Cc: John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The image creation for the mt7623a-rfb-emmc has been removed during
a patch refresh without specific comment. The corresponding base-files
entries and DTS patches for 4.14 are still there.

Since mt7623 is pretty dead and nobody has missed this device, let's
just remove the rest.

Fixes: 050da2107a7e ("mediatek: backport upstream mediatek patches")

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Acked-by: John Crispin <john@phrozen.org>

---

As discussed with John, this is a replacement for the patch
[OpenWrt-Devel,RFC,RFT,2/2] mediatek: mt7623: add back images for mt7623a-rfb-emmc

Just sending it here for documentation.

---
 .../mt7623/base-files/etc/board.d/02_network  |   4 -
 .../mediatek/patches-4.14/0064-dts.patch      | 462 ------------------
 2 files changed, 466 deletions(-)

diff --git a/target/linux/mediatek/mt7623/base-files/etc/board.d/02_network b/target/linux/mediatek/mt7623/base-files/etc/board.d/02_network
index 07fd63fba7..391b1ddc07 100755
--- a/target/linux/mediatek/mt7623/base-files/etc/board.d/02_network
+++ b/target/linux/mediatek/mt7623/base-files/etc/board.d/02_network
@@ -9,10 +9,6 @@ mediatek_setup_interfaces()
 	local board="$1"
 
 	case $board in
-	mediatek,mt7623a-rfb-emmc)
-		ucidef_set_interface_lan "lan0 lan1 lan2 lan3"
-		ucidef_set_interface_wan eth1
-		;;
 	bananapi,bpi-r2|\
 	unielec,u7623-02-emmc-512m)
 		ucidef_set_interfaces_lan_wan "lan0 lan1 lan2 lan3" "wan"
diff --git a/target/linux/mediatek/patches-4.14/0064-dts.patch b/target/linux/mediatek/patches-4.14/0064-dts.patch
index a2f5000d4d..ec9adfbb48 100644
--- a/target/linux/mediatek/patches-4.14/0064-dts.patch
+++ b/target/linux/mediatek/patches-4.14/0064-dts.patch
@@ -115,468 +115,6 @@
  
  &i2c0 {
  	pinctrl-names = "default";
---- a/arch/arm/boot/dts/Makefile
-+++ b/arch/arm/boot/dts/Makefile
-@@ -1061,6 +1061,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
- 	mt6580-evbp1.dtb \
- 	mt6589-aquaris5.dtb \
- 	mt6592-evb.dtb \
-+	mt7623a-rfb-emmc.dtb \
- 	mt7623n-rfb-nand.dtb \
- 	mt7623n-bananapi-bpi-r2.dtb \
- 	mt8127-moose.dtb \
---- /dev/null
-+++ b/arch/arm/boot/dts/mt7623a-rfb-emmc.dts
-@@ -0,0 +1,449 @@
-+/*
-+ * Copyright 2017 Sean Wang <sean.wang@mediatek.com>
-+ *
-+ * SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-+ */
-+
-+/dts-v1/;
-+#include <dt-bindings/input/input.h>
-+#include "mt7623.dtsi"
-+#include "mt6323.dtsi"
-+
-+/ {
-+	model = "MediaTek MT7623N NAND reference board";
-+	compatible = "mediatek,mt7623a-rfb-emmc", "mediatek,mt7623";
-+
-+	aliases {
-+		serial2 = &uart2;
-+	};
-+
-+	chosen {
-+		bootargs = "earlyprintk block2mtd.block2mtd=/dev/mmcblk0,65536,eMMC,5 mtdparts=eMMC:256k(mbr)ro,512k(uboot)ro,256k(config)ro,256k(factory)ro,32M(kernel),32M(recovery),1024M(rootfs),2048M(usrdata),-(bmtpool) rootfstype=squashfs,jffs2";
-+
-+		stdout-path = "serial2:115200n8";
-+	};
-+
-+	memory {
-+		reg = <0 0x80000000 0 0x20000000>;
-+	};
-+
-+	cpus {
-+		cpu@0 {
-+			proc-supply = <&mt6323_vproc_reg>;
-+		};
-+
-+		cpu@1 {
-+			proc-supply = <&mt6323_vproc_reg>;
-+		};
-+
-+		cpu@2 {
-+			proc-supply = <&mt6323_vproc_reg>;
-+		};
-+
-+		cpu@3 {
-+			proc-supply = <&mt6323_vproc_reg>;
-+		};
-+	};
-+
-+	memory@80000000 {
-+		reg = <0 0x80000000 0 0x40000000>;
-+	};
-+
-+	mt7530: switch@0 {
-+		compatible = "mediatek,mt7530";
-+		#address-cells = <1>;
-+		#size-cells = <0>;
-+	};
-+};
-+
-+&crypto {
-+	status = "okay";
-+};
-+
-+&eth {
-+	status = "okay";
-+
-+	gmac0: mac@0 {
-+		compatible = "mediatek,eth-mac";
-+		reg = <0>;
-+		phy-mode = "trgmii";
-+
-+		fixed-link {
-+			speed = <1000>;
-+			full-duplex;
-+			pause;
-+		};
-+	};
-+
-+	gmac1: mac@1 {
-+		compatible = "mediatek,eth-mac";
-+		reg = <1>;
-+		phy-mode = "rgmiii-rxid";
-+		phy-handle = <&phy5>;
-+	};
-+
-+	mdio: mdio-bus {
-+		#address-cells = <1>;
-+		#size-cells = <0>;
-+		phy5: ethernet-phy@5 {
-+			reg = <5>;
-+			phy-mode = "rgmii-rxid";
-+		};
-+	};
-+};
-+
-+&mt7530 {
-+	compatible = "mediatek,mt7530";
-+	#address-cells = <1>;
-+	#size-cells = <0>;
-+	reg = <0>;
-+	pinctrl-names = "default";
-+	mediatek,mcm;
-+	resets = <&ethsys 2>;
-+	reset-names = "mcm";
-+	core-supply = <&mt6323_vpa_reg>;
-+	io-supply = <&mt6323_vemc3v3_reg>;
-+
-+	dsa,mii-bus = <&mdio>;
-+
-+	ports {
-+		#address-cells = <1>;
-+		#size-cells = <0>;
-+		reg = <0>;
-+
-+		port@0 {
-+			reg = <0>;
-+			label = "lan0";
-+			cpu = <&cpu_port0>;
-+		};
-+
-+		port@1 {
-+			reg = <1>;
-+			label = "lan1";
-+			cpu = <&cpu_port0>;
-+		};
-+
-+		port@2 {
-+			reg = <2>;
-+			label = "lan2";
-+			cpu = <&cpu_port0>;
-+		};
-+
-+		port@3 {
-+			reg = <3>;
-+			label = "lan3";
-+			cpu = <&cpu_port0>;
-+		};
-+
-+		cpu_port0: port@6 {
-+			reg = <6>;
-+			label = "cpu";
-+			ethernet = <&gmac0>;
-+			phy-mode = "trgmii";
-+
-+			fixed-link {
-+				speed = <1000>;
-+				full-duplex;
-+			};
-+		};
-+	};
-+};
-+
-+&i2c0 {
-+	pinctrl-names = "default";
-+	pinctrl-0 = <&i2c0_pins_a>;
-+	status = "okay";
-+};
-+
-+&i2c1 {
-+	pinctrl-names = "default";
-+	pinctrl-0 = <&i2c1_pins_a>;
-+	status = "okay";
-+};
-+
-+&mmc0 {
-+	pinctrl-names = "default", "state_uhs";
-+	pinctrl-0 = <&mmc0_pins_default>;
-+	pinctrl-1 = <&mmc0_pins_uhs>;
-+	status = "okay";
-+	bus-width = <8>;
-+	max-frequency = <50000000>;
-+	cap-mmc-highspeed;
-+	vmmc-supply = <&mt6323_vemc3v3_reg>;
-+	vqmmc-supply = <&mt6323_vio18_reg>;
-+	non-removable;
-+};
-+
-+&mmc1 {
-+	pinctrl-names = "default", "state_uhs";
-+	pinctrl-0 = <&mmc1_pins_default>;
-+	pinctrl-1 = <&mmc1_pins_uhs>;
-+	status = "okay";
-+	bus-width = <4>;
-+	max-frequency = <50000000>;
-+	cap-sd-highspeed;
-+	cd-gpios = <&pio 261 0>;
-+	vmmc-supply = <&mt6323_vmch_reg>;
-+	vqmmc-supply = <&mt6323_vio18_reg>;
-+};
-+
-+&pio {
-+	cir_pins_a:cir@0 {
-+		pins_cir {
-+			pinmux = <MT7623_PIN_46_IR_FUNC_IR>;
-+			bias-disable;
-+		};
-+	};
-+
-+	i2c0_pins_a: i2c@0 {
-+		pins_i2c0 {
-+			pinmux = <MT7623_PIN_75_SDA0_FUNC_SDA0>,
-+				 <MT7623_PIN_76_SCL0_FUNC_SCL0>;
-+			bias-disable;
-+		};
-+	};
-+
-+	i2c1_pins_a: i2c@1 {
-+		pin_i2c1 {
-+			pinmux = <MT7623_PIN_57_SDA1_FUNC_SDA1>,
-+				 <MT7623_PIN_58_SCL1_FUNC_SCL1>;
-+			bias-disable;
-+		};
-+	};
-+
-+	i2s0_pins_a: i2s@0 {
-+		pin_i2s0 {
-+			pinmux = <MT7623_PIN_49_I2S0_DATA_FUNC_I2S0_DATA>,
-+				 <MT7623_PIN_72_I2S0_DATA_IN_FUNC_I2S0_DATA_IN>,
-+				 <MT7623_PIN_73_I2S0_LRCK_FUNC_I2S0_LRCK>,
-+				 <MT7623_PIN_74_I2S0_BCK_FUNC_I2S0_BCK>,
-+				 <MT7623_PIN_126_I2S0_MCLK_FUNC_I2S0_MCLK>;
-+			drive-strength = <MTK_DRIVE_12mA>;
-+			bias-pull-down;
-+		};
-+	};
-+
-+	i2s1_pins_a: i2s@1 {
-+		pin_i2s1 {
-+			pinmux = <MT7623_PIN_33_I2S1_DATA_FUNC_I2S1_DATA>,
-+				 <MT7623_PIN_34_I2S1_DATA_IN_FUNC_I2S1_DATA_IN>,
-+				 <MT7623_PIN_35_I2S1_BCK_FUNC_I2S1_BCK>,
-+				 <MT7623_PIN_36_I2S1_LRCK_FUNC_I2S1_LRCK>,
-+				 <MT7623_PIN_37_I2S1_MCLK_FUNC_I2S1_MCLK>;
-+			drive-strength = <MTK_DRIVE_12mA>;
-+			bias-pull-down;
-+		};
-+	};
-+
-+	mmc0_pins_default: mmc0default {
-+		pins_cmd_dat {
-+			pinmux = <MT7623_PIN_111_MSDC0_DAT7_FUNC_MSDC0_DAT7>,
-+				 <MT7623_PIN_112_MSDC0_DAT6_FUNC_MSDC0_DAT6>,
-+				 <MT7623_PIN_113_MSDC0_DAT5_FUNC_MSDC0_DAT5>,
-+				 <MT7623_PIN_114_MSDC0_DAT4_FUNC_MSDC0_DAT4>,
-+				 <MT7623_PIN_118_MSDC0_DAT3_FUNC_MSDC0_DAT3>,
-+				 <MT7623_PIN_119_MSDC0_DAT2_FUNC_MSDC0_DAT2>,
-+				 <MT7623_PIN_120_MSDC0_DAT1_FUNC_MSDC0_DAT1>,
-+				 <MT7623_PIN_121_MSDC0_DAT0_FUNC_MSDC0_DAT0>,
-+				 <MT7623_PIN_116_MSDC0_CMD_FUNC_MSDC0_CMD>;
-+			input-enable;
-+			bias-pull-up;
-+		};
-+
-+		pins_clk {
-+			pinmux = <MT7623_PIN_117_MSDC0_CLK_FUNC_MSDC0_CLK>;
-+			bias-pull-down;
-+		};
-+
-+		pins_rst {
-+			pinmux = <MT7623_PIN_115_MSDC0_RSTB_FUNC_MSDC0_RSTB>;
-+			bias-pull-up;
-+		};
-+	};
-+
-+	mmc0_pins_uhs: mmc0 {
-+		pins_cmd_dat {
-+			pinmux = <MT7623_PIN_111_MSDC0_DAT7_FUNC_MSDC0_DAT7>,
-+				 <MT7623_PIN_112_MSDC0_DAT6_FUNC_MSDC0_DAT6>,
-+				 <MT7623_PIN_113_MSDC0_DAT5_FUNC_MSDC0_DAT5>,
-+				 <MT7623_PIN_114_MSDC0_DAT4_FUNC_MSDC0_DAT4>,
-+				 <MT7623_PIN_118_MSDC0_DAT3_FUNC_MSDC0_DAT3>,
-+				 <MT7623_PIN_119_MSDC0_DAT2_FUNC_MSDC0_DAT2>,
-+				 <MT7623_PIN_120_MSDC0_DAT1_FUNC_MSDC0_DAT1>,
-+				 <MT7623_PIN_121_MSDC0_DAT0_FUNC_MSDC0_DAT0>,
-+				 <MT7623_PIN_116_MSDC0_CMD_FUNC_MSDC0_CMD>;
-+			input-enable;
-+			drive-strength = <MTK_DRIVE_2mA>;
-+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
-+		};
-+
-+		pins_clk {
-+			pinmux = <MT7623_PIN_117_MSDC0_CLK_FUNC_MSDC0_CLK>;
-+			drive-strength = <MTK_DRIVE_2mA>;
-+			bias-pull-down = <MTK_PUPD_SET_R1R0_01>;
-+		};
-+
-+		pins_rst {
-+			pinmux = <MT7623_PIN_115_MSDC0_RSTB_FUNC_MSDC0_RSTB>;
-+			bias-pull-up;
-+		};
-+	};
-+
-+	mmc1_pins_default: mmc1default {
-+		pins_cmd_dat {
-+			pinmux = <MT7623_PIN_107_MSDC1_DAT0_FUNC_MSDC1_DAT0>,
-+				 <MT7623_PIN_108_MSDC1_DAT1_FUNC_MSDC1_DAT1>,
-+				 <MT7623_PIN_109_MSDC1_DAT2_FUNC_MSDC1_DAT2>,
-+				 <MT7623_PIN_110_MSDC1_DAT3_FUNC_MSDC1_DAT3>,
-+				 <MT7623_PIN_105_MSDC1_CMD_FUNC_MSDC1_CMD>;
-+			input-enable;
-+			drive-strength = <MTK_DRIVE_4mA>;
-+			bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
-+		};
-+
-+		pins_clk {
-+			pinmux = <MT7623_PIN_106_MSDC1_CLK_FUNC_MSDC1_CLK>;
-+			bias-pull-down;
-+			drive-strength = <MTK_DRIVE_4mA>;
-+		};
-+
-+		pins_wp {
-+			pinmux = <MT7623_PIN_29_EINT7_FUNC_MSDC1_WP>;
-+			input-enable;
-+			bias-pull-up;
-+		};
-+
-+		pins_insert {
-+			pinmux = <MT7623_PIN_261_MSDC1_INS_FUNC_GPIO261>;
-+			bias-pull-up;
-+		};
-+	};
-+
-+	mmc1_pins_uhs: mmc1 {
-+		pins_cmd_dat {
-+			pinmux = <MT7623_PIN_107_MSDC1_DAT0_FUNC_MSDC1_DAT0>,
-+				 <MT7623_PIN_108_MSDC1_DAT1_FUNC_MSDC1_DAT1>,
-+				 <MT7623_PIN_109_MSDC1_DAT2_FUNC_MSDC1_DAT2>,
-+				 <MT7623_PIN_110_MSDC1_DAT3_FUNC_MSDC1_DAT3>,
-+				 <MT7623_PIN_105_MSDC1_CMD_FUNC_MSDC1_CMD>;
-+			input-enable;
-+			drive-strength = <MTK_DRIVE_4mA>;
-+			bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
-+		};
-+
-+		pins_clk {
-+			pinmux = <MT7623_PIN_106_MSDC1_CLK_FUNC_MSDC1_CLK>;
-+			drive-strength = <MTK_DRIVE_4mA>;
-+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
-+		};
-+	};
-+
-+	pwm_pins_a: pwm@0 {
-+		pins_pwm {
-+			pinmux = <MT7623_PIN_203_PWM0_FUNC_PWM0>,
-+				 <MT7623_PIN_204_PWM1_FUNC_PWM1>,
-+				 <MT7623_PIN_205_PWM2_FUNC_PWM2>,
-+				 <MT7623_PIN_206_PWM3_FUNC_PWM3>,
-+				 <MT7623_PIN_207_PWM4_FUNC_PWM4>;
-+		};
-+	};
-+
-+	spi0_pins_a: spi@0 {
-+		pins_spi {
-+			pinmux = <MT7623_PIN_53_SPI0_CSN_FUNC_SPI0_CS>,
-+				<MT7623_PIN_54_SPI0_CK_FUNC_SPI0_CK>,
-+				<MT7623_PIN_55_SPI0_MI_FUNC_SPI0_MI>,
-+				<MT7623_PIN_56_SPI0_MO_FUNC_SPI0_MO>;
-+			bias-disable;
-+		};
-+	};
-+
-+	uart0_pins_a: uart@0 {
-+		pins_dat {
-+			pinmux = <MT7623_PIN_79_URXD0_FUNC_URXD0>,
-+				 <MT7623_PIN_80_UTXD0_FUNC_UTXD0>;
-+		};
-+	};
-+
-+	uart1_pins_a: uart@1 {
-+		pins_dat {
-+			pinmux = <MT7623_PIN_81_URXD1_FUNC_URXD1>,
-+				 <MT7623_PIN_82_UTXD1_FUNC_UTXD1>;
-+		};
-+	};
-+};
-+
-+&pwm {
-+	pinctrl-names = "default";
-+	pinctrl-0 = <&pwm_pins_a>;
-+	status = "okay";
-+};
-+
-+&pwrap {
-+	mt6323 {
-+		mt6323led: led {
-+			compatible = "mediatek,mt6323-led";
-+			#address-cells = <1>;
-+			#size-cells = <0>;
-+
-+			led@0 {
-+				reg = <0>;
-+				label = "bpi-r2:isink:green";
-+				default-state = "off";
-+			};
-+
-+			led@1 {
-+				reg = <1>;
-+				label = "bpi-r2:isink:red";
-+				default-state = "off";
-+			};
-+
-+			led@2 {
-+				reg = <2>;
-+				label = "bpi-r2:isink:blue";
-+				default-state = "off";
-+			};
-+		};
-+	};
-+};
-+
-+&spi0 {
-+	pinctrl-names = "default";
-+	pinctrl-0 = <&spi0_pins_a>;
-+	status = "okay";
-+};
-+
-+&uart0 {
-+	pinctrl-names = "default";
-+	pinctrl-0 = <&uart0_pins_a>;
-+	status = "disabled";
-+};
-+
-+&uart1 {
-+	pinctrl-names = "default";
-+	pinctrl-0 = <&uart1_pins_a>;
-+	status = "disabled";
-+};
-+
-+&uart2 {
-+	status = "okay";
-+};
-+
-+&usb1 {
-+	vusb33-supply = <&mt6323_vusb_reg>;
-+	status = "okay";
-+};
-+
-+&usb2 {
-+	vusb33-supply = <&mt6323_vusb_reg>;
-+	status = "okay";
-+};
-+
-+&u3phy1 {
-+	status = "okay";
-+};
-+
-+&u3phy2 {
-+	status = "okay";
-+};
-+
 --- a/arch/arm/boot/dts/mt7623.dtsi
 +++ b/arch/arm/boot/dts/mt7623.dtsi
 @@ -326,6 +326,7 @@
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
