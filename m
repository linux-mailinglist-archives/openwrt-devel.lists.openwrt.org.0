Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A90FBAB82
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 22:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p4069xHsXL/qnFvK8ii++8YdoGLDf10pPXVZVMYEgIg=; b=GYwFQo6FvjRsaJ
	OGbd8s09KjVvKJY/DQfW+kRU16TsAUsow2QoQTZ+KRyR9o/fhu5my0sIgYhlDUnnN3ZaTv+ae/3pi
	jpUb1EY2AhEV8r90HGaSvyWAG1O9nlLXcR4m+rctbbNs9QOEJ8FGkChEDOhMUx3QklBOywPad/PiF
	opKtdP1Kv07x8tFwZn1addwTDB0hPYZnuQf1ei/2DgH2CtZEwcOX0GwAr07ZeD74Xra+6LvmgHC8b
	7OUdEqKUFkU3kcsPrLSY4DofGtXErUIWgWb8N4mBC2htOoZDt1qW2zzM/uOVr/VBot81QLohaq2LA
	IU6BDANDaiIGinWDzOhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC87T-0007rA-En; Sun, 22 Sep 2019 20:06:07 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC87K-0007qE-Lb
 for openwrt-devel@lists.openwrt.org; Sun, 22 Sep 2019 20:06:00 +0000
Received: by mail-wr1-x42b.google.com with SMTP id r3so11685772wrj.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 22 Sep 2019 13:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rvIpyiUoz5qpfoz7uyILsuxJ/DOcifE46BWBMUDNsrc=;
 b=nzD9YEXTl133rE1cv3tPEfNaqb5J1Fm7AAqeXF8xiF3RY7qQYafsfKEss2sVMxKCB/
 +M81/4SWDKBj+oInvPPbC2j7IullLbY8vgAPclK97FV1zA1f5ew6qoUV/t/8y/yMVbY9
 GWcNHgKXL5LAQ0INxvyHYIkeVG/dwOwOXw6Y1bkaOzqTt2Pa+UkIDxq1/PmV6XrGDTz3
 XEzEOIG5UpqpbiNH04Dcg9oqd1nPQZdffvtXJiT2rGlQY3CWnQNjJ1MKDN6UyOFgjFbk
 BiP0kU5/5JIX/iM1NhCMCIpUvkRihweuPKSvmWV2PZqy4X2K4GoD0Bd1J9qT+9iEquD0
 2KuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rvIpyiUoz5qpfoz7uyILsuxJ/DOcifE46BWBMUDNsrc=;
 b=NTtGkNqD89sMByT1aQUxUla4VyqT7kCjmmKtLApsdIqY0MX8mW0ARW4IbNCN+U5Bfc
 G6BzCMTkgzn9E6IGIJecxFeCtTChummEIZ2lKCLSlfzjBZsnlFFNeW9bzIYgAmXFCi+z
 tZ8zrvPBTBrpNjWHbUg25mScjp3CfI84f3s54u9XMX6cIZVg0dGJlzODT4AKltWc+9B3
 hcWRMF/kI3zqVCRGuECUWMCLlR/5t5TixCysx8faXyiY0fSQ4lLe/c6w4o6xXVQO1p+l
 yoY6qo8GCp3zTPyZOezCGbsCPeIgLHyUkDMAMgc5O4efX9Rk+tvjWiL0FU7q1n4NbfLj
 Vh8Q==
X-Gm-Message-State: APjAAAVqF0LFJ6YbM+SBIm1i/5wt5LheSlO4WQsjkgCt6N17QOYY40J2
 MvfmrjdL0E19jjPmEQ2AjJwbFwuS
X-Google-Smtp-Source: APXvYqwR4xvl1Qw7RZ386llj6xMtpntQm32T0VO+gSgTFr4oITo4KXlPcwYHB208RdEwwqNzVfJBfw==
X-Received: by 2002:adf:e78d:: with SMTP id n13mr7185385wrm.355.1569182755551; 
 Sun, 22 Sep 2019 13:05:55 -0700 (PDT)
Received: from tool.localnet (180.151.117.91.dynamic.reverse-mundo-r.com.
 [91.117.151.180])
 by smtp.googlemail.com with ESMTPSA id h63sm12195464wmf.15.2019.09.22.13.05.53
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Sep 2019 13:05:54 -0700 (PDT)
From: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Sep 2019 22:05:52 +0200
Message-ID: <3020121.uscLunan1g@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_130558_734716_6970F28A 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dgcbueu[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] Add support for Inventel DV4210
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Add support for the Inventel DV4210 router.

This is an Inventel Livebox 1 board. The patch supports the board with a CFE bootloader, and
a RAM mod (64 MB, tested).  The board originally comes with 8 MB flash.  Under this conditions
this old BCM6348 based board still runs quite fine with current snapshots.

