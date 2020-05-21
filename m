Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38701DC917
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 10:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Date:Message-Id:MIME-Version:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+F2CV60R+XXxoLC3bbuT4P/NvE9t5GfiXqSa1Wx/HAk=; b=HCOMjpgnsabT/V
	hUDTFlX+bKKZarLybbHz9WMcXJeInJ9RpQlG6tb/EF1H1AEdUaj5RuNHR5vuebC+r8vYQOK13a6y7
	k97UErGv1rcuLemkB3n5zbhLsyxiA5bpRAUQdrx29uhzAol8k86mFuHEYH5muUtdaMYQ9Iw5dkGlj
	cyAPNf9KOWE6xiGAqevb36Ii//Q/33tMwKN6u0h2Bv05S1BRSA8N4uHo0Fk7dNGydBW7IB9dnZ2w1
	HiVfYEkIpfDyV/mNT8uKPPB4i/uqHmL65oKmegiBYsj1K23acSQB1Su9Q04xzkpSo7QXT+pd5EtaP
	IQkbuiz1RZOFbtJVMf4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbh1Q-0004Gy-2r; Thu, 21 May 2020 08:57:48 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbh1I-0004GS-Hc
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 08:57:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:Reply-To:Cc:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0qTPiSMsNrdCEHTMg46zM+F0KEBR1mrCTreq6ztE3O8=; b=OKTKeNjG+9HeK+I4ErVc4tMEDJ
 YHZTQ4ysTDlk2KblEzqmKNfC8nri9Ysig99+sDpu1h/zvmA+d14uZhXng5TkVTBy0yypxnVMvogGs
 v0F+x1LTahHqPRnQAV5p77yDOyfxCweRzX4aj12cPELDqMo1cJxpk7MwgjcaO1UFP4R6hYa7q+PMP
 ydYT6qPGftD2m/BJWHfUcCC1x1K5gzE8d2PDrpT7VAll38yQ67OrJElhwCZJNN4GkxRT+/won3Kyb
 8p7NfnCqcKXf07N/KTrddWPwNXe05tVR7/TbmUR73FiVuv2V7O4dW9vpEZZeVtzOFVW/v+pse1YYM
 XFb6b7Dw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:34994)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jbh1B-0001z5-UA; Thu, 21 May 2020 09:57:34 +0100
Received: from rmk by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@shell.armlinux.org.uk>)
 id 1jbh1A-0008VF-M9; Thu, 21 May 2020 09:57:32 +0100
From: Russell King <linux@armlinux.org.uk>
To: openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jbh1A-0008VF-M9@shell.armlinux.org.uk>
Date: Thu, 21 May 2020 09:57:32 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_015742_738977_EBBBA590 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 3/3] kernel: backport the I2C bus recovery
 for uDPU
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

Backport the I2C bus recovery DT configuration for the uDPU that has
been queued for 5.8.

Signed-off-by: Russell King <linux@armlinux.org.uk>
---
 ...-arm64-dts-add-uDPU-i2c-bus-recovery.patch | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 target/linux/mvebu/patches-5.4/551-v5.8-arm64-dts-add-uDPU-i2c-bus-recovery.patch

diff --git a/target/linux/mvebu/patches-5.4/551-v5.8-arm64-dts-add-uDPU-i2c-bus-recovery.patch b/target/linux/mvebu/patches-5.4/551-v5.8-arm64-dts-add-uDPU-i2c-bus-recovery.patch
new file mode 100644
index 000000000000..b1c508abab4c
--- /dev/null
+++ b/target/linux/mvebu/patches-5.4/551-v5.8-arm64-dts-add-uDPU-i2c-bus-recovery.patch
@@ -0,0 +1,60 @@
+From: Russell King <rmk+kernel@armlinux.org.uk>
+Bcc: linux@mail.armlinux.org.uk
+Cc: Vladimir Vid <vladimir.vid@sartura.hr>,Jason Cooper <jason@lakedaemon.net>,Andrew Lunn <andrew@lunn.ch>,Gregory Clement <gregory.clement@bootlin.com>,Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,Rob Herring <robh+dt@kernel.org>,Mark Rutland <mark.rutland@arm.com>,linux-arm-kernel@lists.infradead.org,devicetree@vger.kernel.org
+Subject: [PATCH] arm64: dts: add uDPU i2c bus recovery
+MIME-Version: 1.0
+Content-Disposition: inline
+Content-Transfer-Encoding: 8bit
+Content-Type: text/plain; charset="utf-8"
+
+Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
+---
+ .../boot/dts/marvell/armada-3720-uDPU.dts     | 22 +++++++++++++++++--
+ 1 file changed, 20 insertions(+), 2 deletions(-)
+
+diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+index 7eb6c1796cef..95d46e8d081c 100644
+--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
++++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+@@ -117,18 +117,36 @@
+ 	};
+ };
+ 
++&pinctrl_nb {
++	i2c1_recovery_pins: i2c1-recovery-pins {
++		groups = "i2c1";
++		function = "gpio";
++	};
++
++	i2c2_recovery_pins: i2c2-recovery-pins {
++		groups = "i2c2";
++		function = "gpio";
++	};
++};
++
+ &i2c0 {
+ 	status = "okay";
+-	pinctrl-names = "default";
++	pinctrl-names = "default", "recovery";
+ 	pinctrl-0 = <&i2c1_pins>;
++	pinctrl-1 = <&i2c1_recovery_pins>;
+ 	/delete-property/mrvl,i2c-fast-mode;
++	scl-gpios = <&gpionb 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
++	sda-gpios = <&gpionb 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+ };
+ 
+ &i2c1 {
+ 	status = "okay";
+-	pinctrl-names = "default";
++	pinctrl-names = "default", "recovery";
+ 	pinctrl-0 = <&i2c2_pins>;
++	pinctrl-1 = <&i2c2_recovery_pins>;
+ 	/delete-property/mrvl,i2c-fast-mode;
++	scl-gpios = <&gpionb 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
++	sda-gpios = <&gpionb 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+ 
+ 	lm75@48 {
+ 		status = "okay";
+-- 
+2.20.1
+
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
