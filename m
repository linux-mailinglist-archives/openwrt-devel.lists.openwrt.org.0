Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB3F1AD63B
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Apr 2020 08:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tIwSnfP/+TAlFqYmh2AOKzzviWQKgRQlwohAP6YB7tQ=; b=jFac1qoLrDWup1
	5r30KC1jF3lJ7ImUw45zdVMP8i69EYB2pMkJBt8nvnRVbC3T1J5ZQMesoKeHj+0MeLTLVogf2CmXF
	NChwGxBOklWwoERp92s2G2y9sPe/YfbA5IbwusH1BY5beY9Nsw9KKWynlTRRWA3Sf2pU1btWjsZz1
	YGlcZwzg8yzuEMgQE/49/JnDQy84UIo9jScn39+hTf0Ji6nIhYhxBx1+o/1m283OQ4hzOLxqcpaqH
	pBesr0Dr3puRb71GW+y6ys//h0956JQ127PpYyoAFiHVoO21wU+srXygygoSx4MnZ39xZOEY/fgFT
	Kt0owZPzKQ0HtbU3McOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPKg1-00029B-LS; Fri, 17 Apr 2020 06:40:37 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPKfv-00028v-P3
 for openwrt-devel@bombadil.infradead.org; Fri, 17 Apr 2020 06:40:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=P+97Ux2aWWf1zYGcc5+7tf5tMD/WL1lNfrfMbIpMoOQ=; b=ufl45jpXcnbRtty7LqwHX+VvcJ
 C8ReuBDL0T5pGjr35r2AlPgcAcpzXfk7dZ/+2knaQ0rMaEMkS82j7TXsd3O5h7UeVCrMpC8euyX6f
 qn3RQ2bBgEEVHeAMuK/nZ4lNVKr+0zwAKrHdZIwR3Bc7BRgyNaNeMlVasG5sVIBpY3eOcm2zFgRLy
 6rkNtzhmJsMji8N7cE3uJfdRUpUfzAvnaljPzyYZkERvdLmNRHJlw7KiZ0LiIysJ/iVot/Z/QGBdp
 D0uXcsvCVeLcHKR2P8nsG1zhQtjTo7ejkX3zFhf11GK2IZlVyWLHpnXVKXbwRC/Omrw8q9SetCULq
 Tro5gYWg==;
Received: from smtpbg704.qq.com ([203.205.195.105] helo=smtpproxy21.qq.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPKfn-0000oT-7n
 for openwrt-devel@lists.openwrt.org; Fri, 17 Apr 2020 06:40:28 +0000
X-QQ-mid: bizesmtp5t1587105586tjhazx7e5
Received: from glinet.lan (unknown [116.30.120.28])
 by esmtp6.qq.com (ESMTP) with 
 id ; Fri, 17 Apr 2020 14:39:34 +0800 (CST)
X-QQ-SSF: 01100000000000H0CH70B00A0000000
X-QQ-FEAT: 2HIwkBI2/ez/YewPHpzdDlr/cWdaBq/lQ2MtqwbBQF3FqvVd6j/yLhs/notFq
 pppklwa6POprzabX8/rbNVCqZQbqplvbYkHaOvoZ1oVnH/pTUrplGXoFx1OhlnrlhM5F8Z1
 IxtLI8srzy3XW7CMJF+AAD7yFYhHCBwOBhRZBjfPHO8cRR2kh0KvgEHNlZndORttNkRqbIo
 FjXVAUvwVyaG2vmbEjHF4IEqxoV1Z+0/ILQoaQj0bTZgkjFuhiv9Fvh3qonCfvZqXxPSKrD
 yQ+A6Opp7Jd6SneeusMyqmBPPZ6TnI8iEu7bt5tzcheVG3wg+EKXM+oCszDwA256F3Csq2E
 m7FFJhJG9Un/zTLxwA=
X-QQ-GoodBg: 0
From: Li Zhang <li.zhang@gl-inet.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 17 Apr 2020 14:39:32 +0800
Message-Id: <1587105572-26571-1-git-send-email-li.zhang@gl-inet.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_074023_858835_D7BD56B5 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.195.105 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] mvebu: add support for GL.iNet GL-MV1000
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
Cc: Li Zhang <li.zhang@gl-inet.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch adds supports for GL-MV1000.

Specification:
	- SOC: Marvell Armada 88F3720 (1GHz)
	- Flash: 16MB (W25Q128FWSIG)
	- RAM: 1GB DDR4
	- Ethernet: 3x GE (1 WAN + 2 LAN)
	- EMMC: 8GB EMMC (KLM8G1GETF-B041)
	- MicroSD: 1x microSD slot
	- USB: 1x USB 2.0 port(TypeA),1x USB 3.0 port(TypeC)
	- Button: 1x reset button,1x slide switch
	- LED: 3x greed LED
	- UART: 1x UART on PCB (JP1: 3.3V, RX, TX, GND)

	Update firmware instructions
	============================
	In the compiled,please gzip -d xxx.img.gz,then update firmware on uboot web.

Signed-off-by: Li Zhang <li.zhang@gl-inet.com>
---
 package/boot/uboot-envtools/files/mvebu            |   3 +
 .../cortexa53/base-files/etc/board.d/02_network    |   3 +-
 .../arm64/boot/dts/marvell/armada-gl-mv1000.dts    | 165 +++++++++++++++++++++
 target/linux/mvebu/image/cortexa53.mk              |   9 ++
 4 files changed, 179 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-gl-mv1000.dts