Signed-off-by: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>
---
 .../brcm63xx/base-files/etc/board.d/01_leds   |   1 +
 .../base-files/etc/board.d/02_network         |   2 +-
 target/linux/brcm63xx/base-files/etc/diag.sh  |   1 +
 .../linux/brcm63xx/base-files/lib/brcm63xx.sh |   3 +
 target/linux/brcm63xx/dts/dv4210.dts          | 102 ++++++++++++++++++
 target/linux/brcm63xx/image/bcm63xx.mk        |  13 +++
 .../patches-4.14/599-board_DV4210.patch       |  50 +++++++++
 7 files changed, 171 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/brcm63xx/dts/dv4210.dts
 create mode 100644 target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch

diff --git a/target/linux/brcm63xx/base-files/etc/board.d/01_leds b/target/linux/brcm63xx/base-files/etc/board.d/01_leds
index d25d37e847..00109ba112 100755
--- a/target/linux/brcm63xx/base-files/etc/board.d/01_leds
+++ b/target/linux/brcm63xx/base-files/etc/board.d/01_leds
@@ -69,6 +69,7 @@ homehub2a)
 	ucidef_set_led_usbdev "usb1" "USB1" "HOMEHUB2A:blue:phone" "1-1"
 	ucidef_set_led_usbdev "usb2" "USB2" "HOMEHUB2A:green:phone" "2-1"
 	;;
+dv4210|\
 livebox1)
 	ucidef_set_led_netdev "lan" "LAN" "Livebox1:red:traffic" "eth0"
 	ucidef_set_led_netdev "wan" "WAN" "Livebox1:red:adsl" "eth1"
diff --git a/target/linux/brcm63xx/base-files/etc/board.d/02_network b/target/linux/brcm63xx/base-files/etc/board.d/02_network
index a2ca5a37b3..0e384f82f6 100755
--- a/target/linux/brcm63xx/base-files/etc/board.d/02_network
+++ b/target/linux/brcm63xx/base-files/etc/board.d/02_network
@@ -145,8 +145,8 @@ bcm963268bu_p300)
 	ucidef_add_switch "switch0" \
 		"0:lan" "3:lan" "4:lan" "5:lan" "6:lan" "7:lan" "8t@eth0"
 	;;
-
 cpva502p |\
+dv4210 |\
 livebox1)
 	ucidef_set_interfaces_lan_wan "eth0" "eth1"
 	;;
diff --git a/target/linux/brcm63xx/base-files/etc/diag.sh b/target/linux/brcm63xx/base-files/etc/diag.sh
index 34464ec44a..c673a75e40 100644
--- a/target/linux/brcm63xx/base-files/etc/diag.sh
+++ b/target/linux/brcm63xx/base-files/etc/diag.sh
@@ -114,6 +114,7 @@ set_state() {
 	hg655b)
 		status_led="HW65x:green:power"
 		;;
+	dv4210|\
 	livebox1)
 		status_led="Livebox1:red:adsl-fail-power"
 		;;
diff --git a/target/linux/brcm63xx/base-files/lib/brcm63xx.sh b/target/linux/brcm63xx/base-files/lib/brcm63xx.sh
index 1676ae0abb..9c0c33cc31 100755
--- a/target/linux/brcm63xx/base-files/lib/brcm63xx.sh
+++ b/target/linux/brcm63xx/base-files/lib/brcm63xx.sh
@@ -177,6 +177,9 @@ brcm63xx_dt_detect() {
 	"Inteno VG50")
 		board_name="vg50"
 		;;
+	"Inventel DV4210")
+		board_name="dv4210"
+		;;
 	"Inventel Livebox 1")
 		board_name="livebox1"
 		;;
