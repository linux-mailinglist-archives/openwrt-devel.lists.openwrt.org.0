Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A259179D
	for <lists+openwrt-devel@lfdr.de>; Sun, 18 Aug 2019 18:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EJDWhIAxf4VzBkb+ZitAzGS/yLiQdh6wqqjdYN4B+ZM=; b=TAcs4XPYLuBHE8
	FbsIFfyhlixPTkOCZbUHjLpTE+3Ofb9qyeOfdbodsAuVGS1845eVj9HjKuBbTlV8L6b7ocrtqXaZE
	GLJYuEgft0JgP5VFDhXEMTWkQQEuKx32czFPUPQiQQgM7XKrlzzkA9eowhQ1wTg3BMyiR4SFZBS+d
	bP+ll5p5pooDET2zn34pT+VGUgoJyYM9gZSkx5w9mT36j4UhCL72VDxG3+m01KQf2nN4URUFwz8BZ
	3N43ibS+Alg7Q9HePU5Rq9ZVJ9RmtZTzpL/GJi+H90KGYJr9PYfDLUc/Pa0Pj/dRuOU2wdg4he83Z
	FkF1FKRSNjjsQ9isCZPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzNcb-00052e-VH; Sun, 18 Aug 2019 16:01:34 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzNcR-00052L-22
 for openwrt-devel@lists.openwrt.org; Sun, 18 Aug 2019 16:01:26 +0000
Received: by mail-qt1-x843.google.com with SMTP id k13so11464017qtm.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 18 Aug 2019 09:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IQYyGm7m6jJX1LPizocIUNZoyXgzDFAldRcgeRBtaWY=;
 b=QizjlqNAC5jsOpJIcO7REeyNm8F6Pl5rPBqa2qO5DPNxLFzYT4GtfaB3h2ia9EKlhv
 FObeHOrPURw/KBscTb+o/vGFTZFMeVDBJp9tAV6Buz0avI3fXGS1hcCWwWlgRQrNLy8O
 sojmXN1Wl5UlkwRcmNd44Ie7wmDXhUiJEuo0//ruqUNg0WjCwLVdlmy4sXoBcmBi2rFM
 8BiILqj+NsTjzCXimAV+txF0L/XaIx/t95evAR6avBgn8121Z1l7Gt/cwwTjL3l68GlS
 /pcsPjFpqEiUY1tiEEziyBbxFBkpFooFWkWhiULqiT4hGnoM5RU36XfEyGCp8RHBY80t
 EG/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IQYyGm7m6jJX1LPizocIUNZoyXgzDFAldRcgeRBtaWY=;
 b=HuwM2XW0CRgN5I9o9unQylHmVD/ox3HlNsiWL+/IkJGNiZbpj5vl54OKjwlbiD5Q+S
 v69pj7DRNWPXnrxbsuVJ9ZNJj1GyCYT+zIPLqku9C4NXUa2q6Vi3fabj8FA7wNvTqHe7
 vAxBcswRdJoYRQL81PBcnRGGGiRJeB/rdXQKDWCjmE4VXiRRZV7tmSyDeX3ZcWJVo10E
 xrfEs5GBPtEWfNyVW7u6984FfY+Y40skc1JJrOZto/e7igRVpWC55/me8LlFMk4YUjYB
 4dYCVoMFvoCp4RBy8kIKMwGZSeyfWbb0+2vme+sZ9i22CyI6kcNz8OHmR3NDoBxuFhbA
 NTBg==
X-Gm-Message-State: APjAAAU4ZkgsvcJe+uo8MVm7h6mPiqSez+w5oCVbqWrrbADlTdDNXI+P
 gFwT23pVGoSYQzctdYzPaRh1dUFq
X-Google-Smtp-Source: APXvYqwUMMt0WlP6xawcLLKSWKw/EIDAaMiYM8hthnuQeIHojsW6a2bG8TBLyMOAGZjHm1Ed0V65Qg==
X-Received: by 2002:ac8:4504:: with SMTP id q4mr17136164qtn.286.1566144081336; 
 Sun, 18 Aug 2019 09:01:21 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.43.184])
 by smtp.gmail.com with ESMTPSA id d123sm5920383qkb.94.2019.08.18.09.01.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Aug 2019 09:01:20 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 18 Aug 2019 12:00:29 -0400
Message-Id: <20190818160029.1204-1-luaraneda@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_090124_135457_879F1F70 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] uboot-zynq: update to 2019.07
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
Cc: Luis Araneda <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Luis Araneda <luaraneda@gmail.com>
---
Compile-tested: All zynq boards
run-tested: Digilent Zybo z7-20
---
 package/boot/uboot-zynq/Makefile              |   4 +-
 ...q-dts-add-spi-flash-node-to-zedboard.patch |  38 --
 ...nq-add-support-for-the-zybo-z7-board.patch | 499 ------------------
 ...ad-mac-address-from-SPI-flash-memory.patch |  59 ++-
 .../patches/210-link-libcrypto-static.patch   |   6 +-
 5 files changed, 37 insertions(+), 569 deletions(-)
 delete mode 100644 package/boot/uboot-zynq/patches/020-v2018.09-arm-zynq-dts-add-spi-flash-node-to-zedboard.patch
 delete mode 100644 package/boot/uboot-zynq/patches/025-v2018.09-arm-zynq-add-support-for-the-zybo-z7-board.patch

diff --git a/package/boot/uboot-zynq/Makefile b/package/boot/uboot-zynq/Makefile
index 2e4c6cc034..b6b1dc8b85 100644
--- a/package/boot/uboot-zynq/Makefile
+++ b/package/boot/uboot-zynq/Makefile
@@ -7,9 +7,9 @@
 
 include $(TOPDIR)/rules.mk
 
-PKG_VERSION:=2018.07
+PKG_VERSION:=2019.07
 
-PKG_HASH:=9f10df88bc91b35642e461217f73256bbaeeca9ae2db8db56197ba5e89e1f6d4
+PKG_HASH:=bff4fa77e8da17521c030ca4c5b947a056c1b1be4d3e6ee8637020b8d50251d0
 
 include $(INCLUDE_DIR)/kernel.mk
 include $(INCLUDE_DIR)/u-boot.mk