diff --git a/package/boot/uboot-envtools/files/mvebu b/package/boot/uboot-envtools/files/mvebu
index 7902384..b883f0a 100644
--- a/package/boot/uboot-envtools/files/mvebu
+++ b/package/boot/uboot-envtools/files/mvebu
@@ -24,6 +24,9 @@ globalscale,espressobin-v7-emmc|\
 marvell,armada8040-mcbin)
 	ubootenv_add_uci_config "/dev/mtd0" "0x3f0000" "0x10000" "0x10000" "1"
 	;;
+glinet,gl-mv1000)
+	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x8000" "0x8000" "1"
+	;;
 linksys,caiman|\
 linksys,cobra|\
 linksys,shelby)
diff --git a/target/linux/mvebu/cortexa53/base-files/etc/board.d/02_network b/target/linux/mvebu/cortexa53/base-files/etc/board.d/02_network
index ba4b930..9b1d97d 100755
--- a/target/linux/mvebu/cortexa53/base-files/etc/board.d/02_network
+++ b/target/linux/mvebu/cortexa53/base-files/etc/board.d/02_network
@@ -14,7 +14,8 @@ case "$board" in
 globalscale,espressobin|\
 globalscale,espressobin-emmc|\
 globalscale,espressobin-v7|\
-globalscale,espressobin-v7-emmc)
+globalscale,espressobin-v7-emmc|\
+glinet,gl-mv1000)
 	ucidef_set_interfaces_lan_wan "lan0 lan1" "wan"
 	;;
 marvell,armada-3720-db|\
diff --git a/target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-gl-mv1000.dts b/target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-gl-mv1000.dts
new file mode 100644
index 0000000..9d7963c
--- /dev/null
+++ b/target/linux/mvebu/files-4.19/arch/arm64/boot/dts/marvell/armada-gl-mv1000.dts
@@ -0,0 +1,165 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for GL.iNet GL-MV1000
+ */
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include "armada-372x.dtsi"
+
+/ {
+	model = "GL.inet GL-MV1000";
+	compatible = "glinet,gl-mv1000", "marvell,armada3720";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x00000000 0x00000000 0x20000000>;
+	};
+
+	vcc_sd_reg1: regulator {
+		compatible = "regulator-gpio";
+		regulator-name = "vcc_sd1";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+        
+		gpios-states = <0>;
+		states = <1800000 0x1
+			3300000 0x0>;
+		enable-active-high;
+	};
+};
+
+&spi0 {
+	status = "okay";
+
+	flash@0 {
+		reg = <0>;
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <104000000>;
+		m25p,fast-read;
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0 0xf0000>;
+			};
+
+			partition@f0000 {
+				label = "u-boot-env";
+				reg = <0Xf0000 0x8000>;
+			};
+
+			factory: partition@f8000 {
+				label = "factory";
+				reg = <0xf8000 0x8000>;
+			};
+		};
+	};
+};
+
+&sdhci1 {
+	wp-inverted;
+	bus-width = <4>;
+	cd-gpios = <&gpionb 17 GPIO_ACTIVE_LOW>;
+	marvell,pad-type = "sd";
+	no-1-8-v;
+	vqmmc-supply = <&vcc_sd_reg1>;
+	status = "okay";
+};
+
+&sdhci0 {
+	bus-width = <8>;
+	mmc-ddr-1_8v;
+	mmc-hs400-1_8v;
+	non-removable;
+	no-sd;
+	no-sdio;
+	marvell,pad-type = "fixed-1-8v";
+	status = "okay";
+};
+
+&usb3 {
+	status = "okay";
+};
+
+&usb2 {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&mdio {
+	switch0: switch0@1 {
+		compatible = "marvell,mv88e6085";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <1>;
+
+		dsa,member = <0 0>;
+
+		ports: ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				label = "cpu";
+				ethernet = <&eth0>;
+			};
+
+			port@1 {
+				reg = <1>;
+				label = "wan";
+				phy-handle = <&switch0phy0>;
+			};
+
+			port@2 {
+				reg = <2>;
+				label = "lan0";
+				phy-handle = <&switch0phy1>;
+			};
+
+			port@3 {
+				reg = <3>;
+				label = "lan1";
+				phy-handle = <&switch0phy2>;
+			};
+		};
+
+		mdio {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			switch0phy0: switch0phy0@11 {
+				reg = <0x11>;
+			};
+			switch0phy1: switch0phy1@12 {
+				reg = <0x12>;
+			};
+			switch0phy2: switch0phy2@13 {
+				reg = <0x13>;
+			};
+		};
+	};
+};
+
+&eth0 {
+	mtd-mac-address = <&factory 0x0>;
+	phy-mode = "rgmii-id";
+	status = "okay";
+
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+	};
+};
diff --git a/target/linux/mvebu/image/cortexa53.mk b/target/linux/mvebu/image/cortexa53.mk
index 77f5c79..1436c1b 100644
--- a/target/linux/mvebu/image/cortexa53.mk
+++ b/target/linux/mvebu/image/cortexa53.mk
@@ -69,3 +69,12 @@ define Device/methode_udpu
   BOOT_SCRIPT := udpu
 endef
 TARGET_DEVICES += methode_udpu
+
+define Device/glinet_gl-mv1000
+  $(call Device/Default-arm64)
+  DEVICE_TITLE := GL.iNet GL-MV1000
+  DEVICE_DTS := armada-gl-mv1000
+  SUPPORTED_DEVICES := glinet,gl-mv1000
+endef
+TARGET_DEVICES += glinet_gl-mv1000
+
-- 
2.7.4




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