diff --git a/target/linux/brcm63xx/dts/dv4210.dts b/target/linux/brcm63xx/dts/dv4210.dts
new file mode 100644
index 0000000000..02975fe3b6
--- /dev/null
+++ b/target/linux/brcm63xx/dts/dv4210.dts
@@ -0,0 +1,102 @@
+/dts-v1/;
+
+#include "bcm6348.dtsi"
+
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Inventel DV4210";
+	compatible = "inventel,dv4210", "brcm,bcm6348";
+
+	chosen {
+		bootargs = "rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200";
+		stdout-path = "serial0:115200n8";
+	};
+
+	keys {
+		compatible = "gpio-keys-polled";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		poll-interval = <20>;
+
+		button1 {
+			label = "1";
+			gpios = <&pinctrl 36 1>;
+			linux,code = <KEY_RESTART>;
+			debounce-interval = <60>;
+		};
+
+		button2 {
+			label = "2";
+			gpios = <&pinctrl 7 1>;
+			linux,code = <BTN_2>;
+			debounce-interval = <60>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		red_adsl_fail {
+			label = "Livebox1:red:adsl-fail-power";
+			gpios = <&pinctrl 0 0>;
+			default-state = "on";
+		};
+
+		red_adsl {
+			label = "Livebox1:red:adsl";
+			gpios = <&pinctrl 1 0>;
+		};
+
+		red_traffic {
+			label = "Livebox1:red:traffic";
+			gpios = <&pinctrl 2 0>;
+		};
+
+		red_phone {
+			label = "Livebox1:red:phone";
+			gpios = <&pinctrl 3 0>;
+		};
+
+		red_wifi {
+			label = "Livebox1:red:wifi";
+			gpios = <&pinctrl 4 0>;
+		};
+	};
+};
+
+&pflash {
+	reg = <0x1f400000 0x800000>;
+	status = "ok";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		cfe@0 {
+			reg = <0x000000 0x010000>;
+			label = "cfe";
+		};
+
+		linux@10000 {
+			reg = <0x010000 0x7e0000>;
+			label = "linux";
+			compatible = "brcm,bcm963xx-imagetag";
+		};
+
+		nvram@7f0000 {
+			reg = <0x7f0000 0x010000>;
+			label = "nvram";
+		};
+	};
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pci &pinctrl_ext_mii &pinctrl_mii_pccard>;
+};
+
+&uart0 {
+	status = "ok";
+};
diff --git a/target/linux/brcm63xx/image/bcm63xx.mk b/target/linux/brcm63xx/image/bcm63xx.mk
index 212960e972..690ffb49fa 100644
--- a/target/linux/brcm63xx/image/bcm63xx.mk
+++ b/target/linux/brcm63xx/image/bcm63xx.mk
@@ -769,6 +769,19 @@ define Device/livebox
 endef
 TARGET_DEVICES += livebox
 
+define Device/DV4210
+  $(Device/bcm63xx)
+  DEVICE_TITLE := Inventel DV4210
+  DEVICE_DESCRIPTION = Build firmware images for the Inventel DV4210. Board with CFE bootloader and >32MB RAM
+  DEVICE_DTS := dv4210
+  CFE_BOARD_ID := DV4210
+  CFE_CHIP_ID := 6348
+  DEVICE_PACKAGES := \
+    $(B43_PACKAGES) $(USB1_PACKAGES)
+  DEFAULT := y
+endef
+TARGET_DEVICES += DV4210
+
 ### Netgear ###
 define Device/CVG834G
   $(Device/bcm33xx)
diff --git a/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch b/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch
new file mode 100644
index 0000000000..618a214d63
--- /dev/null
+++ b/target/linux/brcm63xx/patches-4.14/599-board_DV4210.patch
@@ -0,0 +1,50 @@
+--- a/arch/mips/bcm63xx/boards/board_bcm963xx.c
++++ b/arch/mips/bcm63xx/boards/board_bcm963xx.c
+@@ -1058,6 +1058,31 @@
+ 	},
+ };
+ 
++static struct board_info __initdata board_DV4210 = {
++	.name				= "DV4210",
++	.expected_cpu_id		= 0x6348,
++
++	.has_enet0			= 1,
++	.has_enet1			= 1,
++	.has_pci			= 1,
++
++	.enet0 = {
++		.has_phy		= 1,
++		.use_internal_phy	= 1,
++	},
++
++	.enet1 = {
++		  .has_phy		= 1,
++		  .phy_id 		= 31,
++	},
++
++	.ephy_reset_gpio		= 6,
++	.ephy_reset_gpio_flags	= GPIO_ACTIVE_LOW,
++
++	.has_ohci0			= 1,
++	.has_pccard			= 0,
++};
++
+ static struct board_info __initdata board_96348A_122 = {
+ 	.name				= "96348A-122",
+ 	.expected_cpu_id		= 0x6348,
+@@ -2746,6 +2771,7 @@
+ 	&board_FAST2404,
+ 	&board_FAST2604,
+ 	&board_DV201AMR,
++	&board_DV4210,
+ 	&board_96348gw_a,
+ 	&board_rta1025w_16,
+ 	&board_96348_D4PW,
+@@ -2859,6 +2885,7 @@
+ 	{ .compatible = "d-link,dsl-2640b-b", .data = &board_96348_D4PW, },
+ 	{ .compatible = "davolink,dv-201amr", .data = &board_DV201AMR, },
+ 	{ .compatible = "dynalink,rta1025w", .data = &board_rta1025w_16, },
++	{ .compatible = "inventel,dv4210", .data = &board_DV4210, },
+ 	{ .compatible = "netgear,dg834gtpn", .data = &board_96348gw_10, },
+  	{ .compatible = "netgear,dg834g-v4", .data = &board_96348W3, },
+ 	{ .compatible = "sagem,f@st2404", .data = &board_FAST2404, },
-- 
2.23.0





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