diff --git a/package/boot/uboot-zynq/patches/020-v2018.09-arm-zynq-dts-add-spi-flash-node-to-zedboard.patch b/package/boot/uboot-zynq/patches/020-v2018.09-arm-zynq-dts-add-spi-flash-node-to-zedboard.patch
deleted file mode 100644
index 195cdf632c..0000000000
--- a/package/boot/uboot-zynq/patches/020-v2018.09-arm-zynq-dts-add-spi-flash-node-to-zedboard.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-From a492fdffa3c86f6b8420b6433a2ce07271597324 Mon Sep 17 00:00:00 2001
-From: Luis Araneda <luaraneda@gmail.com>
-Date: Fri, 27 Jul 2018 04:43:42 -0400
-Subject: [PATCH] arm: zynq: dts: add spi flash node to zedboard
-
-Add a flash node to fix the detection of the memory IC.
-With the changes introduced with commit 8fee8845e754
-("enf_sf: reuse setup_flash_device instead of open coding it")
-the SPI speed is now read from device-tree or a default value
-is applied. This replaced the old behavior of setting the
-SPI speed to CONFIG_ENV_SPI_MAX_HZ.
-
-As this board didn't have a flash node, the default value
-was applied to the SPI speed, producing an error when probing
-the flash memory (speed too slow).
-
-Signed-off-by: Luis Araneda <luaraneda@gmail.com>
-Signed-off-by: Michal Simek <michal.simek@xilinx.com>
----
- arch/arm/dts/zynq-zed.dts | 7 +++++++
- 1 file changed, 7 insertions(+)
-
---- a/arch/arm/dts/zynq-zed.dts
-+++ b/arch/arm/dts/zynq-zed.dts
-@@ -51,6 +51,13 @@
- &qspi {
- 	u-boot,dm-pre-reloc;
- 	status = "okay";
-+	num-cs = <1>;
-+	flash@0 {
-+		compatible = "spansion,s25fl256s", "spi-flash";
-+		reg = <0>;
-+		spi-max-frequency = <30000000>;
-+		m25p,fast-read;
-+	};
- };
- 
- &sdhci0 {
diff --git a/package/boot/uboot-zynq/patches/025-v2018.09-arm-zynq-add-support-for-the-zybo-z7-board.patch b/package/boot/uboot-zynq/patches/025-v2018.09-arm-zynq-add-support-for-the-zybo-z7-board.patch
deleted file mode 100644
index 0e4504b851..0000000000
--- a/package/boot/uboot-zynq/patches/025-v2018.09-arm-zynq-add-support-for-the-zybo-z7-board.patch
+++ /dev/null
@@ -1,499 +0,0 @@
-From 58f449676ac29938ea2970e240a2defe99240a8e Mon Sep 17 00:00:00 2001
-From: Luis Araneda <luaraneda@gmail.com>
-Date: Tue, 24 Jul 2018 11:31:19 -0400
-Subject: [PATCH] arm: zynq: add support for the zybo z7 board
-
-The board is manufactured by Digilent
-Main features:
-- Soc: XC7Z010 (Z7-10) or XC7Z020 (Z7-20)
-- RAM: 1 GB DDR3L
-- FLASH: 16 MB QSPI
-- 1 Gbps Ethernet
-- USB 2.0
-- microSD slot
-- Pcam camera connector
-- HDMI Tx and Rx
-- Audio codec: stereo out, stereo in, mic
-- 5 (Z7-10) or 6 (Z7-20) Pmod ports
-- 6 push-buttons, 4 switches, 5 LEDs
-- 1 (Z7-10) or 2 (Z7-20) RGB LEDs
-
-Signed-off-by: Luis Araneda <luaraneda@gmail.com>
-Signed-off-by: Michal Simek <michal.simek@xilinx.com>
----
- arch/arm/dts/Makefile                         |   3 +-
- arch/arm/dts/zynq-zybo-z7.dts                 |  81 +++++
- board/xilinx/zynq/zynq-zybo-z7/ps7_init_gpl.c | 297 ++++++++++++++++++
- configs/zynq_zybo_z7_defconfig                |  68 ++++
- 4 files changed, 448 insertions(+), 1 deletion(-)
- create mode 100644 arch/arm/dts/zynq-zybo-z7.dts
- create mode 100644 board/xilinx/zynq/zynq-zybo-z7/ps7_init_gpl.c
- create mode 100644 configs/zynq_zybo_z7_defconfig
-
---- a/arch/arm/dts/Makefile
-+++ b/arch/arm/dts/Makefile
-@@ -145,7 +145,8 @@ dtb-$(CONFIG_ARCH_ZYNQ) += \
- 	zynq-zc770-xm013.dtb \
- 	zynq-zed.dtb \
- 	zynq-zturn.dtb \
--	zynq-zybo.dtb
-+	zynq-zybo.dtb \
-+	zynq-zybo-z7.dtb
- dtb-$(CONFIG_ARCH_ZYNQMP) += \
- 	zynqmp-mini-emmc0.dtb			\
- 	zynqmp-mini-emmc1.dtb			\
---- /dev/null
-+++ b/arch/arm/dts/zynq-zybo-z7.dts
-@@ -0,0 +1,81 @@
-+// SPDX-License-Identifier: GPL-2.0+
-+/*
-+ *  Copyright (C) 2011 - 2015 Xilinx
-+ *  Copyright (C) 2012 National Instruments Corp.
-+ */
-+/dts-v1/;
-+#include "zynq-7000.dtsi"
-+#include <dt-bindings/gpio/gpio.h>
-+
-+/ {
-+	model = "Digilent Zybo Z7 board";
-+	compatible = "digilent,zynq-zybo-z7", "xlnx,zynq-7000";
-+
-+	aliases {
-+		ethernet0 = &gem0;
-+		serial0 = &uart1;
-+		spi0 = &qspi;
-+		mmc0 = &sdhci0;
-+	};
-+
-+	memory@0 {
-+		device_type = "memory";
-+		reg = <0x0 0x40000000>;
-+	};
-+
-+	chosen {
-+		bootargs = "";
-+		stdout-path = "serial0:115200n8";
-+	};
-+
-+	gpio-leds {
-+		compatible = "gpio-leds";
-+
-+		ld4 {
-+			label = "zynq-zybo-z7:green:ld4";
-+			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
-+		};
-+	};
-+
-+	usb_phy0: phy0 {
-+		#phy-cells = <0>;
-+		compatible = "usb-nop-xceiv";
-+		reset-gpios = <&gpio0 46 GPIO_ACTIVE_LOW>;
-+	};
-+};
-+
-+&clkc {
-+	ps-clk-frequency = <33333333>;
-+};
-+
-+&gem0 {
-+	status = "okay";
-+	phy-mode = "rgmii-id";
-+	phy-handle = <&ethernet_phy>;
-+
-+	ethernet_phy: ethernet-phy@0 {
-+		reg = <0>;
-+		device_type = "ethernet-phy";
-+	};
-+};
-+
-+&qspi {
-+	u-boot,dm-pre-reloc;
-+	status = "okay";
-+};
-+
-+&sdhci0 {
-+	u-boot,dm-pre-reloc;
-+	status = "okay";
-+};
-+
-+&uart1 {
-+	u-boot,dm-pre-reloc;
-+	status = "okay";
-+};
-+
-+&usb0 {
-+	status = "okay";
-+	dr_mode = "host";
-+	usb-phy = <&usb_phy0>;
-+};
---- /dev/null
-+++ b/board/xilinx/zynq/zynq-zybo-z7/ps7_init_gpl.c
-@@ -0,0 +1,297 @@
-+// SPDX-License-Identifier: GPL-2.0+
-+/*
-+ * (c) Copyright 2010-2014 Xilinx, Inc. All rights reserved.
-+ *
-+ * Procedure to generate this file (using Vivado Webpack 2018.2):
-+ * + Install board files from digilent/vivado-boards repository
-+ *   (commit 6a45981 from 2018-06-05)
-+ * + Start Vivado and create a new RTL project with the Zybo-z7-20 board
-+ * + Create a block design
-+ *   - Add "ZYNQ7 Processing System" IP
-+ *   - Run "Block Automation" (Check "Apply Board Preset")
-+ *   - Connect ports FCLK_CLK0 and M_AXI_GP0_ACLK
-+ *   - Save diagram changes
-+ *   - Go to sources view, select the block diagram,
-+ *     and select "Generate Output Products"
-+ * + Copy the generated "ps7_init_gpl.c" file
-+ * + Perform manual editions based on existing Zynq boards
-+ *   and the checkpatch.pl script
-+ *
-+ */
-+
-+#include <asm/arch/ps7_init_gpl.h>
-+
-+static unsigned long ps7_pll_init_data_3_0[] = {
-+	EMIT_WRITE(0xF8000008, 0x0000DF0DU),
-+	EMIT_MASKWRITE(0xF8000110, 0x003FFFF0U, 0x000FA220U),
-+	EMIT_MASKWRITE(0xF8000100, 0x0007F000U, 0x00028000U),
-+	EMIT_MASKWRITE(0xF8000100, 0x00000010U, 0x00000010U),
-+	EMIT_MASKWRITE(0xF8000100, 0x00000001U, 0x00000001U),
-+	EMIT_MASKWRITE(0xF8000100, 0x00000001U, 0x00000000U),
-+	EMIT_MASKPOLL(0xF800010C, 0x00000001U),
-+	EMIT_MASKWRITE(0xF8000100, 0x00000010U, 0x00000000U),
-+	EMIT_MASKWRITE(0xF8000120, 0x1F003F30U, 0x1F000200U),
-+	EMIT_MASKWRITE(0xF8000114, 0x003FFFF0U, 0x0012C220U),
-+	EMIT_MASKWRITE(0xF8000104, 0x0007F000U, 0x00020000U),
-+	EMIT_MASKWRITE(0xF8000104, 0x00000010U, 0x00000010U),
-+	EMIT_MASKWRITE(0xF8000104, 0x00000001U, 0x00000001U),
-+	EMIT_MASKWRITE(0xF8000104, 0x00000001U, 0x00000000U),
-+	EMIT_MASKPOLL(0xF800010C, 0x00000002U),
-+	EMIT_MASKWRITE(0xF8000104, 0x00000010U, 0x00000000U),
-+	EMIT_MASKWRITE(0xF8000124, 0xFFF00003U, 0x0C200003U),
-+	EMIT_MASKWRITE(0xF8000118, 0x003FFFF0U, 0x001452C0U),
-+	EMIT_MASKWRITE(0xF8000108, 0x0007F000U, 0x0001E000U),
-+	EMIT_MASKWRITE(0xF8000108, 0x00000010U, 0x00000010U),
-+	EMIT_MASKWRITE(0xF8000108, 0x00000001U, 0x00000001U),
-+	EMIT_MASKWRITE(0xF8000108, 0x00000001U, 0x00000000U),
-+	EMIT_MASKPOLL(0xF800010C, 0x00000004U),
-+	EMIT_MASKWRITE(0xF8000108, 0x00000010U, 0x00000000U),
-+	EMIT_WRITE(0xF8000004, 0x0000767BU),
-+	EMIT_EXIT(),
-+};
-+
-+static unsigned long ps7_clock_init_data_3_0[] = {
-+	EMIT_WRITE(0xF8000008, 0x0000DF0DU),
-+	EMIT_MASKWRITE(0xF8000128, 0x03F03F01U, 0x00700F01U),
-+	EMIT_MASKWRITE(0xF8000138, 0x00000011U, 0x00000001U),
-+	EMIT_MASKWRITE(0xF8000140, 0x03F03F71U, 0x00100801U),
-+	EMIT_MASKWRITE(0xF800014C, 0x00003F31U, 0x00000501U),
-+	EMIT_MASKWRITE(0xF8000150, 0x00003F33U, 0x00001401U),
-+	EMIT_MASKWRITE(0xF8000154, 0x00003F33U, 0x00000A02U),
-+	EMIT_MASKWRITE(0xF8000168, 0x00003F31U, 0x00000501U),
-+	EMIT_MASKWRITE(0xF8000170, 0x03F03F30U, 0x00400500U),
-+	EMIT_MASKWRITE(0xF80001C4, 0x00000001U, 0x00000001U),
-+	EMIT_MASKWRITE(0xF800012C, 0x01FFCCCDU, 0x01EC044DU),
-+	EMIT_WRITE(0xF8000004, 0x0000767BU),
-+	EMIT_EXIT(),
-+};
-+
-+static unsigned long ps7_ddr_init_data_3_0[] = {
-+	EMIT_MASKWRITE(0xF8006000, 0x0001FFFFU, 0x00000080U),
-+	EMIT_MASKWRITE(0xF8006004, 0x0007FFFFU, 0x00001081U),
-+	EMIT_MASKWRITE(0xF8006008, 0x03FFFFFFU, 0x03C0780FU),
-+	EMIT_MASKWRITE(0xF800600C, 0x03FFFFFFU, 0x02001001U),
-+	EMIT_MASKWRITE(0xF8006010, 0x03FFFFFFU, 0x00014001U),
-+	EMIT_MASKWRITE(0xF8006014, 0x001FFFFFU, 0x0004281AU),
-+	EMIT_MASKWRITE(0xF8006018, 0xF7FFFFFFU, 0x44E458D2U),
-+	EMIT_MASKWRITE(0xF800601C, 0xFFFFFFFFU, 0x720238E5U),
-+	EMIT_MASKWRITE(0xF8006020, 0x7FDFFFFCU, 0x270872D0U),
-+	EMIT_MASKWRITE(0xF8006024, 0x0FFFFFC3U, 0x00000000U),
-+	EMIT_MASKWRITE(0xF8006028, 0x00003FFFU, 0x00002007U),
-+	EMIT_MASKWRITE(0xF800602C, 0xFFFFFFFFU, 0x00000008U),
-+	EMIT_MASKWRITE(0xF8006030, 0xFFFFFFFFU, 0x00040930U),
-+	EMIT_MASKWRITE(0xF8006034, 0x13FF3FFFU, 0x000116D4U),
-+	EMIT_MASKWRITE(0xF8006038, 0x00000003U, 0x00000000U),
-+	EMIT_MASKWRITE(0xF800603C, 0x000FFFFFU, 0x00000777U),
-+	EMIT_MASKWRITE(0xF8006040, 0xFFFFFFFFU, 0xFFF00000U),
-+	EMIT_MASKWRITE(0xF8006044, 0x0FFFFFFFU, 0x0F666666U),
-+	EMIT_MASKWRITE(0xF8006048, 0x0003F03FU, 0x0003C008U),
-+	EMIT_MASKWRITE(0xF8006050, 0xFF0F8FFFU, 0x77010800U),
-+	EMIT_MASKWRITE(0xF8006058, 0x00010000U, 0x00000000U),
-+	EMIT_MASKWRITE(0xF800605C, 0x0000FFFFU, 0x00005003U),
-+	EMIT_MASKWRITE(0xF8006060, 0x000017FFU, 0x0000003EU),
-+	EMIT_MASKWRITE(0xF8006064, 0x00021FE0U, 0x00020000U),
-+	EMIT_MASKWRITE(0xF8006068, 0x03FFFFFFU, 0x00284141U),
-+	EMIT_MASKWRITE(0xF800606C, 0x0000FFFFU, 0x00001610U),
-+	EMIT_MASKWRITE(0xF8006078, 0x03FFFFFFU, 0x00466111U),
-+	EMIT_MASKWRITE(0xF800607C, 0x000FFFFFU, 0x00032222U),
-+	EMIT_MASKWRITE(0xF80060A4, 0xFFFFFFFFU, 0x10200802U),
-+	EMIT_MASKWRITE(0xF80060A8, 0x0FFFFFFFU, 0x0690CB73U),
-+	EMIT_MASKWRITE(0xF80060AC, 0x000001FFU, 0x000001FEU),
-+	EMIT_MASKWRITE(0xF80060B0, 0x1FFFFFFFU, 0x1CFFFFFFU),
-+	EMIT_MASKWRITE(0xF80060B4, 0x00000200U, 0x00000200U),
-+	EMIT_MASKWRITE(0xF80060B8, 0x01FFFFFFU, 0x00200066U),
-+	EMIT_MASKWRITE(0xF80060C4, 0x00000003U, 0x00000000U),
-+	EMIT_MASKWRITE(0xF80060C8, 0x000000FFU, 0x00000000U),
-+	EMIT_MASKWRITE(0xF80060DC, 0x00000001U, 0x00000000U),
-+	EMIT_MASKWRITE(0xF80060F0, 0x0000FFFFU, 0x00000000U),
-+	EMIT_MASKWRITE(0xF80060F4, 0x0000000FU, 0x00000008U),
-+	EMIT_MASKWRITE(0xF8006114, 0x000000FFU, 0x00000000U),
-+	EMIT_MASKWRITE(0xF8006118, 0x7FFFFFCFU, 0x40000001U),
-+	EMIT_MASKWRITE(0xF800611C, 0x7FFFFFCFU, 0x40000001U),
-+	EMIT_MASKWRITE(0xF8006120, 0x7FFFFFCFU, 0x40000001U),
-+	EMIT_MASKWRITE(0xF8006124, 0x7FFFFFCFU, 0x40000001U),
-+	EMIT_MASKWRITE(0xF800612C, 0x000FFFFFU, 0x00027000U),
-+	EMIT_MASKWRITE(0xF8006130, 0x000FFFFFU, 0x00027000U),
-+	EMIT_MASKWRITE(0xF8006134, 0x000FFFFFU, 0x00026C00U),
-+	EMIT_MASKWRITE(0xF8006138, 0x000FFFFFU, 0x00028800U),
-+	EMIT_MASKWRITE(0xF8006140, 0x000FFFFFU, 0x00000035U),
-+	EMIT_MASKWRITE(0xF8006144, 0x000FFFFFU, 0x00000035U),
-+	EMIT_MASKWRITE(0xF8006148, 0x000FFFFFU, 0x00000035U),
-+	EMIT_MASKWRITE(0xF800614C, 0x000FFFFFU, 0x00000035U),
-+	EMIT_MASKWRITE(0xF8006154, 0x000FFFFFU, 0x0000007AU),
-+	EMIT_MASKWRITE(0xF8006158, 0x000FFFFFU, 0x0000007AU),
-+	EMIT_MASKWRITE(0xF800615C, 0x000FFFFFU, 0x0000007CU),
-+	EMIT_MASKWRITE(0xF8006160, 0x000FFFFFU, 0x00000073U),
-+	EMIT_MASKWRITE(0xF8006168, 0x001FFFFFU, 0x000000F1U),
-+	EMIT_MASKWRITE(0xF800616C, 0x001FFFFFU, 0x000000F1U),
-+	EMIT_MASKWRITE(0xF8006170, 0x001FFFFFU, 0x000000F0U),
-+	EMIT_MASKWRITE(0xF8006174, 0x001FFFFFU, 0x000000F7U),
-+	EMIT_MASKWRITE(0xF800617C, 0x000FFFFFU, 0x000000BAU),
-+	EMIT_MASKWRITE(0xF8006180, 0x000FFFFFU, 0x000000BAU),
-+	EMIT_MASKWRITE(0xF8006184, 0x000FFFFFU, 0x000000BCU),
-+	EMIT_MASKWRITE(0xF8006188, 0x000FFFFFU, 0x000000B3U),
-+	EMIT_MASKWRITE(0xF8006190, 0x6FFFFEFEU, 0x00040080U),
-+	EMIT_MASKWRITE(0xF8006194, 0x000FFFFFU, 0x0001FC82U),
-+	EMIT_MASKWRITE(0xF8006204, 0xFFFFFFFFU, 0x00000000U),
-+	EMIT_MASKWRITE(0xF8006208, 0x000703FFU, 0x000003FFU),
-+	EMIT_MASKWRITE(0xF800620C, 0x000703FFU, 0x000003FFU),
-+	EMIT_MASKWRITE(0xF8006210, 0x000703FFU, 0x000003FFU),
-+	EMIT_MASKWRITE(0xF8006214, 0x000703FFU, 0x000003FFU),
-+	EMIT_MASKWRITE(0xF8006218, 0x000F03FFU, 0x000003FFU),
-+	EMIT_MASKWRITE(0xF800621C, 0x000F03FFU, 0x000003FFU),
-+	EMIT_MASKWRITE(0xF8006220, 0x000F03FFU, 0x000003FFU),
-+	EMIT_MASKWRITE(0xF8006224, 0x000F03FFU, 0x000003FFU),
-+	EMIT_MASKWRITE(0xF80062A8, 0x00000FF5U, 0x00000000U),
-+	EMIT_MASKWRITE(0xF80062AC, 0xFFFFFFFFU, 0x00000000U),
-+	EMIT_MASKWRITE(0xF80062B0, 0x003FFFFFU, 0x00005125U),
-+	EMIT_MASKWRITE(0xF80062B4, 0x0003FFFFU, 0x000012A8U),
-+	EMIT_MASKPOLL(0xF8000B74, 0x00002000U),
-+	EMIT_MASKWRITE(0xF8006000, 0x0001FFFFU, 0x00000081U),
-+	EMIT_MASKPOLL(0xF8006054, 0x00000007U),
-+	EMIT_EXIT(),
-+};
-+
-+static unsigned long ps7_mio_init_data_3_0[] = {
-+	EMIT_WRITE(0xF8000008, 0x0000DF0DU),
-+	EMIT_MASKWRITE(0xF8000B40, 0x00000FFFU, 0x00000600U),
-+	EMIT_MASKWRITE(0xF8000B44, 0x00000FFFU, 0x00000600U),
-+	EMIT_MASKWRITE(0xF8000B48, 0x00000FFFU, 0x00000672U),
-+	EMIT_MASKWRITE(0xF8000B4C, 0x00000FFFU, 0x00000672U),
-+	EMIT_MASKWRITE(0xF8000B50, 0x00000FFFU, 0x00000674U),
-+	EMIT_MASKWRITE(0xF8000B54, 0x00000FFFU, 0x00000674U),
-+	EMIT_MASKWRITE(0xF8000B58, 0x00000FFFU, 0x00000600U),
-+	EMIT_MASKWRITE(0xF8000B5C, 0xFFFFFFFFU, 0x0018C068U),
-+	EMIT_MASKWRITE(0xF8000B60, 0xFFFFFFFFU, 0x00F98068U),
-+	EMIT_MASKWRITE(0xF8000B64, 0xFFFFFFFFU, 0x00F98068U),
-+	EMIT_MASKWRITE(0xF8000B68, 0xFFFFFFFFU, 0x00F98068U),
-+	EMIT_MASKWRITE(0xF8000B6C, 0x00007FFFU, 0x00000260U),
-+	EMIT_MASKWRITE(0xF8000B70, 0x00000001U, 0x00000001U),
-+	EMIT_MASKWRITE(0xF8000B70, 0x00000021U, 0x00000020U),
-+	EMIT_MASKWRITE(0xF8000B70, 0x07FEFFFFU, 0x00000823U),
-+	EMIT_MASKWRITE(0xF8000700, 0x00003FFFU, 0x00001600U),
-+	EMIT_MASKWRITE(0xF8000704, 0x00003FFFU, 0x00001602U),
-+	EMIT_MASKWRITE(0xF8000708, 0x00003FFFU, 0x00000602U),
-+	EMIT_MASKWRITE(0xF800070C, 0x00003FFFU, 0x00000602U),
-+	EMIT_MASKWRITE(0xF8000710, 0x00003FFFU, 0x00000602U),
-+	EMIT_MASKWRITE(0xF8000714, 0x00003FFFU, 0x00000602U),
-+	EMIT_MASKWRITE(0xF8000718, 0x00003FFFU, 0x00000602U),
-+	EMIT_MASKWRITE(0xF800071C, 0x00003FFFU, 0x00000600U),
-+	EMIT_MASKWRITE(0xF8000720, 0x00003FFFU, 0x00000602U),
-+	EMIT_MASKWRITE(0xF8000724, 0x00003FFFU, 0x00001600U),
-+	EMIT_MASKWRITE(0xF8000728, 0x00003FFFU, 0x00001600U),
-+	EMIT_MASKWRITE(0xF800072C, 0x00003FFFU, 0x00001600U),
-+	EMIT_MASKWRITE(0xF8000730, 0x00003FFFU, 0x00001600U),
-+	EMIT_MASKWRITE(0xF8000734, 0x00003FFFU, 0x00001600U),
-+	EMIT_MASKWRITE(0xF8000738, 0x00003FFFU, 0x00001600U),
-+	EMIT_MASKWRITE(0xF800073C, 0x00003FFFU, 0x00001600U),
-+	EMIT_MASKWRITE(0xF8000740, 0x00003FFFU, 0x00001302U),
-+	EMIT_MASKWRITE(0xF8000744, 0x00003FFFU, 0x00001302U),
-+	EMIT_MASKWRITE(0xF8000748, 0x00003FFFU, 0x00001302U),
-+	EMIT_MASKWRITE(0xF800074C, 0x00003FFFU, 0x00001302U),
-+	EMIT_MASKWRITE(0xF8000750, 0x00003FFFU, 0x00001302U),
-+	EMIT_MASKWRITE(0xF8000754, 0x00003FFFU, 0x00001302U),
-+	EMIT_MASKWRITE(0xF8000758, 0x00003FFFU, 0x00001303U),
-+	EMIT_MASKWRITE(0xF800075C, 0x00003FFFU, 0x00001303U),
-+	EMIT_MASKWRITE(0xF8000760, 0x00003FFFU, 0x00001303U),
-+	EMIT_MASKWRITE(0xF8000764, 0x00003FFFU, 0x00001303U),
-+	EMIT_MASKWRITE(0xF8000768, 0x00003FFFU, 0x00001303U),
-+	EMIT_MASKWRITE(0xF800076C, 0x00003FFFU, 0x00001303U),
-+	EMIT_MASKWRITE(0xF8000770, 0x00003FFFU, 0x00001304U),
-+	EMIT_MASKWRITE(0xF8000774, 0x00003FFFU, 0x00001305U),
-+	EMIT_MASKWRITE(0xF8000778, 0x00003FFFU, 0x00001304U),
-+	EMIT_MASKWRITE(0xF800077C, 0x00003FFFU, 0x00001305U),
-+	EMIT_MASKWRITE(0xF8000780, 0x00003FFFU, 0x00001304U),
-+	EMIT_MASKWRITE(0xF8000784, 0x00003FFFU, 0x00001304U),
-+	EMIT_MASKWRITE(0xF8000788, 0x00003FFFU, 0x00001304U),
-+	EMIT_MASKWRITE(0xF800078C, 0x00003FFFU, 0x00001304U),
-+	EMIT_MASKWRITE(0xF8000790, 0x00003FFFU, 0x00001305U),
-+	EMIT_MASKWRITE(0xF8000794, 0x00003FFFU, 0x00001304U),
-+	EMIT_MASKWRITE(0xF8000798, 0x00003FFFU, 0x00001304U),
-+	EMIT_MASKWRITE(0xF800079C, 0x00003FFFU, 0x00001304U),
-+	EMIT_MASKWRITE(0xF80007A0, 0x00003FFFU, 0x00001280U),
-+	EMIT_MASKWRITE(0xF80007A4, 0x00003FFFU, 0x00001280U),
-+	EMIT_MASKWRITE(0xF80007A8, 0x00003FFFU, 0x00001280U),
-+	EMIT_MASKWRITE(0xF80007AC, 0x00003FFFU, 0x00001280U),
-+	EMIT_MASKWRITE(0xF80007B0, 0x00003FFFU, 0x00001280U),
-+	EMIT_MASKWRITE(0xF80007B4, 0x00003FFFU, 0x00001280U),
-+	EMIT_MASKWRITE(0xF80007B8, 0x00003FFFU, 0x00001200U),
-+	EMIT_MASKWRITE(0xF80007BC, 0x00003F01U, 0x00001201U),
-+	EMIT_MASKWRITE(0xF80007C0, 0x00003FFFU, 0x000012E0U),
-+	EMIT_MASKWRITE(0xF80007C4, 0x00003FFFU, 0x000012E1U),
-+	EMIT_MASKWRITE(0xF80007C8, 0x00003FFFU, 0x00001200U),
-+	EMIT_MASKWRITE(0xF80007CC, 0x00003FFFU, 0x00001200U),
-+	EMIT_MASKWRITE(0xF80007D0, 0x00003FFFU, 0x00001280U),
-+	EMIT_MASKWRITE(0xF80007D4, 0x00003FFFU, 0x00001280U),
-+	EMIT_MASKWRITE(0xF8000830, 0x003F003FU, 0x002F0037U),
-+	EMIT_WRITE(0xF8000004, 0x0000767BU),
-+	EMIT_EXIT(),
-+};
-+
-+static unsigned long ps7_peripherals_init_data_3_0[] = {
-+	EMIT_WRITE(0xF8000008, 0x0000DF0DU),
-+	EMIT_MASKWRITE(0xF8000B48, 0x00000180U, 0x00000180U),
-+	EMIT_MASKWRITE(0xF8000B4C, 0x00000180U, 0x00000180U),
-+	EMIT_MASKWRITE(0xF8000B50, 0x00000180U, 0x00000180U),
-+	EMIT_MASKWRITE(0xF8000B54, 0x00000180U, 0x00000180U),
-+	EMIT_WRITE(0xF8000004, 0x0000767BU),
-+	EMIT_MASKWRITE(0xE0001034, 0x000000FFU, 0x00000006U),
-+	EMIT_MASKWRITE(0xE0001018, 0x0000FFFFU, 0x0000007CU),
-+	EMIT_MASKWRITE(0xE0001000, 0x000001FFU, 0x00000017U),
-+	EMIT_MASKWRITE(0xE0001004, 0x000003FFU, 0x00000020U),
-+	EMIT_MASKWRITE(0xE000D000, 0x00080000U, 0x00080000U),
-+	EMIT_MASKWRITE(0xF8007000, 0x20000000U, 0x00000000U),
-+	EMIT_MASKWRITE(0xE000A244, 0x003FFFFFU, 0x00004000U),
-+	EMIT_MASKWRITE(0xE000A008, 0xFFFFFFFFU, 0xBFFF4000U),
-+	EMIT_MASKWRITE(0xE000A248, 0x003FFFFFU, 0x00004000U),
-+	EMIT_MASKWRITE(0xE000A008, 0xFFFFFFFFU, 0xBFFF0000U),
-+	EMIT_MASKDELAY(0xF8F00200, 1),
-+	EMIT_MASKWRITE(0xE000A008, 0xFFFFFFFFU, 0xBFFF4000U),
-+	EMIT_EXIT(),
-+};
-+
-+static unsigned long ps7_post_config_3_0[] = {
-+	EMIT_WRITE(0xF8000008, 0x0000DF0DU),
-+	EMIT_MASKWRITE(0xF8000900, 0x0000000FU, 0x0000000FU),
-+	EMIT_MASKWRITE(0xF8000240, 0xFFFFFFFFU, 0x00000000U),
-+	EMIT_WRITE(0xF8000004, 0x0000767BU),
-+	EMIT_EXIT(),
-+};
-+
-+int ps7_post_config(void)
-+{
-+	int ret = -1;
-+
-+	ret = ps7_config(ps7_post_config_3_0);
-+	if (ret != PS7_INIT_SUCCESS)
-+		return ret;
-+
-+	return PS7_INIT_SUCCESS;
-+}
-+
-+int ps7_init(void)
-+{
-+	int ret;
-+
-+	ret = ps7_config(ps7_mio_init_data_3_0);
-+	if (ret != PS7_INIT_SUCCESS)
-+		return ret;
-+
-+	ret = ps7_config(ps7_pll_init_data_3_0);
-+	if (ret != PS7_INIT_SUCCESS)
-+		return ret;
-+
-+	ret = ps7_config(ps7_clock_init_data_3_0);
-+	if (ret != PS7_INIT_SUCCESS)
-+		return ret;
-+
-+	ret = ps7_config(ps7_ddr_init_data_3_0);
-+	if (ret != PS7_INIT_SUCCESS)
-+		return ret;
-+
-+	ret = ps7_config(ps7_peripherals_init_data_3_0);
-+	if (ret != PS7_INIT_SUCCESS)
-+		return ret;
-+
-+	return PS7_INIT_SUCCESS;
-+}
---- /dev/null
-+++ b/configs/zynq_zybo_z7_defconfig
-@@ -0,0 +1,68 @@
-+CONFIG_ARM=y
-+CONFIG_ARCH_ZYNQ=y
-+CONFIG_SYS_TEXT_BASE=0x4000000
-+CONFIG_SPL=y
-+CONFIG_DEBUG_UART_BASE=0xe0001000
-+CONFIG_DEBUG_UART_CLOCK=50000000
-+CONFIG_SPL_STACK_R_ADDR=0x200000
-+CONFIG_DEFAULT_DEVICE_TREE="zynq-zybo-z7"
-+CONFIG_DEBUG_UART=y
-+CONFIG_DISTRO_DEFAULTS=y
-+CONFIG_FIT=y
-+CONFIG_FIT_SIGNATURE=y
-+CONFIG_FIT_VERBOSE=y
-+CONFIG_IMAGE_FORMAT_LEGACY=y
-+CONFIG_BOOTCOMMAND="run $modeboot || run distro_bootcmd"
-+CONFIG_SPL_STACK_R=y
-+CONFIG_SPL_OS_BOOT=y
-+CONFIG_SPL_SPI_LOAD=y
-+CONFIG_SYS_PROMPT="Zynq> "
-+CONFIG_CMD_THOR_DOWNLOAD=y
-+CONFIG_CMD_DFU=y
-+# CONFIG_CMD_FLASH is not set
-+CONFIG_CMD_FPGA_LOADBP=y
-+CONFIG_CMD_FPGA_LOADFS=y
-+CONFIG_CMD_FPGA_LOADMK=y
-+CONFIG_CMD_FPGA_LOADP=y
-+CONFIG_CMD_GPIO=y
-+CONFIG_CMD_I2C=y
-+CONFIG_CMD_MMC=y
-+CONFIG_CMD_SF=y
-+CONFIG_CMD_USB=y
-+# CONFIG_CMD_SETEXPR is not set
-+CONFIG_CMD_TFTPPUT=y
-+CONFIG_CMD_CACHE=y
-+CONFIG_CMD_EXT4_WRITE=y
-+CONFIG_ENV_IS_IN_SPI_FLASH=y
-+CONFIG_NET_RANDOM_ETHADDR=y
-+CONFIG_SPL_DM_SEQ_ALIAS=y
-+CONFIG_DFU_MMC=y
-+CONFIG_DFU_RAM=y
-+CONFIG_FPGA_XILINX=y
-+CONFIG_FPGA_ZYNQPL=y
-+CONFIG_DM_GPIO=y
-+CONFIG_SYS_I2C_ZYNQ=y
-+CONFIG_ZYNQ_I2C0=y
-+CONFIG_ZYNQ_I2C1=y
-+CONFIG_MMC_SDHCI=y
-+CONFIG_MMC_SDHCI_ZYNQ=y
-+CONFIG_SPI_FLASH=y
-+CONFIG_SPI_FLASH_BAR=y
-+CONFIG_SPI_FLASH_SPANSION=y
-+CONFIG_PHY_REALTEK=y
-+CONFIG_ZYNQ_GEM=y
-+CONFIG_DEBUG_UART_ZYNQ=y
-+CONFIG_ZYNQ_SERIAL=y
-+CONFIG_ZYNQ_QSPI=y
-+CONFIG_USB=y
-+CONFIG_USB_EHCI_HCD=y
-+CONFIG_USB_ULPI_VIEWPORT=y
-+CONFIG_USB_ULPI=y
-+CONFIG_USB_STORAGE=y
-+CONFIG_USB_GADGET=y
-+CONFIG_USB_GADGET_MANUFACTURER="Xilinx"
-+CONFIG_USB_GADGET_VENDOR_NUM=0x03fd
-+CONFIG_USB_GADGET_PRODUCT_NUM=0x0300
-+CONFIG_CI_UDC=y
-+CONFIG_USB_GADGET_DOWNLOAD=y
-+CONFIG_USB_FUNCTION_THOR=y
diff --git a/package/boot/uboot-zynq/patches/110-zybo-z7-read-mac-address-from-SPI-flash-memory.patch b/package/boot/uboot-zynq/patches/110-zybo-z7-read-mac-address-from-SPI-flash-memory.patch
index f0ebc3323e..946e09aa28 100644
--- a/package/boot/uboot-zynq/patches/110-zybo-z7-read-mac-address-from-SPI-flash-memory.patch
+++ b/package/boot/uboot-zynq/patches/110-zybo-z7-read-mac-address-from-SPI-flash-memory.patch
@@ -1,7 +1,7 @@
-From ac8fcc92d87436715ce85f39a4fe4f07c3bfa15e Mon Sep 17 00:00:00 2001
+From 67db0da72eb7ed87ebaaeb8a26891cb2cf916500 Mon Sep 17 00:00:00 2001
 From: Luis Araneda <luaraneda@gmail.com>
-Date: Sun, 22 Jul 2018 02:52:41 -0400
-Subject: [U-Boot] [RFC PATCH] arm: zynq: read mac address from SPI flash memory
+Date: Sun, 21 Jul 2019 23:24:12 -0400
+Subject: [U-Boot] [PATCH] arm: zynq: read mac address from SPI flash memory
 
 Implement a method for reading the MAC address from an
 SPI flash memory.
@@ -11,38 +11,36 @@ memory
 
 Signed-off-by: Luis Araneda <luaraneda@gmail.com>
 ---
-As of 2018-08-23, this patch has been sent to U-Boot's mailing list
-and is being reviewed. Some changes on the implementation are expected,
-but the functionality should not change
+As of 2019-08-18, this patch has not been accepted by upstream U-Boot.
+Keep this patch until an alternative is accepted by upstream.
 ---
- board/xilinx/zynq/board.c      | 28 ++++++++++++++++++++++++++++
+ board/xilinx/common/board.c    | 28 ++++++++++++++++++++++++++++
  configs/zynq_zybo_z7_defconfig |  3 +++
  drivers/misc/Kconfig           | 17 +++++++++++++++++
  3 files changed, 48 insertions(+)
 
---- a/board/xilinx/zynq/board.c
-+++ b/board/xilinx/zynq/board.c
-@@ -6,9 +6,12 @@
+diff --git a/board/xilinx/common/board.c b/board/xilinx/common/board.c
+index 7e6340bad6..90f070d5cb 100644
+--- a/board/xilinx/common/board.c
++++ b/board/xilinx/common/board.c
+@@ -6,7 +6,10 @@
  
  #include <common.h>
  #include <dm/uclass.h>
 +#include <dm/device.h>
 +#include <dm/device-internal.h>
- #include <fdtdec.h>
- #include <fpga.h>
- #include <mmc.h>
+ #include <i2c.h>
 +#include <spi_flash.h>
- #include <watchdog.h>
- #include <wdt.h>
- #include <zynqpl.h>
-@@ -83,6 +86,31 @@ int zynq_board_read_rom_ethaddr(unsigned
- 		printf("I2C EEPROM MAC address read failed\n");
+ 
+ int zynq_board_read_rom_ethaddr(unsigned char *ethaddr)
+ {
+@@ -34,5 +37,30 @@ int zynq_board_read_rom_ethaddr(unsigned char *ethaddr)
+ 		debug("%s: I2C EEPROM MAC %pM\n", __func__, ethaddr);
  #endif
  
 +#if defined(CONFIG_MAC_ADDR_IN_SPI_FLASH)
 +	struct spi_flash *flash;
 +	struct udevice *dev;
-+	int ret;
 +
 +	ret = spi_flash_probe_bus_cs(CONFIG_SF_DEFAULT_BUS,
 +				     CONFIG_SF_DEFAULT_CS,
@@ -55,7 +53,7 @@ but the functionality should not change
 +	}
 +
 +	flash = dev_get_uclass_priv(dev);
-+	flash->read_cmd = CONFIG_MAC_ADDR_SPI_FLASH_READ_CMD;
++	flash->read_opcode = CONFIG_MAC_ADDR_SPI_FLASH_READ_CMD;
 +
 +	if (spi_flash_read_dm(dev,
 +			      CONFIG_MAC_ADDR_SPI_FLASH_DATA_OFFSET,
@@ -64,24 +62,28 @@ but the functionality should not change
 +
 +	device_remove(dev, DM_REMOVE_NORMAL);
 +#endif
- 	return 0;
++
+ 	return ret;
  }
- 
+diff --git a/configs/zynq_zybo_z7_defconfig b/configs/zynq_zybo_z7_defconfig
+index d434982df3..71b2b7d7b3 100644
 --- a/configs/zynq_zybo_z7_defconfig
 +++ b/configs/zynq_zybo_z7_defconfig
-@@ -44,6 +44,9 @@ CONFIG_DM_GPIO=y
- CONFIG_SYS_I2C_ZYNQ=y
- CONFIG_ZYNQ_I2C0=y
- CONFIG_ZYNQ_I2C1=y
+@@ -42,6 +42,9 @@ CONFIG_DFU_RAM=y
+ CONFIG_FPGA_XILINX=y
+ CONFIG_FPGA_ZYNQPL=y
+ CONFIG_DM_GPIO=y
 +CONFIG_MAC_ADDR_IN_SPI_FLASH=y
 +CONFIG_MAC_ADDR_SPI_FLASH_READ_CMD=0x4b
 +CONFIG_MAC_ADDR_SPI_FLASH_DATA_OFFSET=0x20
  CONFIG_MMC_SDHCI=y
  CONFIG_MMC_SDHCI_ZYNQ=y
  CONFIG_SPI_FLASH=y
+diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
+index cb8b5c04db..0abfbf2a96 100644
 --- a/drivers/misc/Kconfig
 +++ b/drivers/misc/Kconfig
-@@ -272,6 +272,23 @@ config SYS_I2C_EEPROM_ADDR_OVERFLOW
+@@ -366,6 +366,23 @@ config SYS_I2C_EEPROM_ADDR_OVERFLOW
  
  endif
  
@@ -105,3 +107,6 @@ but the functionality should not change
  config GDSYS_RXAUI_CTRL
  	bool "Enable gdsys RXAUI control driver"
  	depends on MISC
+-- 
+2.22.0
+
diff --git a/package/boot/uboot-zynq/patches/210-link-libcrypto-static.patch b/package/boot/uboot-zynq/patches/210-link-libcrypto-static.patch
index 6fe253606e..d2e7bf168d 100644
--- a/package/boot/uboot-zynq/patches/210-link-libcrypto-static.patch
+++ b/package/boot/uboot-zynq/patches/210-link-libcrypto-static.patch
@@ -3,9 +3,9 @@ needed dependencies are added too.
 
 --- a/tools/Makefile
 +++ b/tools/Makefile
-@@ -146,7 +146,7 @@ endif
- # MXSImage needs LibSSL
- ifneq ($(CONFIG_MX23)$(CONFIG_MX28)$(CONFIG_ARMADA_38X)$(CONFIG_ARMADA_39X)$(CONFIG_FIT_SIGNATURE),)
+@@ -151,7 +151,7 @@ ifneq ($(CONFIG_MX23)$(CONFIG_MX28)$(CON
+ HOSTCFLAGS_kwbimage.o += \
+ 	$(shell pkg-config --cflags libssl libcrypto 2> /dev/null || echo "")
  HOSTLOADLIBES_mkimage += \
 -	$(shell pkg-config --libs libssl libcrypto 2> /dev/null || echo "-lssl -lcrypto")
 +	$(shell pkg-config --libs --static libssl libcrypto 2> /dev/null || echo "-lssl -lpthread -lcrypto")
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
