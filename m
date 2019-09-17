Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A444B562B
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 21:31:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w528fRbExcjTvqUeITPSgwh9JelsH/pdHEndfBJxgzY=; b=WM0z/Nb/7aTIdj
	WBB8aFoQWnZAm1D1V7q6rPmEN6AI3YC4MSmtM+q1CsCJYsTrDjVqw8Y/E4wmELpEXm0ZusY5LBSaQ
	pdOgOdwlpmDpqiwaDnRKStHIvCeJ4lLFKX5HjhdqQ8xadaSwZyMMgxljx58yqP5CGm8dpymafCMEl
	P36/jyikMAj3NgVlXCIMrfe88B1KJkwEhbcyiGB2LUB9u74Q83ZDNoPJH1uYFsSwDdm+Lr0vQEnmI
	T63arPJyYvBbswZlo764aWSCs4s+Y0bo3tIO9EAsj9a3GdHlkc28AQGsDVtB5lXMXTIKRneaKl7ZF
	qnQGZyv64fRz4geAGRcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAJCD-0007S9-4W; Tue, 17 Sep 2019 19:31:29 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAJBt-0007Rh-7a
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 19:31:10 +0000
Received: by mail-wm1-x343.google.com with SMTP id a6so126661wma.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Sep 2019 12:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PXIxEW7B+5OKbzc2gYiwmy5Ra9ahXMkvRY9Xs2ViiAs=;
 b=N9d6eEMBBSjxA4ekGdUa7K7H2DfBOm0H40H+r+WwZ19CvsNsbYehcfcrzy930+bEFv
 yonOHdPVQfWGj0KpIPiyLlVVmjcm/A3EFitLP2gdtwwH4G0fH7ZvxBjSPFNQvlhtl+Rq
 BLJOc62LdF+8mMOdW7WzYgu4onZwarIbXO7LF0P2DM94q5Oxul5NcpRnaAPKd+GCto4N
 pU/vF6fCjxhiltkmYwsJHXL0bHQE2lkMgCUs/M4DV4BcCCRHMDLcHYCnTBjRTZAwnmXW
 98vd9sM+poHC9r25lx8HImR8HJIo4rhQ6MxKPeRj/hhQ0Qk1/u/rbEc1PgXgh/8Cox4R
 W8xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PXIxEW7B+5OKbzc2gYiwmy5Ra9ahXMkvRY9Xs2ViiAs=;
 b=mUWOIcFj/iUS1/4I4TbcWuwmoKzsgrFyy4K7QtndOfLGf0vCOkGIj3t8t+kU5OKgj5
 lz3HQWZvVkksrOskp7nov9yQmXLrMcJTEjf/39cd5N4M9G59eO/84+B/q0/FAJCDh3o+
 y++hwMyHQ/3qnM1vB6AVcpiFUOM0TdspQ+si9NTavp8a6Bu6aO+dzvZEv+iNc5gx32gb
 tjIhSpw/cTeIeMpHEZlfNWoCYXqeg/kMFl0XMWmOF6noeSSkxN9akINpLKprSRglB1zT
 ktms2DKYeOYAaACk73y/OjfZNbyt87I2CPoLhWgZCtaUzSzSTnFmSKCFoCm4DKFDI8W4
 GYcg==
X-Gm-Message-State: APjAAAVDaZXqzF31yla9sBFVl9YvESSsr8r/DAjluUH15/r0ZlHZy+7j
 2IjRXCi2N8IcG3f7XSQvgnimU706
X-Google-Smtp-Source: APXvYqzlBkryApId901MpEQKhMsQDHVWVAbWU/X3/psvDZcXXNTNFgdFLAWeaA38yRrpIzTetOXMVQ==
X-Received: by 2002:a05:600c:1103:: with SMTP id
 b3mr5034687wma.3.1568748667099; 
 Tue, 17 Sep 2019 12:31:07 -0700 (PDT)
Received: from mStation.lan
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id u8sm4006975wmj.3.2019.09.17.12.31.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 12:31:06 -0700 (PDT)
From: Enrico Mioso <mrkiko.rs@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Sep 2019 21:30:29 +0200
Message-Id: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_123109_276864_591AF59D 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH V2] ath79: add support for TP-Link TL-MR6400
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
Cc: Filip Moc <lede@moc6.cz>, Piotr Dymacz <pepe2k@gmail.com>,
 Enrico Mioso <mrkiko.rs@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This device is an LTE router supported in ar71xx.
As per original commit, hardware specifications (v1.0 EU):
- SoC: QCA9531
- Flash: Winbond W25Q64FV (8MiB)
- RAM: EtronTech EM6AB160TSE-5G (64MiB)
- Wireless: SoC platform only (2.4GHz b/g/n, 2x internal antenna)
- Ethernet: 2NIC (3x100M + 1x100M)
- WWAN: TP-LINK LTE MODULE (2x external detachable antenna)
- Power: DC 12V 1A

Flashing instructions:
You can flash via tftp recovery (serve factory image as /mr6400_tp_recovery.bin
on 192.168.0.66/24, connect to any ethernet port and power on device while
holding the reset button). Flashing via OEM web interface does not work.

Working:
- Wi-Fi
- TP-Link LTE module does it's thing (but see Notes)
- reset/rfkill keys

Untested:
- recovery via factory
- leds

