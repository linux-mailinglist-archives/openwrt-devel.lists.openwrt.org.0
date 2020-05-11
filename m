Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B53241CD646
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 May 2020 12:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=awuak6gmvHYE1rvYgc/hBoVvP9uPqsw+rqExYjyIJ74=; b=Sn3lz3sbUkyvzEhyVi3CrRGhjf
	bimmIA0+NNPsxMyUz/YsB90GzloftoWkkVNacF5U+YSpPzchlXClNeMeAefv6I3HexnrPqx1BCFbx
	Wk49Z4Ov/bZGHC0VS+QKvml39Y/Km9DRYIW49QmV3wGgNdO6+Y4DiYczGY7b15xQ0z2jHKTgBFkUg
	EfS88Hu6O5RDacC5ET0lsn8ya7QKsS0dphyDeOwEBNjXrsV/cs5zP9VkyarIhYjuVreB2bjmR2YAI
	ovQHnXYguK7LfA4lOhnIefM970NhOBcPIIEo9JuPNsnkBOAgaDZb/2FLD7Z+eVuu+vcw522Y7M6tF
	vow40DIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5W7-00015b-Nk; Mon, 11 May 2020 10:18:35 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5Vz-00014a-S8
 for openwrt-devel@lists.openwrt.org; Mon, 11 May 2020 10:18:30 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N4i7l-1j9EOc3ASF-011jfT for <openwrt-devel@lists.openwrt.org>; Mon, 11
 May 2020 12:18:25 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 11 May 2020 12:17:35 +0200
Message-Id: <20200511101735.40453-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200511101735.40453-1-freifunk@adrianschmutzler.de>
References: <20200511101735.40453-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:M4kCn4QnTOh2UVMfdjLa0XW04g7JIW0VNX7QziMcJ0TYsSrTwFc
 Z4em2u2Cw8anDrZ0jyJPYV951ZRl8SZ/MGSlf9TM0MykizNQVHvZMdiu8JW71dn3qcgKX0u
 yUytHdXhLsbotNgEnEltXQC2cqTigUNEsbAD/spRUxRI4PrarpchNamZj0i96x9ZcAr0Dek
 w6genSdzTwd2xTjsy7FmA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0RrbutvQnDI=:dAx1QfQkeCM2EAIMWlfvVt
 cZEjYc9VKMx8oZaeux4gGx1Exuurh/vSDi4tRXfMLR8baODluP3LzXbKhRqEcIjuuuyygG1w5
 YxsDtSBHtwk3BPf8Zy06tnwlO6yf6qioDlVIBle0GT3UPMZDBx6Vn8KkNaUkA81GHxPPkUbxM
 GF+V6V96oy5CKW0hVlIFFHyj5JhE/VRJKTJ3/WUlU1fmxLkN10pfw7ICiRs2qIUzcODWVJ6WO
 Vl73OJoAMGAZX7jR3ecGYeq2JEI0LHh9WWgmUKHk5A+mQFwdiOy1b5+HmpidNyIiMl5yiVQO3
 IalYN+Z15/isES4nJESQcfbKqCZO082ZLHJtSjXstQkIT+Dlmigd97WeFNBjNgp0clT+Px1xT
 EFL+8ke7AChVfva89G/A91gJCZfoGvQI2VmGLqJdE2O9hZm/RMVWbco2Omh3sf8AQwNB0gnCK
 A1TvtSbDE8uxSxYwoG/B02WZG0Ns0Ad2NZ0q/W5MZNAqbExzrx1o6Ua+gFqM0tY+Sd4RmJBB+
 Y4exQKFfRSqZseh9VEG7eSucaAQrCj1ZFRQOQMNvlbxyRLKHyuZBoMuYDD3TAY+5px9G3kEo5
 p4A5gDaezDaEQiQe3kstyVIPW4+c3r8qjHm3Yo/12OAvxTHBTt1m+dZQaJXIbY25Tf50SAXvJ
 cnM35VjLNpkwxuMSRW4Frsas2RrMahMwfOm/Rt9QjHsPNO4Ok61SnvxdY2I/+mYLtmC9UDU7a
 FkI/2cjReZSJjJntMr+bKnTvoYAt0ksC/JlxtaUM8l8H+lWp/u5B0T3esZ15+FPGKWrJCh3/K
 yZXcYvtht10wK6mazX/uFWbaDvXV1tWAPjfEn5rHzTDDBQOXlbCN5TgDUkkwlX7q/R4UUgO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_031828_207704_6B4A19C0 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.75 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] ipq40xx: replace "ok" with "okay" for
 status in DTS files
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

