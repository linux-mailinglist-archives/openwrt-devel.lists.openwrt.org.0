Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37687109220
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 17:47:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Date:Message-Id:MIME-Version:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FydisuSfHjdDzrzJ/gW4Z1Xls0Yp5ciLuvTt4gsdflI=; b=sny/b2IZh9c1F9
	sSwyIruDn5LzlBZcEA4lrcSaQ4BVeuuthnqaHl8pU6n0XQxHLPjqEtrVla0sG+Tj3LHEmVBXn9xIx
	/fAFceH8WJN3QP+dGsSKuBIvExzrVJnzo9PIM5SFZ6fWY5uxOeqdKgwHWldfiTeHDL4y8vMBKGcfU
	oHhz6SMdOKPGAIhZy/Sgxas+bLZSlBIniICV9IYEhJEUp4U9V0x9yFqGTABR7n1oXaNcnLvbLW6Ie
	Ebr8BSnQTL0ovZKlac6xzB+Mv8h+B2e2pVbUS/gNidyO/C9Qp67/d1gQ097Wwh5Opa2sJCoXh1yqx
	Qh/T7U/LYdEEhdkabxHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHWB-0002fh-Q8; Mon, 25 Nov 2019 16:47:19 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHVt-0002ef-Os
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 16:47:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:Reply-To:Cc:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zDgTTGZUXWJqA40QaBktmVYOs3K3cRvsC1vRLecOqcA=; b=BlKIw99JSA8pHSeRR6YIurTh8t
 1vSoq5IKieo6X1CGfWF8apEIe060Wf1iw6YWDHTlK+b/w/gM4vNSOsHa/dS8TD7hMPBPViAGrA64Z
 h4tUu7prDWawy+qfAYFbIhAPwGtz79/MJjDTfr3lHfuStjEyVcEausm2tkNVA2KcnA5okMFDztUx9
 h+rDiTYh5UDk89cckGjXyeCOdhqo5XxaLut2CTLk4J7wg8fFlzVsP0gIjV691hwxUTWazYzrgCBJY
 kLapdNjBc4yo/2TjUMnZlAW+WtZY4MQTsNNSSfK/5Zv/Fa/ru/02DMG5tJ3ahOAnehfHYfqO89/P8
 +6UelISA==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:33818 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1iZHVh-0000PU-96; Mon, 25 Nov 2019 16:46:49 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1iZHVf-0001Jx-Nx; Mon, 25 Nov 2019 16:46:47 +0000
From: Russell King <linux@armlinux.org.uk>
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1iZHVf-0001Jx-Nx@rmk-PC.armlinux.org.uk>
Date: Mon, 25 Nov 2019 16:46:47 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_084701_940233_F6853105 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 4/4] kernel: add uDPU update patches
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

Update the uDPU kernel support, fixing a number of issues:
* make ethernet work again by adding comphy definitions
* slow the I2C bus to give it more chance of actually working
* the SFP cages are designed to support up to 3W modules, which
  would be prevented from initialising without this patch.

Signed-off-by: Russell King <linux@armlinux.org.uk>
---
 ...rm64-dts-uDPU-fix-comphy-definitions.patch | 40 +++++++++++++++++++
 ...-arm64-dts-uDPU-remove-i2c-fast-mode.patch | 35 ++++++++++++++++
 ...ts-uDPU-SFP-cages-support-3W-modules.patch | 38 ++++++++++++++++++
 3 files changed, 113 insertions(+)
 create mode 100644 target/linux/mvebu/patches-4.19/657-arm64-dts-uDPU-fix-comphy-definitions.patch
 create mode 100644 target/linux/mvebu/patches-4.19/658-arm64-dts-uDPU-remove-i2c-fast-mode.patch
 create mode 100644 target/linux/mvebu/patches-4.19/659-arm64-dts-uDPU-SFP-cages-support-3W-modules.patch