(I promise I'll test untested items as well in final version.)

Issues:
switch configuration currently broken (port 2 on device is seen as port 3, port 3 as port 2).

Note: as it happened occasionally in ar71xx, during bursty flash activity, LTE module init will fail, with USB enumeration errors.

V1->V2:
- addressed most comments, except for SUPPORTED_DEVICES

Signed-off-by: Enrico Mioso <mrkiko.rs@gmail.com>
CC: Filip Moc <lede@moc6.cz>
CC: Piotr Dymacz <pepe2k@gmail.com>
---
{
This version is not meant to be definite nor merged. I'll be laving tomorrow, and will be back sunday, so I wanted to post this version so in case you have visibility over last changes.
Thanks!
Enrico
}
 .../ath79/base-files/etc/board.d/01_leds      |   5 +
 .../ath79/base-files/etc/board.d/02_network   |   5 +
 .../ath79/dts/qca9531_tplink_tl-mr6400-v1.dts | 172 ++++++++++++++++++
 target/linux/ath79/image/generic-tp-link.mk   |  10 +
 4 files changed, 192 insertions(+)
 create mode 100644 target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index 778316e450..385ac8d9ca 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -130,6 +130,11 @@ tplink,archer-c7-v5)
 	ucidef_set_led_switch "lan3" "LAN3" "tp-link:green:lan3" "switch0" "0x10"
 	ucidef_set_led_switch "lan4" "LAN4" "tp-link:green:lan4" "switch0" "0x20"
 	;;
+tplink,tl-mr6400-v1)
+	ucidef_set_led_netdev "lan" "LAN" "tp-link:white:lan" "eth0"
+	ucidef_set_led_netdev "wan" "WAN" "tp-link:white:wan" "eth1"
+	ucidef_set_led_netdev "4g" "4G" "tp-link:white:4g" "usb0"
+	;;
 tplink,archer-c2-v3|\
 tplink,tl-wr1043nd-v4|\
 tplink,tl-wr1043n-v5)
diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index 5b47af8ef7..2b0e1ce400 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -56,6 +56,11 @@ ath79_setup_interfaces()
 	winchannel,wb2000)
 		ucidef_set_interface_lan "eth0"
 		;;
+	tplink,tl-mr6400-v1)
+		ucidef_set_interfaces_lan_wan "eth0.1 eth1" "usb0"
+		ucidef_add_switch "switch0" \
+			"0@eth0" "1:lan" "2:lan" "3:lan"
+		;;
 	avm,fritz4020|\
 	pcs,cr3000|\
 	tplink,archer-c58-v1|\
diff --git a/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
new file mode 100644
index 0000000000..a2c006f05e
--- /dev/null
+++ b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
@@ -0,0 +1,172 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "qca953x.dtsi"
+
+/ {
+	compatible = "tplink,tl-mr6400-v1", "qca,qca9531";
+	model = "TP-Link TL-MR6400 v1";
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+	};
+
+	gpio_leds: leds {
+		compatible = "gpio-leds";
+
+		/* D12 */
+		wan {
+			label = "tp-link:white:wan";
+			gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D11 */
+		4g {
+			label = "tp-link:white:4g";
+			gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D5 */
+		wps {
+			label = "tp-link:white:wps";
+			gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D3 */
+		wlan {
+			label = "tp-link:white:wlan";
+			gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+		/* D2 */
+		led_power: power {
+			label = "tp-link:white:power";
+			gpios = <&gpio 13 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D4 */
+		lan {
+			label = "tp-link:white:lan";
+			gpios = <&gpio 16 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		/* SW2 */
+		reset {
+			label = "Reset button";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+
+		/* SW3 */
+		rfkill {
+			label = "RFKill button";
+			linux,code = <KEY_RFKILL>;
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+	};
+};
+
+&uart {
+	status = "okay";
+};
+
+&spi {
+	status = "okay";
+	num-cs = <1>;
+
+	flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			uboot: partition@0 {
+				label = "u-boot";
+				reg = <0x000000 0x020000>;
+				read-only;
+			};
+
+			partition@20000 {
+				compatible = "tplink,firmware";
+				label = "firmware";
+				reg = <0x020000 0x7d0000>;
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
+&eth0 {
+	status = "okay";
+	phy-mode = "mii";
+	phy-handle = <&swphy0>;
+
+	mtd-mac-address = <&uboot 0x1fc00>;
+	mtd-mac-address-increment = <1>;
+
+	gmac-config {
+		device = <&gmac>;
+		switch-phy-swap = <1>;
+		switch-phy-addr-swap = <1>;
+	};
+};
+
+&eth1 {
+	status = "okay";
+	mtd-mac-address = <&uboot 0x1fc00>;
+	mtd-mac-address-increment = <(-1)>;
+};
+
+&wmac {
+	status = "okay";
+	mtd-cal-data = <&art 0x1000>;
+	mtd-mac-address = <&uboot 0x1fc00>;
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
+&gpio {
+	lte_power {
+		gpio-hog;
+		gpios = <4 GPIO_ACTIVE_HIGH>;
+		output-low;
+		line-name = "tp-link:power:LTE";
+	};
+};
diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index 5519e9c960..78d7810f29 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -393,6 +393,16 @@ define Device/tplink_tl-wr810n-v1
 endef
 TARGET_DEVICES += tplink_tl-wr810n-v1
 
+define Device/tplink_tl-mr6400-v1
+  $(Device/tplink-8mlzma)
+  ATH_SOC := qca9531
+  DEVICE_MODEL := TL-MR6400
+  DEVICE_VARIANT := v1
+  TPLINK_HWID := 0x64000001
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-net kmod-usb-net-rndis kmod-usb-serial kmod-usb-serial-option adb
+endef
+TARGET_DEVICES += tplink_tl-mr6400-v1
+
 define Device/tplink_tl-wr810n-v2
   $(Device/tplink-8mlzma)
   ATH_SOC := qca9533
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