While "ok" is recognized in DT parsing, only "okay" is actually
mentioned as valid value. Replace it accordingly.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../arm/boot/dts/qcom-ipq4018-dap-2610.dts    | 26 +++++++++----------
 .../arch/arm/boot/dts/qcom-ipq4019-wpj419.dts |  2 +-
 .../arch/arm/boot/dts/qcom-ipq4029-ap-303.dts |  2 +-
 .../arm/boot/dts/qcom-ipq4029-ap-303h.dts     |  2 +-
 .../arm/boot/dts/qcom-ipq4018-dap-2610.dts    | 26 +++++++++----------
 .../arch/arm/boot/dts/qcom-ipq4019-wpj419.dts |  2 +-
 .../arch/arm/boot/dts/qcom-ipq4029-ap-303.dts |  2 +-
 .../arm/boot/dts/qcom-ipq4029-ap-303h.dts     |  2 +-
 ...com-ipq4019-add-USB-devicetree-nodes.patch | 10 +++----
 .../900-dts-ipq4019-ap-dk01.1.patch           |  4 +--
 ...com-ipq4019-add-USB-devicetree-nodes.patch | 10 +++----
 .../900-dts-ipq4019-ap-dk01.1.patch           |  4 +--
 12 files changed, 46 insertions(+), 46 deletions(-)

diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-dap-2610.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-dap-2610.dts
index 0fd4318527..17d9215544 100644
--- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-dap-2610.dts
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-dap-2610.dts
@@ -19,7 +19,7 @@
 	soc {
 		edma@c080000 {
 			qcom,num_gmac = <1>;
-			status = "ok";
+			status = "okay";
 		};
 
 		tcsr@1949000 {
@@ -41,25 +41,25 @@
 		};
 
 		rng@22000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		crypto@8e3a000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		watchdog@b017000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		ess-switch@c000000 {
-			status = "ok";
+			status = "okay";
 			switch_lan_bmp = <0x20>;
 			switch_wan_bmp = <0x00>;
 		};
 
 		ess-psgmii@98000 {
-			status = "ok";
+			status = "okay";
 		};
 	};
 
