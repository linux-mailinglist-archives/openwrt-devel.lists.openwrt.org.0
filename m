Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F63C833A4
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 16:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YflgDmlSc6Vr8oKUmFtweJWbZnb1UTTIFyWuVJy1/bE=; b=Vk98O5L0bjiqzk
	qEXnSPWdZBJp9e0vu78R1le1mCAAuholyi6tc/6Y6ivb5DuPuyPSYVMBnF/8SDX8ebm/jw1QgFZan
	FdYRWUbkXaVutzpnmOuisoQEUG6DgSdfG6rBOtqwctg3jck14vjzIclpXTPfG1SMXdtw6wJDAuuZp
	0Yc94Bn6aqlkDM/R6RoEocg9c9jy0QPNuJylhfSStoFSX8fgL47a7aH0wbgwMEq0Z/X7lzCToprd1
	yYYNDKlsc9rt6tHaoahM5vKogQBxqipGyUCsSRs5TM35OSZ1VOfzzn76n1ctJJBTyjTns/1JhbDrW
	+Z0Qp57Cagjbp0hBHTmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0AJ-0004Lb-RG; Tue, 06 Aug 2019 14:10:15 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv09B-0002y1-Qe
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 14:09:07 +0000
Received: (wp-smtpd smtp.wp.pl 28259 invoked from network);
 6 Aug 2019 16:09:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565100543; bh=vxySi+pWCSVXyXRkfpiFvo95K4jG8JpRPc41rQZ99eQ=;
 h=From:To:Cc:Subject;
 b=cmYWwh7FiabCWTSgMSmXnIkMP8lBtsDnSL1MbksR5UYB0/zabVuXzixdwY5H7MzbC
 xoCUg6o8xzOfJarJhNinavO1JKlWSCOzqvRKMYIQGAB1bBSp2rAuom0KTj9U0BVOJY
 zr+PfXbTaKxOIfhc0ODYhRv/FXLIlbgt5xVZwSm8=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Aug 2019 16:09:03 +0200
Date: Tue, 6 Aug 2019 16:01:58 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20190806160158.69876d23@kosmio.komorska>
In-Reply-To: <20190806155540.4e27407b@kosmio.komorska>
References: <20190806155540.4e27407b@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: b7e6ae297310ab974ab70a517451cccf
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [UUNU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_070906_140679_DC89D9A6 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2 2/5] ath79: WNR612v2: improve device
 support
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch improves ath79 support for Netgear WNR612v2.
Router functionality becomes identical to ar71xx version.

Changes include:
* software control over LAN LEDs via sysfs
* correct MAC addresses for network interfaces
* correct image size in device definition

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 .../ath79/dts/ar7240_netgear_wnr612-v2.dtsi   | 20 +++++++++++++------
 target/linux/ath79/image/tiny-netgear.mk      |  2 +-
 2 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
index 8e934429a3..b987408fbb 100644
--- a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
+++ b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
@@ -28,6 +28,10 @@
 
 	leds {
 		compatible = "gpio-leds";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&jtag_disable_pins &switch_led_disable_pins &clks_disable_pins>;
+
 		power: power {
 			label = "netgear:green:power";
 			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
@@ -47,6 +51,10 @@
 			label = "netgear:green:wan";
 			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
 		};
+	};
+
+	ath9k-leds {
+		compatible = "gpio-leds";
 
 		wlan: wlan {
 			label = "netgear:green:wlan";
@@ -70,7 +78,7 @@
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			uboot: partition@0 {
+			partition@0 {
 				reg = <0x0 0x40000>;
 				label = "u-boot";
 				read-only;
@@ -87,7 +95,7 @@
 				label = "firmware";
 			};
 
-			partition@3f0000 {
+			art: partition@3f0000 {
 				reg = <0x3f0000 0x10000>;
 				label = "art";
 				read-only;
@@ -99,15 +107,13 @@
 &eth0 {
 	status = "okay";
 
-	mtd-mac-address = <&uboot 0x1fc00>;
-	mtd-mac-address-increment = <(-1)>;
+	mtd-mac-address = <&art 0x00>;
 };
 
 &eth1 {
 	status = "okay";
 
-	mtd-mac-address = <&uboot 0x1fc00>;
-	mtd-mac-address-increment = <1>;
+	mtd-mac-address = <&art 0x06>;
 };
 
 &pcie {
@@ -116,6 +122,8 @@
 	ath9k: wifi@0,0 {
 		compatible = "pci168c,002b";
 		reg = <0x0000 0 0 0 0>;
+		mtd-mac-address = <&art 0x00>;
+		mtd-mac-address-increment = <1>;
 		qca,no-eeprom;
 		#gpio-cells = <2>;
 		gpio-controller;
diff --git a/target/linux/ath79/image/tiny-netgear.mk b/target/linux/ath79/image/tiny-netgear.mk
index 67ef28c9cc..2f17d79757 100644
--- a/target/linux/ath79/image/tiny-netgear.mk
+++ b/target/linux/ath79/image/tiny-netgear.mk
@@ -4,7 +4,7 @@ define Device/netgear_ar7240
   ATH_SOC := ar7240
   NETGEAR_KERNEL_MAGIC := 0x32303631
   KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma -d20 | netgear-uImage lzma
-  IMAGE_SIZE := 3904k
+  IMAGE_SIZE := 3712k
   IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | netgear-squashfs | append-rootfs | pad-rootfs
   $(Device/netgear_ath79)
 endef
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
