Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9F4504DA
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 10:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TjjKa0/3ouOtwCSq2eakd7iUtMfwTil1Hki6LjjYsFU=; b=efEOjeEBCspM4W
	OeS5tZoprdLD6PmZB6JCk5n+LJwsSB0BFETZ0B/xAMY4l5tgAGM1Ruxb93B0JFN0gFtWZT1zUZoHC
	GkNmp45KafB+4m4JVFApgthE0zzgpUWV484rdxbOemT/QcN0wVQw3QF5WeU6nHJot0HSQtXFGJ7ks
	PVFnuPeMfxsvOMhxfstfCeetYzJbEjW3iffoyxbXTzCQECgJhSVSuH1LjZPmQF0idQaci6cTjSjV3
	zAfhpjGCqZGCVuA0VRSSPTTMemzTIFHCNn7i/6k90GmZqkEUFbsuEWuFuWJrZQV4vwj5S3FNDp6zd
	fP38CCxx8SWbFSN6c6JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfKfd-0006eS-7f; Mon, 24 Jun 2019 08:49:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfKfL-0006e5-Eb
 for openwrt-devel@bombadil.infradead.org; Mon, 24 Jun 2019 08:49:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UcOzkB3VfkqdDViKZ5e1GVzZ3Ur3mnsAT5ooIo+6GXw=; b=m8ZYIjKT+oy8xdwk/PGtMdjgk
 e1M7X815xgBs6m/3Z3Q3PTIUYat9VT5IN8/Elo/5F0zCZv/UeR/IbUkVGBq8RlsOXzE5NasqknCrk
 Gs6DOKjvqFrwByy7/TjFDbwFhNXuidA0EJT42Fth3iNhQ+ZiwMcGbxJK6QdBNI8FAa3e3jsXEX2wN
 2/Cs9SQIjQBGav+F2sU59HeF2Ot0elVs3dQoxLuXG/BUZUbIRPbMq9RoFKZ9knIfviGGu8OHgPwQ1
 f8NPh60oFdQNtXVKumu6Z+c3Eq+BrrgS4b59c7obCHtqpdVsTQsja6uut4tklyiMpgP+hU+Q4Y97C
 cLvBcA7GQ==;
Received: from smtpbgbr2.qq.com ([54.207.22.56])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfKfE-0006xa-2h
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 08:49:28 +0000
X-QQ-mid: bizesmtp17t1561365748tdflm7vi
Received: from localhost.localdomain (unknown [113.116.57.80])
 by esmtp6.qq.com (ESMTP) with 
 id ; Mon, 24 Jun 2019 16:41:59 +0800 (CST)
X-QQ-SSF: 01400000001000L0ZG40000A0000000
X-QQ-FEAT: 19H10UpB2i5I48DNjrBVHmqODll51pYkOvRjBuRN+JQlJAukVMlUBWmATIkY0
 5ihG/6k3fGGW54lkxptbXfkD8WVV6c5x4G/ZRbjfs7/VC5B/+86aNPoZzDoNPAY8cnsdYGz
 aWk1vfx8DjZmC+KnQlo+sPMdbOeRW2KVTLUd3iqkaRLdIRu7VMMPGc66TXfj06a1r+wcvXZ
 7XIxGPkyQgPOgW7td7gySW7TaJBHB+O9svLeH9ttQHhSYl3uaRbpDLmYbNKHbClzXveREJC
 2GQEAPxtbd08utNY357DbzFD2Ldk/hsOzLt8oUYLfYMPrDv6qJk1vStJPxSvXhOxKQaj3Vv
 pcX8KYuf4ztLyDDAJo=
X-QQ-GoodBg: 2
From: Luochongjun <luochongjun@gl-inet.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 24 Jun 2019 16:41:37 +0800
Message-Id: <1561365697-7221-1-git-send-email-luochongjun@gl-inet.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign2
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_094924_583331_B0429101 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.207.22.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

This patch support gl-ar750 on ath79.

Signed-off-by: Luo chongjun <luochongjun@gl-inet.com>
---
 .../etc/hotplug.d/firmware/11-ath10k-caldata       |   1 +
 target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts | 149 +++++++++++++++++++++
 target/linux/ath79/image/generic.mk                |   8 ++
 3 files changed, 158 insertions(+)
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
index 0000000..c173f0d
--- /dev/null
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
@@ -0,0 +1,149 @@
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
+		compatible = "gpio-keys-polled";
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
+                        label = "mode";
+                        linux,code = <BTN_0>;
+                        gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+                };
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		power {
+			label = "gl-ar750:green:power";
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
+			default-state = "on";
+		};
+
+		wlan2g {
+			label = "gl-ar750:green:wlan2g";
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
+		};
+
+		wlan5g {
+			label = "gl-ar750:green:wlan5g";
+			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+	};
+
+       i2c {
+                compatible = "i2c-gpio";
+
+                sda-gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
+                scl-gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+
+                /* can be removed on 4.19 */
+                gpios = <&gpio 17 GPIO_ACTIVE_LOW>,
+                        <&gpio 16 GPIO_ACTIVE_LOW>;
+
+        };
+
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
