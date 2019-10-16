Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BAFD9C0E
	for <lists+openwrt-devel@lfdr.de>; Wed, 16 Oct 2019 22:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JDuhbyuYY7tmnP86FexPRFGuuek70vJCi0WzVudDj14=; b=oMFNOoNAKMyKoG
	ZKetqQ7BpEsZVJd+e2vSsiCPqJfXtxWr4rO2ybQ6j/4+Zz/yxV+YMflPjTiXLrI7U8D3Tq5GLkxt+
	65lZxiyHdm1YJtmXvuf2Rpwkm5JRGxrAWsqyD0312VOoletiguvdBqfUsT7k7RJ4eUIPnzLWPCkCd
	nbeDPd8XTxk6FnnWO5v/r9cC5DLFS++ACYU26baylAbg7oMBZlgx1ttpNDLV4OPBj+f7H1jPPUKz7
	lfu05eoy25OAdtl33bk3KtL9qVOlcHVh8JQK7IifyXDxN+oddsI55ybc6Xub0HjkbEEhNAoLm2pnU
	qtM4i0F4KB7Rkiu8hdKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKqL7-0002jH-0Y; Wed, 16 Oct 2019 20:56:13 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKqKW-0002HE-4s
 for openwrt-devel@lists.openwrt.org; Wed, 16 Oct 2019 20:55:39 +0000
Received: (wp-smtpd smtp.wp.pl 3359 invoked from network);
 16 Oct 2019 22:55:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1571259330; bh=G87pUTO3QP3yRPyFUQuaJe+rxF0QQPC70ESTjNLn9+k=;
 h=From:To:Cc:Subject;
 b=IctuMaGb2nwixM1Yd3Z2Wjvb0xsYCV+w/h6IO+g4Dol5ZW0pOAcqRKeI5bbkup/OS
 sX/NoY39/QgG/4IJsj0252gSCUhjWdovBZG2bvQoyx0d/XRuYgPj+KvTEVPLcQ90bl
 kuAsS3/D0vP07Mi+SNwK2HJ7GTVuoH9rTRGwZjlg=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 16 Oct 2019 22:55:30 +0200
Date: Wed, 16 Oct 2019 12:39:51 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191016123951.0ed754a4@kosmio.komorska>
In-Reply-To: <20191016123722.70774de1@kosmio.komorska>
References: <20191016123722.70774de1@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 71750f111b661af55e3c5d0342ee88f2
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [EdNF]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_135536_734429_B8C2F12A 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v5 2/5] ath79: WNR612v2: improve device
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
* dts: 'keys' renamed to 'ath9k-keys'
* dts: 'label-mac-device' set to eth1 (LAN)
* dts: formatting adjustments

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 .../ath79/dts/ar7240_netgear_wnr612-v2.dts    |  2 +-
 .../ath79/dts/ar7240_netgear_wnr612-v2.dtsi   | 23 +++++++++++++------
 target/linux/ath79/dts/ar7240_on_n150r.dts    |  2 +-
 target/linux/ath79/image/tiny-netgear.mk      |  2 +-
 4 files changed, 19 insertions(+), 10 deletions(-)

diff --git a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dts b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dts
index b568d90eff..41dbe709a0 100644
--- a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dts
+++ b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dts
@@ -4,6 +4,6 @@
 #include "ar7240_netgear_wnr612-v2.dtsi"
 
 / {
-	model = "Netgear WNR612 v2";
 	compatible = "netgear,wnr612-v2", "qca,ar7240";
+	model = "Netgear WNR612 v2";
 };
diff --git a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
index 8e934429a3..4bff7c8b78 100644
--- a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
+++ b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
@@ -12,9 +12,10 @@
 		led-failsafe = &power;
 		led-running = &power;
 		led-upgrade = &power;
+		label-mac-device = &eth1;
 	};
 
-	keys {
+	ath9k-keys {
 		compatible = "gpio-keys-polled";
 		poll-interval = <20>;
 
@@ -28,6 +29,10 @@
 
 	leds {
 		compatible = "gpio-leds";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&jtag_disable_pins &switch_led_disable_pins &clks_disable_pins>;
+
 		power: power {
 			label = "netgear:green:power";
 			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
@@ -47,6 +52,10 @@
 			label = "netgear:green:wan";
 			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
 		};
+	};
+
+	ath9k-leds {
+		compatible = "gpio-leds";
 
 		wlan: wlan {
 			label = "netgear:green:wlan";
@@ -70,7 +79,7 @@
 			#address-cells = <1>;
 			#size-cells = <1>;
 
-			uboot: partition@0 {
+			partition@0 {
 				reg = <0x0 0x40000>;
 				label = "u-boot";
 				read-only;
@@ -87,7 +96,7 @@
 				label = "firmware";
 			};
 
-			partition@3f0000 {
+			art: partition@3f0000 {
 				reg = <0x3f0000 0x10000>;
 				label = "art";
 				read-only;
@@ -99,15 +108,13 @@
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
@@ -116,6 +123,8 @@
 	ath9k: wifi@0,0 {
 		compatible = "pci168c,002b";
 		reg = <0x0000 0 0 0 0>;
+		mtd-mac-address = <&art 0x0>;
+		mtd-mac-address-increment = <1>;
 		qca,no-eeprom;
 		#gpio-cells = <2>;
 		gpio-controller;
diff --git a/target/linux/ath79/dts/ar7240_on_n150r.dts b/target/linux/ath79/dts/ar7240_on_n150r.dts
index 3aaa07f724..8322276213 100644
--- a/target/linux/ath79/dts/ar7240_on_n150r.dts
+++ b/target/linux/ath79/dts/ar7240_on_n150r.dts
@@ -4,6 +4,6 @@
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
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
