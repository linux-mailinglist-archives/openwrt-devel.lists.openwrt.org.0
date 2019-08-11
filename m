Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCED2893C9
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 22:54:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvuJbBceei0ZrqvOheSw2/vxocGU/Dq++0jfXpsDmSQ=; b=aijqAw/YDRdpB5
	ARDC3DehLJLe7NoeikiZBh1ZD1pZmVA512ZJYngRYziCKclP/kmrGQiieomgltH7ZwWz9wI/RkxWj
	I/wpS+t/6HKDz/dKd1sIZKmciq9/OQAKgUDrsWH1/6wMMCshnTjZipmnFoUqP6ralIuD19Uczl/QY
	H0pCqCjpZA+qtFcI/nYGaj0MVxNYQC2OepfwwJn5OWrBYLwAirmxk8Synun9TGGF/qEauz689Ezzy
	h55DPc0pI23yc875J7qMr1yC/h75+lBF1wrFlx1unsePNVdD7mrfGAbjPoP+5cG3xuiXwMpgY27pE
	/38e/JXFjzsxcvzJFcpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwuql-0008AY-C3; Sun, 11 Aug 2019 20:53:59 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwuqE-0007W7-OD
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 20:53:28 +0000
Received: (wp-smtpd smtp.wp.pl 33589 invoked from network);
 11 Aug 2019 22:53:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565556804; bh=cGcgPsDZ3oNGtAHn+jTnxEQlOVNSVyN2vY0q03ZKF3A=;
 h=From:To:Cc:Subject;
 b=YHBko81UstnfQKQiHNYtrzmj3d4t0yBJAetbfX1mKXqk0fuMj0pIbqdqCg6pCRxKR
 4Cj5O2BKjyDPKOviybK3QhytvJIR3RPV2zTx4WVQpHcLHEfTec+VhFxhyimMn5y9kl
 +jvSclxYDey0wdHJuuHZ9XkXMNWcEy1N6DEsdt0Y=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 Aug 2019 22:53:24 +0200
Date: Sun, 11 Aug 2019 22:42:52 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20190811224252.3641e63f@kosmio.komorska>
In-Reply-To: <20190811223921.572cda5b@kosmio.komorska>
References: <20190811223921.572cda5b@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 6ac1b1a81b88a2dfcc5ca8a0c3377b21
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [obOE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_135326_968705_2795E477 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v3 2/5] ath79: WNR612v2: improve device
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
* formatting adjustments to source DT files

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 .../ath79/dts/ar7240_netgear_wnr612-v2.dts    |  2 +-
 .../ath79/dts/ar7240_netgear_wnr612-v2.dtsi   | 20 +++++++++++++------
 target/linux/ath79/dts/ar7240_on_n150r.dts    |  2 +-
 target/linux/ath79/image/tiny-netgear.mk      |  2 +-
 4 files changed, 17 insertions(+), 9 deletions(-)

diff --git a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dts b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dts
index b3ceecf932..e6e3e8b6da 100644
--- a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dts
+++ b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dts
@@ -4,7 +4,7 @@
 #include "ar7240_netgear_wnr612-v2.dtsi"
 
 / {
-	model = "Netgear WNR612 v2";
 	compatible = "netgear,wnr612-v2", "qca,ar7240";
+	model = "Netgear WNR612 v2";
 };
 
diff --git a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
index 8e934429a3..ec4d5d710f 100644
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
+	mtd-mac-address = <&art 0x0>;
 };
 
 &eth1 {
 	status = "okay";
 
-	mtd-mac-address = <&uboot 0x1fc00>;
-	mtd-mac-address-increment = <1>;
+	mtd-mac-address = <&art 0x6>;
 };
 
 &pcie {
@@ -116,6 +122,8 @@
 	ath9k: wifi@0,0 {
 		compatible = "pci168c,002b";
 		reg = <0x0000 0 0 0 0>;
+		mtd-mac-address = <&art 0x0>;
+		mtd-mac-address-increment = <1>;
 		qca,no-eeprom;
 		#gpio-cells = <2>;
 		gpio-controller;
diff --git a/target/linux/ath79/dts/ar7240_on_n150r.dts b/target/linux/ath79/dts/ar7240_on_n150r.dts
index a318846a83..886ac6dad5 100644
--- a/target/linux/ath79/dts/ar7240_on_n150r.dts
+++ b/target/linux/ath79/dts/ar7240_on_n150r.dts
@@ -4,7 +4,7 @@
 #include "ar7240_netgear_wnr612-v2.dtsi"
 
 / {
-	model = "ON Network N150R";
 	compatible = "on,n150r", "qca,ar7240";
+	model = "ON Network N150R";
 };
 
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
