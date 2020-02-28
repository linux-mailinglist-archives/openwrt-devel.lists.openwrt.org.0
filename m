Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957FF17404D
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 20:34:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SD31kcTHdVBwqgI0/EI26KkSz3uor/Ph8YdO6tiig4Y=; b=Mv/ltIXGKOlbga
	Z6JPEjkS8TFzuLMrX5PMlyEIw79xlnEXURnIOoKgzVvxRYZPGjqFvQoLJWgE8JrH72PpVMtWpOXAp
	e1pFtzF1ex6MeiZ9Cse3+EFmC3hIqcYcsYFdnewy2zvit/arZu+AnueGXPbbaFwWo3daU6gChoKVZ
	3o1sGuWVC22aOMpP9PqHtFTpFjfPKS/WumLmbMnEHEB+VIVvS4CMmdp6AMv+vuCG5CKx8ZmLaWWki
	Qm+Qso0+lbgQsBXphJV9olX20Wi1E0O0zTCWjPmbHYYPDN0CUnlrmoAu5SYaPoMeEQouwGRyMNlqp
	oSDqUmC83A+2OQXTWYzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7lOp-00030x-9n; Fri, 28 Feb 2020 19:34:15 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7lOd-0002zm-7X
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 19:34:04 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1j7lPc-0005P3-1m; Fri, 28 Feb 2020 19:35:04 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 28 Feb 2020 11:33:56 -0800
Message-Id: <1582918436-20954-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_113403_313485_F12C5994 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] imx6: backport lsm9ds1 imu support for
 GW553x
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 ...6qdl-gw553x-add-lsm9ds1-iio-imu-magn-supp.patch | 73 ++++++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 target/linux/imx6/patches-5.4/005-ARM-dts-imx6qdl-gw553x-add-lsm9ds1-iio-imu-magn-supp.patch

diff --git a/target/linux/imx6/patches-5.4/005-ARM-dts-imx6qdl-gw553x-add-lsm9ds1-iio-imu-magn-supp.patch b/target/linux/imx6/patches-5.4/005-ARM-dts-imx6qdl-gw553x-add-lsm9ds1-iio-imu-magn-supp.patch
new file mode 100644
index 0000000..6a6c828
--- /dev/null
+++ b/target/linux/imx6/patches-5.4/005-ARM-dts-imx6qdl-gw553x-add-lsm9ds1-iio-imu-magn-supp.patch
@@ -0,0 +1,73 @@
+From 62e7f0b553038e3a1a1b2b067dd1fbdacd634e37 Mon Sep 17 00:00:00 2001
+From: Robert Jones <rjones@gateworks.com>
+Date: Fri, 14 Feb 2020 13:02:41 -0800
+Subject: [PATCH] ARM: dts: imx6qdl-gw553x: add lsm9ds1 iio imu/magn support
+
+Add one node for the accel/gyro i2c device and another for the separate
+magnetometer device in the lsm9ds1.
+
+Signed-off-by: Robert Jones <rjones@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/imx6qdl-gw553x.dtsi | 31 +++++++++++++++++++++++++++++++
+ 1 file changed, 31 insertions(+)
+
+diff --git a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
+index a106689..ee85031 100644
+--- a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
++++ b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
+@@ -173,6 +173,25 @@
+ 	pinctrl-0 = <&pinctrl_i2c2>;
+ 	status = "okay";
+ 
++	magn@1c {
++		compatible = "st,lsm9ds1-magn";
++		reg = <0x1c>;
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_mag>;
++		interrupt-parent = <&gpio1>;
++		interrupts = <2 IRQ_TYPE_EDGE_RISING>;
++	};
++
++	imu@6a {
++		compatible = "st,lsm9ds1-imu";
++		reg = <0x6a>;
++		st,drdy-int-pin = <1>;
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_imu>;
++		interrupt-parent = <&gpio7>;
++		interrupts = <13 IRQ_TYPE_LEVEL_HIGH>;
++	};
++
+ 	ltc3676: pmic@3c {
+ 		compatible = "lltc,ltc3676";
+ 		reg = <0x3c>;
+@@ -426,6 +445,12 @@
+ 		>;
+ 	};
+ 
++	pinctrl_imu: imugrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_18__GPIO7_IO13		0x1b0b0
++		>;
++	};
++
+ 	pinctrl_ipu1_csi0: ipu1csi0grp {
+ 		fsl,pins = <
+ 			MX6QDL_PAD_CSI0_DAT12__IPU1_CSI0_DATA12    0x1b0b0
+@@ -449,6 +474,12 @@
+ 		>;
+ 	};
+ 
++	pinctrl_mag: maggrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0
++		>;
++	};
++
+ 	pinctrl_pcie: pciegrp {
+ 		fsl,pins = <
+ 			MX6QDL_PAD_GPIO_0__GPIO1_IO00		0x1b0b0
+-- 
+2.7.4
+
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