@@ -91,7 +91,7 @@
 &blsp1_spi1 {
 	pinctrl-0 = <&spi_0_pins>;
 	pinctrl-names = "default";
-	status = "ok";
+	status = "okay";
 	cs-gpios = <&tlmm 54 GPIO_ACTIVE_HIGH>;
 
 	flash@0 {
@@ -179,17 +179,17 @@
 };
 
 &blsp_dma {
-	status = "ok";
+	status = "okay";
 };
 
 &blsp1_uart1 {
 	pinctrl-0 = <&serial_pins>;
 	pinctrl-names = "default";
-	status = "ok";
+	status = "okay";
 };
 
 &cryptobam {
-	status = "ok";
+	status = "okay";
 };
 
 &gmac0 {
@@ -201,7 +201,7 @@
 };
 
 &mdio {
-	status = "ok";
+	status = "okay";
 };
 
 &tlmm {
@@ -231,11 +231,11 @@
 };
 
 &wifi0 {
-	status = "ok";
+	status = "okay";
 	qcom,ath10k-calibration-variant = "dlink,dap-2610";
 };
 
 &wifi1 {
-	status = "ok";
+	status = "okay";
 	qcom,ath10k-calibration-variant = "dlink,dap-2610";
 };
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
index 6cf9d46767..3a0e0b8cfa 100644
--- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
@@ -275,7 +275,7 @@
 		i2c_0: i2c@78b7000 {
 			pinctrl-0 = <&i2c_0_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 		};
 
 		serial@78af000 {
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
index 24e5dc2809..bc4fd9eb17 100644
--- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
@@ -88,7 +88,7 @@
 		i2c_0: i2c@78b7000 {
 			pinctrl-0 = <&i2c_0_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 
 			tpm@29 {
 				/* No Driver */
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303h.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303h.dts
index 0859f97c9e..1f7a728492 100644
--- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303h.dts
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303h.dts
@@ -87,7 +87,7 @@
 		i2c_0: i2c@78b7000 {
 			pinctrl-0 = <&i2c_0_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 
 			tpm@29 {
 				/* No Driver */
diff --git a/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4018-dap-2610.dts b/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4018-dap-2610.dts
index 0fd4318527..17d9215544 100644
--- a/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4018-dap-2610.dts
+++ b/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4018-dap-2610.dts
@@ -19,7 +19,7 @@
 	soc {
 		edma@c080000 {
 			qcom,num_gmac = <1>;
-			status = "ok";
+			status = "okay";
 		};
 
 		tcsr@1949000 {
@@ -41,25 +41,25 @@
 		};
 
 		rng@22000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		crypto@8e3a000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		watchdog@b017000 {
-			status = "ok";
+			status = "okay";
 		};
 
 		ess-switch@c000000 {
-			status = "ok";
+			status = "okay";
 			switch_lan_bmp = <0x20>;
 			switch_wan_bmp = <0x00>;
 		};
 
 		ess-psgmii@98000 {
-			status = "ok";
+			status = "okay";
 		};
 	};
 
@@ -91,7 +91,7 @@
 &blsp1_spi1 {
 	pinctrl-0 = <&spi_0_pins>;
 	pinctrl-names = "default";
-	status = "ok";
+	status = "okay";
 	cs-gpios = <&tlmm 54 GPIO_ACTIVE_HIGH>;
 
 	flash@0 {
@@ -179,17 +179,17 @@
 };
 
 &blsp_dma {
-	status = "ok";
+	status = "okay";
 };
 
 &blsp1_uart1 {
 	pinctrl-0 = <&serial_pins>;
 	pinctrl-names = "default";
-	status = "ok";
+	status = "okay";
 };
 
 &cryptobam {
-	status = "ok";
+	status = "okay";
 };
 
 &gmac0 {
@@ -201,7 +201,7 @@
 };
 
 &mdio {
-	status = "ok";
+	status = "okay";
 };
 
 &tlmm {
@@ -231,11 +231,11 @@
 };
 
 &wifi0 {
-	status = "ok";
+	status = "okay";
 	qcom,ath10k-calibration-variant = "dlink,dap-2610";
 };
 
 &wifi1 {
-	status = "ok";
+	status = "okay";
 	qcom,ath10k-calibration-variant = "dlink,dap-2610";
 };
diff --git a/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts b/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
index 6cf9d46767..3a0e0b8cfa 100644
--- a/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
+++ b/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4019-wpj419.dts
@@ -275,7 +275,7 @@
 		i2c_0: i2c@78b7000 {
 			pinctrl-0 = <&i2c_0_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 		};
 
 		serial@78af000 {
diff --git a/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts b/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
index 24e5dc2809..bc4fd9eb17 100644
--- a/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
+++ b/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
@@ -88,7 +88,7 @@
 		i2c_0: i2c@78b7000 {
 			pinctrl-0 = <&i2c_0_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 
 			tpm@29 {
 				/* No Driver */
diff --git a/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-303h.dts b/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-303h.dts
index 0859f97c9e..1f7a728492 100644
--- a/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-303h.dts
+++ b/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-303h.dts
@@ -87,7 +87,7 @@
 		i2c_0: i2c@78b7000 {
 			pinctrl-0 = <&i2c_0_pins>;
 			pinctrl-names = "default";
-			status = "ok";
+			status = "okay";
 
 			tpm@29 {
 				/* No Driver */
diff --git a/target/linux/ipq40xx/patches-4.19/077-qcom-ipq4019-add-USB-devicetree-nodes.patch b/target/linux/ipq40xx/patches-4.19/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
index e02fdf59c2..30a0678fd8 100644
--- a/target/linux/ipq40xx/patches-4.19/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
+++ b/target/linux/ipq40xx/patches-4.19/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
@@ -19,23 +19,23 @@ Signed-off-by: John Crispin <john@phrozen.org>
  		};
 +
 +		usb3_ss_phy: ssphy@9a000 {
-+			status = "ok";
++			status = "okay";
 +		};
 +
 +		usb3_hs_phy: hsphy@a6000 {
-+			status = "ok";
++			status = "okay";
 +		};
 +
 +		usb3: usb3@8af8800 {
-+			status = "ok";
++			status = "okay";
 +		};
 +
 +		usb2_hs_phy: hsphy@a8000 {
-+			status = "ok";
++			status = "okay";
 +		};
 +
 +		usb2: usb2@60f8800 {
-+			status = "ok";
++			status = "okay";
 +		};
  	};
  };
diff --git a/target/linux/ipq40xx/patches-4.19/900-dts-ipq4019-ap-dk01.1.patch b/target/linux/ipq40xx/patches-4.19/900-dts-ipq4019-ap-dk01.1.patch
index 48825375eb..5157079762 100644
--- a/target/linux/ipq40xx/patches-4.19/900-dts-ipq4019-ap-dk01.1.patch
+++ b/target/linux/ipq40xx/patches-4.19/900-dts-ipq4019-ap-dk01.1.patch
@@ -17,7 +17,7 @@
 +			compatible = "qcom,tcsr";
 +			reg = <0x194b000 0x100>;
 +			qcom,usb-hsphy-mode-select = <TCSR_USB_HSPHY_HOST_MODE>;
-+			status = "ok";
++			status = "okay";
 +		};
 +
 +		ess_tcsr@1953000 {
@@ -77,7 +77,7 @@
 +		};
 +
  		usb3_ss_phy: ssphy@9a000 {
- 			status = "ok";
+ 			status = "okay";
  		};
 --- a/arch/arm/boot/dts/qcom-ipq4019-ap.dk01.1-c1.dts
 +++ b/arch/arm/boot/dts/qcom-ipq4019-ap.dk01.1-c1.dts
diff --git a/target/linux/ipq40xx/patches-5.4/077-qcom-ipq4019-add-USB-devicetree-nodes.patch b/target/linux/ipq40xx/patches-5.4/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
index fbcbecf080..5efc08bcca 100644
--- a/target/linux/ipq40xx/patches-5.4/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
+++ b/target/linux/ipq40xx/patches-5.4/077-qcom-ipq4019-add-USB-devicetree-nodes.patch
@@ -19,23 +19,23 @@ Signed-off-by: John Crispin <john@phrozen.org>
  		};
 +
 +		usb3_ss_phy: ssphy@9a000 {
-+			status = "ok";
++			status = "okay";
 +		};
 +
 +		usb3_hs_phy: hsphy@a6000 {
-+			status = "ok";
++			status = "okay";
 +		};
 +
 +		usb3: usb3@8af8800 {
-+			status = "ok";
++			status = "okay";
 +		};
 +
 +		usb2_hs_phy: hsphy@a8000 {
-+			status = "ok";
++			status = "okay";
 +		};
 +
 +		usb2: usb2@60f8800 {
-+			status = "ok";
++			status = "okay";
 +		};
  	};
  };
diff --git a/target/linux/ipq40xx/patches-5.4/900-dts-ipq4019-ap-dk01.1.patch b/target/linux/ipq40xx/patches-5.4/900-dts-ipq4019-ap-dk01.1.patch
index 48825375eb..5157079762 100644
--- a/target/linux/ipq40xx/patches-5.4/900-dts-ipq4019-ap-dk01.1.patch
+++ b/target/linux/ipq40xx/patches-5.4/900-dts-ipq4019-ap-dk01.1.patch
@@ -17,7 +17,7 @@
 +			compatible = "qcom,tcsr";
 +			reg = <0x194b000 0x100>;
 +			qcom,usb-hsphy-mode-select = <TCSR_USB_HSPHY_HOST_MODE>;
-+			status = "ok";
++			status = "okay";
 +		};
 +
 +		ess_tcsr@1953000 {
@@ -77,7 +77,7 @@
 +		};
 +
  		usb3_ss_phy: ssphy@9a000 {
- 			status = "ok";
+ 			status = "okay";
  		};
 --- a/arch/arm/boot/dts/qcom-ipq4019-ap.dk01.1-c1.dts
 +++ b/arch/arm/boot/dts/qcom-ipq4019-ap.dk01.1-c1.dts
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