diff --git a/target/linux/mvebu/patches-4.19/657-arm64-dts-uDPU-fix-comphy-definitions.patch b/target/linux/mvebu/patches-4.19/657-arm64-dts-uDPU-fix-comphy-definitions.patch
new file mode 100644
index 000000000000..bac9fa9666f1
--- /dev/null
+++ b/target/linux/mvebu/patches-4.19/657-arm64-dts-uDPU-fix-comphy-definitions.patch
@@ -0,0 +1,40 @@
+From 9c222a1d78a1700220e38feb270f00d2ddd3c5ab Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Wed, 6 Nov 2019 13:44:21 +0000
+Subject: [PATCH 657/660] arm64: dts: uDPU: fix comphy definitions
+
+The uDPU uses both ethernet controllers, which ties up COMPHY 0 for
+eth1 and COMPHY 1 for eth0, with no USB3 comphy.  The addition of
+COMPHY support made the kernel override the setup by the boot loader
+breaking this platform.  Delete the USB3 COMPHY definition at platform
+level, and add phy specifications for the ethernet channels.
+
+Fixes: bd3d25b07342 ("arm64: dts: marvell: armada-37xx: link USB hosts with their PHYs")
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+index 5b722b4f8323..9d01e39a9eaa 100644
+--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
++++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+@@ -143,6 +143,7 @@
+ 	status = "okay";
+ 	phy-mode = "sgmii";
+ 	managed = "in-band-status";
++	phys = <&comphy1 0>;
+ 	sfp = <&sfp_eth0>;
+ };
+ 
+@@ -150,6 +151,7 @@
+ 	status = "okay";
+ 	phy-mode = "sgmii";
+ 	managed = "in-band-status";
++	phys = <&comphy0 1>;
+ 	sfp = <&sfp_eth1>;
+ };
+ 
+-- 
+2.20.1
+
diff --git a/target/linux/mvebu/patches-4.19/658-arm64-dts-uDPU-remove-i2c-fast-mode.patch b/target/linux/mvebu/patches-4.19/658-arm64-dts-uDPU-remove-i2c-fast-mode.patch
new file mode 100644
index 000000000000..7237e37a9ade
--- /dev/null
+++ b/target/linux/mvebu/patches-4.19/658-arm64-dts-uDPU-remove-i2c-fast-mode.patch
@@ -0,0 +1,35 @@
+From 662eb8fc87f982e63ccb9a9df25c7aeabf9fe341 Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Thu, 14 Nov 2019 00:23:35 +0000
+Subject: [PATCH 658/660] arm64: dts: uDPU: remove i2c-fast-mode
+
+The I2C bus violates the timing specifications when run in fast mode
+on the uDPU, so switch to 100kHz mode.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+index 9d01e39a9eaa..296d72689faa 100644
+--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
++++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+@@ -119,12 +119,14 @@
+ 	status = "okay";
+ 	pinctrl-names = "default";
+ 	pinctrl-0 = <&i2c1_pins>;
++	/delete-property/mrvl,i2c-fast-mode;
+ };
+ 
+ &i2c1 {
+ 	status = "okay";
+ 	pinctrl-names = "default";
+ 	pinctrl-0 = <&i2c2_pins>;
++	/delete-property/mrvl,i2c-fast-mode;
+ 
+ 	lm75@48 {
+ 		status = "okay";
+-- 
+2.20.1
+
diff --git a/target/linux/mvebu/patches-4.19/659-arm64-dts-uDPU-SFP-cages-support-3W-modules.patch b/target/linux/mvebu/patches-4.19/659-arm64-dts-uDPU-SFP-cages-support-3W-modules.patch
new file mode 100644
index 000000000000..c32b92acabc5
--- /dev/null
+++ b/target/linux/mvebu/patches-4.19/659-arm64-dts-uDPU-SFP-cages-support-3W-modules.patch
@@ -0,0 +1,38 @@
+From 1cb114a20854e34324a2cb308f23054ff8227ffa Mon Sep 17 00:00:00 2001
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Date: Tue, 19 Nov 2019 22:48:50 +0000
+Subject: [PATCH 659/660] arm64: dts: uDPU: SFP cages support 3W modules
+
+The SFP cages are designed to support up to 3W modules, such as G.hn,
+G.fast and MoCA modules. Although there is no way for such modules to
+declare to software that they consume 3W, we document in DT that this
+is the designed power level for these cages.
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+index 296d72689faa..275d396df1be 100644
+--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
++++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+@@ -69,6 +69,7 @@
+ 		mod-def0-gpio = <&gpiosb 3 GPIO_ACTIVE_LOW>;
+ 		tx-disable-gpio = <&gpiosb 4 GPIO_ACTIVE_HIGH>;
+ 		tx-fault-gpio = <&gpiosb 5 GPIO_ACTIVE_HIGH>;
++		maximum-power-milliwatt = <3000>;
+ 	};
+ 
+ 	sfp_eth1: sfp-eth1 {
+@@ -78,6 +79,7 @@
+ 		mod-def0-gpio = <&gpiosb 8 GPIO_ACTIVE_LOW>;
+ 		tx-disable-gpio = <&gpiosb 9 GPIO_ACTIVE_HIGH>;
+ 		tx-fault-gpio = <&gpiosb 10 GPIO_ACTIVE_HIGH>;
++		maximum-power-milliwatt = <3000>;
+ 	};
+ };
+ 
+-- 
+2.20.1
+
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
