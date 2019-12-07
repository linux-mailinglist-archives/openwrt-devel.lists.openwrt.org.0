Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A534115D8D
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 17:38:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OKMWu58XkyymjLVVIZVzSuGcAJpGEDgiT0wZgQQTuRg=; b=R1psGUZeXmZT2r
	JNGPDXzJ4/B0q98o5CJv/f+3i2lhh2SqGhCYmZubz21KacSm3sB1yl5YqEzgP9eq0OYJjjNS9SvXl
	82gPUHp51tX0pqtFpkHmS473GvXsnG/fgKinWdXl65DIVc2sGKi6gPKlDI3j98kwZBqpihAykCRQG
	EclHOd+kZXIMbHqgc+LMMJGpbAFjjofPeE8jPugZb2bVoFjJMhnPhSeLkMbFZF/hGS3+vIckxIQi4
	f55utbmh8qjZa3IV2SX/TYeKLPbi7J1/xrP3ypTrlbBIjFZRXb4rIk+aRfBWRtkeJwt6zX87AqUrm
	6ObBhrCXvZB52VsjkPjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idd65-0002Dd-RU; Sat, 07 Dec 2019 16:38:21 +0000
Received: from smtpbg702.qq.com ([203.205.195.102] helo=smtpproxy21.qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idd5v-0002Bn-1b
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 16:38:13 +0000
X-QQ-mid: bizesmtp18t1575736652tbgeymr5
Received: from example.com (unknown [112.19.111.110])
 by esmtp6.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Sun, 08 Dec 2019 00:37:31 +0800 (CST)
X-QQ-SSF: 0120000000200050E142B00A0000000
X-QQ-FEAT: PJL/FS1uSvKVLrkT5HdmYW+bZiImIG7+U4FKEHQTsjEi2yFFw613Myy4Ecz0E
 u5b2W8+sDztR4DMmGCwFnRkGxe/seYfWkqazsx4TiO61aVlIDoYJhrzSdsEenmlJNB/2/zT
 U0gb0+2HChhzwc5KbnIbQbCAwm/ysMnYhkrzWR46nmRfU7CXtLU2fHZLL5KgnGEXXWx6K3a
 IAnesoRLTRjvSrTp02k0hWWlXvIREr9zYsjHFK+MZ0JmLjom9gF3o8nGZj4LoUD09mDvMnM
 8mwr+Jrb3fG8wVXYg/vH4OM81L5jTnyMRjVltV+x6jnUcZ6P8wz/2NWh4=
X-QQ-GoodBg: 0
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Dec 2019 00:37:31 +0800
Message-Id: <20191207163731.15028-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_083811_127679_693F0657 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: fix typos in DTS
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

echi->ehci
ochi->ohci

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts | 6 +++---
 target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts      | 6 +++---
 target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi     | 6 +++---
 target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi   | 4 ++--
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts b/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
index 2e00de8887..e87f422051 100644
--- a/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
+++ b/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
@@ -47,7 +47,7 @@
 		usb {
 			label = "buffalo:green:usb";
 			gpios = <&ath9k0 3 GPIO_ACTIVE_LOW>;
-			trigger-sources = <&usb_ochi_port>, <&usb_echi_port>;
+			trigger-sources = <&usb_ohci_port>, <&usb_ehci_port>;
 			linux,default-trigger = "usbport";
 		};
 
@@ -180,7 +180,7 @@
 	#size-cells = <0>;
 	status = "okay";
 
-	usb_ochi_port: port@1 {
+	usb_ohci_port: port@1 {
 		reg = <1>;
 		#trigger-source-cells = <0>;
 	};
@@ -191,7 +191,7 @@
 	#size-cells = <0>;
 	status = "okay";
 
-	usb_echi_port: port@1 {
+	usb_ehci_port: port@1 {
 		reg = <1>;
 		#trigger-source-cells = <0>;
 	};
diff --git a/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts b/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
index 92de193aba..5e35dddd4b 100644
--- a/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
+++ b/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
@@ -34,7 +34,7 @@
 		usb {
 			label = "d-link:blue:usb";
 			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
-			trigger-sources = <&usb_ochi_port>, <&usb_echi_port>;
+			trigger-sources = <&usb_ohci_port>, <&usb_ehci_port>;
 			linux,default-trigger = "usbport";
 		};
 
@@ -123,7 +123,7 @@
 	#size-cells = <0>;
 	status = "okay";
 
-	usb_ochi_port: port@1 {
+	usb_ohci_port: port@1 {
 		reg = <1>;
 		#trigger-source-cells = <0>;
 	};
@@ -134,7 +134,7 @@
 	#size-cells = <0>;
 	status = "okay";
 
-	usb_echi_port: port@1 {
+	usb_ehci_port: port@1 {
 		reg = <1>;
 		#trigger-source-cells = <0>;
 	};
diff --git a/target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi b/target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi
index 08b3c77b39..b6ae167024 100644
--- a/target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi
+++ b/target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi
@@ -32,7 +32,7 @@
 		usb_led {
 			label = "netgear:green:usb";
 			resets = <&rst 12>;
-			trigger-sources = <&usb_ochi_port>, <&usb_echi_port>;
+			trigger-sources = <&usb_ohci_port>, <&usb_ehci_port>;
 			linux,default-trigger = "usbport";
 		};
 	};
@@ -134,7 +134,7 @@
 	#size-cells = <0>;
 	status = "okay";
 
-	usb_ochi_port: port@1 {
+	usb_ohci_port: port@1 {
 		reg = <1>;
 		#trigger-source-cells = <0>;
 	};
@@ -145,7 +145,7 @@
 	#size-cells = <0>;
 	status = "okay";
 
-	usb_echi_port: port@1 {
+	usb_ehci_port: port@1 {
 		reg = <1>;
 		#trigger-source-cells = <0>;
 	};
diff --git a/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi b/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
index 4f52e3cc40..0ed9970813 100644
--- a/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
+++ b/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
@@ -86,7 +86,7 @@
 	#address-cells = <1>;
 	#size-cells = <0>;
 
-	usb_ochi_port: port@1 {
+	usb_ohci_port: port@1 {
 		reg = <1>;
 		#trigger-source-cells = <0>;
 	};
@@ -97,7 +97,7 @@
 	#address-cells = <1>;
 	#size-cells = <0>;
 
-	usb_echi_port: port@1 {
+	usb_ehci_port: port@1 {
 		reg = <1>;
 		#trigger-source-cells = <0>;
 	};
-- 
2.24.0




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
