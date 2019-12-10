Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4591188E6
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Dec 2019 13:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JuP4cmN9LC4TSNESQf9mSAkhpB4BcHeYnRwgx0QOmqM=; b=skEqBuG0wY/VbW
	7FwR2gQxVTKfM/1cJyahj4KTM1xQdU4uF+ge1wxKMFaNUm/n6MAUgLqj8Ql8EKiIWjzLDaZf8ez/y
	YmSHtt0teu++pDStgjUaOlkWQIPp+GSCSEYSE/0elO6fgqBZ0EkHPnzbrIdlA7UfpdseLq2HSZH2d
	EjWJWvd3TzAWVh/Q6HTiABw7mVg+jnwrDGf2ernjqahiNaES93KGXf3LQ/l+Fl8iV8eIWPaKWxZ/a
	DXYVKt3Biso9421HseFmgB8mYCX/m/YnaP/iciNMpVJoQBsp7RGlfW90iNI0ST5I0LhZr9mxYnsYZ
	m6HuJV/ZaIABuBOzB8EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ief19-0006nB-Ma; Tue, 10 Dec 2019 12:53:31 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ief0z-0006mT-0Z
 for openwrt-devel@lists.openwrt.org; Tue, 10 Dec 2019 12:53:23 +0000
X-QQ-mid: bizesmtp22t1575982370tmbpidk0
Received: from example.com (unknown [112.19.110.248])
 by esmtp6.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Dec 2019 20:52:49 +0800 (CST)
X-QQ-SSF: 0140000000200050E180B00A0000000
X-QQ-FEAT: l6IKqkG+NbkI5MkehXYYel4I80ABj5tes+yLelDcmN8d8RnO9T7I415ldZ5Sp
 MWOKpY06TapJz5DPwBqT31i0jiV7iSqEsMr++Tm4lHoqPVlR+wP+VgGboYTllr769/D1e/f
 bHX+r7WRfrPEPlxmgL8XMn1LOGaxolODT+fUIAIgfclI7N1zJcSJce8mHZB0ku7ozzEQJSw
 Ie2RtPLNSX9js+Jyo7xiDzenQXNMh0TZxtqDj5rTV1k2yuWLN7Jwxpg2rjcZnPuPGhY90w7
 vAZRw9Y9Z5EUBi9DvKTJgaQAOgUHCTCl087MEcpMHCOLhzI2ErNitwxBfwSsMJQ/uG6VCaT
 P/DjsZC
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 10 Dec 2019 20:52:49 +0800
Message-Id: <20191210125249.27265-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_045321_407750_0E8BD166 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.206.16.166 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH V2] ath79: fix typos in DTS
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

Replace "usb_ochi" with "usb_ohci", and "usb_echi" with "usb_ehci"

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
index f29137352f..ab4f37da11 100644
--- a/target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi
+++ b/target/linux/ath79/dts/ar7161_netgear_wndr3700.dtsi
@@ -31,7 +31,7 @@
 		usb_led {
 			label = "netgear:green:usb";
 			resets = <&rst 12>;
-			trigger-sources = <&usb_ochi_port>, <&usb_echi_port>;
+			trigger-sources = <&usb_ohci_port>, <&usb_ehci_port>;
 			linux,default-trigger = "usbport";
 		};
 	};
@@ -133,7 +133,7 @@
 	#size-cells = <0>;
 	status = "okay";
 
-	usb_ochi_port: port@1 {
+	usb_ohci_port: port@1 {
 		reg = <1>;
 		#trigger-source-cells = <0>;
 	};
@@ -144,7 +144,7 @@
 	#size-cells = <0>;
 	status = "okay";
 
-	usb_echi_port: port@1 {
+	usb_ehci_port: port@1 {
 		reg = <1>;
 		#trigger-source-cells = <0>;
 	};
diff --git a/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi b/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
index 35f3442b29..fc5d8335b5 100644
--- a/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
+++ b/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
@@ -85,7 +85,7 @@
 	#address-cells = <1>;
 	#size-cells = <0>;
 
-	usb_ochi_port: port@1 {
+	usb_ohci_port: port@1 {
 		reg = <1>;
 		#trigger-source-cells = <0>;
 	};
@@ -96,7 +96,7 @@
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
