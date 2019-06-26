Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BA1566AF
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 12:27:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rxb4v0rcpoc4lzvmSAWTd420EWX9djU4K/5+xwJLycg=; b=pvzgsY5vu6JBie
	w8mUCApcXzN8hpAxbNoYZat0Limsgg1IkRMckQL+ta9rPh/ydQh2ygsjoIdIzol3FN9tUMvstwGWu
	lld4bZqFpo+OC4fbZpO984dbdWVXXjIDbt2IlTlfDcZ2IddYG9dhzHLkjAdFA4xHDIYIVEdvJbAGY
	Zo4RHJzG1OyZZmVsdSt5g2A/trq9ihkyi6bmKi3TUPGTRTG5t4dXSyDtGPVzl2LdKEu4c+3HbnltT
	bIoiOwMN/p8VrMYoseGxZsuRlLPUVWwz2q8SpOLhOrQyoVF448AgeUI6SNgIVqxRDTek9K3Ywd927
	EpzPmU6SS//fThGdZW+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg59Q-0006EU-KT; Wed, 26 Jun 2019 10:27:40 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg59K-0006E3-G5
 for openwrt-devel@bombadil.infradead.org; Wed, 26 Jun 2019 10:27:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i5tZTUun63Qjv6H/7KKKQ/nJm9E/3bTxWV6PkBg6pgc=; b=omGpu3I6Pb1YB4dIgautvhz9f
 OIfoZTLoePsLrb2TRNn2ub3JdHbAGfk+Dx7WTJb0cP9D5sSHquwSwRg93TBGwmL2bY7zpHO58qebx
 z5B/1aoCdapUuBsfeRXLOJnGpk+p3rVwbTaWBal0MePnSyvhfWuyVp4nRqamIcAaytTMg85xWRETP
 VN1TOeW2kxf6saze0se0ADpyL9XI6e60KyVnDlcG2XyTSiCrQddu+2n7xcGACvvdNQWUAsrzCwvPj
 AflZtGRYwruhjq8pr2Ae28Ib8Tyj3UFM/AG7vf51eec30J8x6ZgbWHwDgSqTxNH94npGU5zO3RXHx
 l1bZWvBaw==;
Received: from smtpbgau1.qq.com ([54.206.16.166])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg59H-0006q1-0Q
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 10:27:34 +0000
X-QQ-mid: bizesmtp22t1561543371t61c48v2
Received: from localhost.localdomain (unknown [113.116.56.127])
 by esmtp6.qq.com (ESMTP) with 
 id ; Wed, 26 Jun 2019 18:02:45 +0800 (CST)
X-QQ-SSF: 01400000001000L0ZG50000A0000000
X-QQ-FEAT: 4dGFzNVbfLODDbLv2Bn63g0ktXygvtkEW9D0MXAcKMykGB+Md9FwI+tMveLRD
 UDUXuMqv4PsJbP21I8uSstwox7ohleHp8yakl7L5bvc3wlz480yNKX0Ps3mPr/8u8Wlvkwh
 DCxa14VFMy58NAx9x2iRrKgwVtwOYo27l68Bfw2KrkcP6Opa2kQ+gflgGF1se5OUU2KKdc9
 46PuvPfDYAKAEL8pV78Jp4eKt5qqnEq9WfuhFXGLALi0rqCjbSxYWFvWHW8LqVynruS/fkO
 Ubb0H+1vdY1xCA5PnDjtPQVrNUvYEXdarGNkHvrF9PMtREAsIcBu8JfevW0pkfuz7l/4Yie
 fDgvJHeZyjteb3W8DM=
X-QQ-GoodBg: 2
From: Luochongjun <luochongjun@gl-inet.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 26 Jun 2019 18:02:23 +0800
Message-Id: <1561543343-2930-1-git-send-email-luochongjun@gl-inet.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign2
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_112731_661089_F7A0C729 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.206.16.166 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: add support for gl-ar750
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

This patch supports gl-ar750, which was previously supported by ar71xx.

Specification:
- SOC: QCA9531 (650MHz)
- Flash: 16 MiB (W25Q128FVSG)
- RAM: 128 MiB DDR2
- Ethernet: 10/100: 2xLAN + 10/100: 1xWAN
- Wireless: 2.4GHz (bgn) and 5GHz (ac)
- USB: 1x USB 2.0 port
- Switch: 1x switch
- Button: 1x reset button
- LED: 3x LEDS (white)

Flash instruction:
Support for sysupgrade directive upgrades, as well as luci upgrades.

Signed-off-by: luochongjun <luochongjun@gl-inet.com>
---
 .../etc/hotplug.d/firmware/11-ath10k-caldata       |   1 +
 target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts | 151 +++++++++++++++++++++
 target/linux/ath79/image/generic.mk                |   8 ++
 3 files changed, 160 insertions(+)
 create mode 100644 target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 8f0ea1d..6a9cb1c 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -116,6 +116,7 @@ case "$FIRMWARE" in
 		ath10kcal_extract "art" 20480 2116
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
 		;;
+	glinet,gl-ar750|\
 	glinet,gl-ar750s)
 		ath10kcal_extract "art" 20480 2116
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0) +1)
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
new file mode 100644
index 0000000..c20cdf5
--- /dev/null
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
@@ -0,0 +1,151 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "qca953x.dtsi"
+
+/ {
+	compatible = "glinet,gl-ar750", "qca,qca9531";
+	model = "GL.iNet GL-AR750";
+
+	keys {
+		compatible = "gpio-keys";
+
+		poll-interval = <20>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&jtag_disable_pins>;
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 3 GPIO_ACTIVE_LOW>;
+		};
+
+		mode {
+			label = "mode";
+			linux,code = <BTN_0>;
+			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		power {
+			label = "gl-ar750:white:power";
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
+			default-state = "on";
+		};
+
+		wlan2g {
+			label = "gl-ar750:white:wlan2g";
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
+		};
+
+		wlan5g {
+			label = "gl-ar750:white:wlan5g";
+			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+	};
+
+	i2c {
+		compatible = "i2c-gpio";
+
+		sda-gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
+		scl-gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+	};
+
+
+};
+
+&pcie0 {
+	status = "okay";
+
+	wifi@0,0 {
+		compatible = "qcom,ath10k";
+		reg = <0 0 0 0 0>;
+		device_type = "pci";
+	};
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
+	num-cs = <0>;
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
+				read-only;
+			};
+
+			art: partition@50000 {
+				label = "art";
+				reg = <0x050000 0x010000>;
+				read-only;
+			};
+
+			partition@60000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x060000 0xfa0000>;
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
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index d5f67b8..033cfa3 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -389,6 +389,14 @@ define Device/glinet_gl-ar300m-nor
 endef
 TARGET_DEVICES += glinet_gl-ar300m-nor
 
+define Device/glinet_gl-ar750
+  ATH_SOC := qca9531
+  DEVICE_TITLE := GL.iNet GL-AR750
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct
+  IMAGE_SIZE := 16000k
+endef
+TARGET_DEVICES += glinet_gl-ar750
+
 define Device/glinet_gl-ar750s
   ATH_SOC := qca9563
   DEVICE_TITLE := GL.iNet GL-AR750S
-- 
2.7.4




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
